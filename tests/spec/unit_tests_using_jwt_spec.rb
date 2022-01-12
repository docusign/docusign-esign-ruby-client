require 'docusign_esign'
require 'base64'
require 'uri'
#require 'launchy'

describe 'DocuSign Ruby Client Tests' do
  def login
    begin
      if $api_client.nil?
        configuration = DocuSign_eSign::Configuration.new
        configuration.host = $host

        $api_client = DocuSign_eSign::ApiClient.new(configuration)
        $api_client.set_oauth_base_path(DocuSign_eSign::OAuth::DEMO_OAUTH_BASE_PATH)
        # IMPORTANT NOTE:
        # the first time you ask for a JWT access token, you should grant access by making the following call
        # visit DocuSign OAuth authorization url in the browser, login, grant access and restart the tests
        # url = $api_client.get_authorization_uri($integrator_key,%w[signature organization_read impersonation],$return_url,'code')
        # Launchy.open(url)
        # abort "Please restart the tests"
        # END OF NOTE
      end

      decode_base64_content = Base64.decode64(ENV["PRIVATE_KEY"])

      File.open($private_key_filename, "wb") do |f|
        f.write(decode_base64_content)
      end

      token_obj = $api_client.request_jwt_user_token(ENV["INTEGRATOR_KEY_JWT"], ENV["USER_ID"], File.read($private_key_filename), $expires_in_seconds)

      user_info = $api_client.get_user_info(token_obj.access_token)

      if !user_info.nil?
        user_info.accounts.each do |account|
          if account.is_default == "true"
            $base_uri = account.base_uri
            $account_id = account.account_id

            # IMPORTANT: Use the base url from the login account to instantiant the api_client
            base_uri = URI.parse($base_uri)
            $api_client.set_base_path("%s://%s/restapi" % [base_uri.scheme, base_uri.host])

            return account
          end
        end
      end
    rescue => e
      puts "Error during processing: #{$!}"
    end

    return nil
  end

  def create_api_client
    if $api_client.nil?
      self.login()
    end

    return $api_client
  end

  def create_envelope_on_document(status, is_embedded_signing)
    if (!$account_id.nil?)
      # STEP 2: Create envelope definition
      # Add a document to the envelope
      document_path = "../docs/Test.pdf"
      document_name = "Test.docx"
      document = DocuSign_eSign::Document.new
      document.document_base64 = Base64.encode64(File.open(document_path).read)
      document.name = document_name
      document.document_id = '1'

      # Create a |SignHere| tab somewhere on the document for the recipient to sign
      signHere = DocuSign_eSign::SignHere.new
      signHere.x_position = "100"
      signHere.y_position = "100"
      signHere.document_id = "1"
      signHere.page_number = "1"
      signHere.recipient_id = "1"

      tabs = DocuSign_eSign::Tabs.new
      tabs.sign_here_tabs = Array(signHere)

      signer = DocuSign_eSign::Signer.new
      signer.email = ENV["RECIPIENT_EMAIL"]
      signer.name = $recipient_name
      signer.recipient_id = "1"

      if (is_embedded_signing)
        signer.client_user_id = $client_user_id
      end

      signer.tabs = tabs

      # Add a recipient to sign the document
      recipients = DocuSign_eSign::Recipients.new
      recipients.signers = Array(signer)

      envelop_definition = DocuSign_eSign::EnvelopeDefinition.new
      envelop_definition.email_subject = "[DocuSign Ruby SDK] - Please sign this doc"

      # set envelope status to "sent" to immediately send the signature request
      envelop_definition.status = status.nil? ? 'sent' : status
      envelop_definition.recipients = recipients
      envelop_definition.documents = Array(document)

      options = DocuSign_eSign::CreateEnvelopeOptions.new

      # STEP 3: Create envelope
      api_client = create_api_client()
      envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)
      return envelopes_api.create_envelope($account_id, envelop_definition, options)
    end
  end

  before(:all) do
    # run before each test
    $host = "https://demo.docusign.net/restapi"

    $expires_in_seconds = 3600 #1 hour
    $auth_server = 'account-d.docusign.com'
    $private_key_filename = '../docs/private.pem'

    $recipient_name = "Ruby SDK"

    # Required for embedded signing url
    $client_user_id = ENV['USER_ID']
    $integrator_key = ENV['INTEGRATOR_KEY_JWT']
    $secret = ENV['SECRET']
    $return_url = 'https://developers.docusign.com/'
    $authentication_method = 'email'

    $template_id = ''
    $envelope_id = nil

    $base_uri = nil
    $account_id = nil
    $api_client = nil
  end

  after do
    # run after each test
  end

  describe DocuSign_eSign::OAuth do
    describe '.login' do
      context 'given correct credentials' do
        it 'return Account' do
          account = login()

          if !account.nil?
            $base_uri = account.base_uri
            $account_id = account.account_id
          end

          expect($account_id).to be_truthy
          expect($base_uri).to be_truthy
        end
      end
    end
  end

  describe DocuSign_eSign::EnvelopesApi do
    describe '.create' do
      context 'request signature on a document' do
        it 'successfully create an envelope' do

          # STEP 1: Login and get the account_id & base_uri
          login()

          envelope_summary = create_envelope_on_document('created', true)

          expect(envelope_summary).to be_truthy

          if !envelope_summary.nil?
            $envelope_id = envelope_summary.envelope_id
            expect($envelope_id).to be_truthy
          end
        end
      end

      context 'create tabs for recipient' do
        it 'successfully creates tabs' do
          tabs_summary = nil
          created_tab = nil
          new_tab_name = 'NewTabName'

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)
            recipients = envelopes_api.list_recipients($account_id, $envelope_id)
            signer = recipients.signers.first
            recipient_id = signer.recipient_id

            # Build new tab somewhere on the document for the recipient to sign
            sign_tab = DocuSign_eSign::SignHere.new
            sign_tab.name = new_tab_name
            sign_tab.anchor_units = 'pixels'
            sign_tab.anchor_y_offset = '123'
            sign_tab.anchor_x_offset = '234'
            sign_tab.document_id = '1'
            sign_tab.page_number = '1'
            sign_tab.recipient_id = '1'

            tabs = DocuSign_eSign::Tabs.new
            tabs.sign_here_tabs = Array(sign_tab)

            # send create request
            tabs_summary = envelopes_api.create_tabs($account_id, $envelope_id, recipient_id, tabs)

            tabs_list = envelopes_api.list_tabs($account_id, $envelope_id, recipient_id)
            created_tab = tabs_list.sign_here_tabs.last
          end

          expect(tabs_summary).to be_truthy
          expect(tabs_summary).to be_a(DocuSign_eSign::Tabs)
          expect(created_tab).to be_a(DocuSign_eSign::SignHere)
          expect(created_tab.name).to eq(new_tab_name)
        end
      end

      context 'create user' do
        it 'successfully creates user' do
          user = nil

          user_information = DocuSign_eSign::UserInformation.new
          user_information.email = 'test-user@example.com'
          user_information.first_name = 'user-name'
          user_information.last_name = 'user-last-name'
          user_information.user_name = 'test-user-name'

          if !$account_id.nil?
            api_client = create_api_client()
            users_api = DocuSign_eSign::UsersApi.new(api_client)

            user_definition = DocuSign_eSign::NewUsersDefinition.new
            user_definition.new_users = Array(user_information)

            users_summary = users_api.create($account_id, user_definition)
            user = users_summary.new_users.last
          end

          expect(user).to be_truthy
          expect(user).to be_a(DocuSign_eSign::NewUser)
          expect(user.email).to eq(user_information.email)
          expect(user.user_name).to eq(user_information.user_name)
        end
      end

      context 'request signature using a template' do
        it 'successfully send an envelope' do
          # TODO
        end
      end
    end

    describe '.update' do
      context 'update envelope' do
        it 'updates envelope' do
          updated_envelope = nil
          envelope = nil
          if !$envelope_id.nil?

            envelope = DocuSign_eSign::EnvelopeDefinition.new
            envelope.envelope_id = $envelope_id
            envelope.email_subject = 'new email subject'
            envelope.email_blurb = 'new email message'
            envelope.status = 'created'
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(create_api_client)

            update_result = envelopes_api.update($account_id, $envelope_id, envelope)

            updated_envelope = envelopes_api.get_envelope($account_id, update_result.envelope_id)
            updated_envelope
          end

          expect(updated_envelope).not_to be_nil
          expect(updated_envelope.email_subject).to eq(envelope.email_subject)
          expect(updated_envelope.email_blurb).to eq(envelope.email_blurb)
          expect(updated_envelope.status).to eq(envelope.status)
        end
      end

      context 'updates envelope recipients' do
        it 'successfully updates envelope recipients' do
          envelope = create_envelope_on_document('sent', true)

          signer = DocuSign_eSign::Signer.new(email: 'test_recipient@example.com', name: 'test_name', routingOrder: '3', recipientId: '3',)

          cc = DocuSign_eSign::CarbonCopy.new(email: 'test_recipient@example.com', name: 'test_cc_name', routingOrder: '4', recipientId: '4',)

          recipients = DocuSign_eSign::Recipients.new(signers: [signer], carbonCopies: [cc]
          )

          if !envelope.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)
            options = DocuSign_eSign::UpdateRecipientsOptions.new

            update_result = envelopes_api.update_recipients($account_id, envelope.envelope_id, recipients, options)
          end

          expect(update_result).to be_truthy
          if !update_result.nil?
            expect(update_result.recipient_update_results.map(&:recipient_id)).to match_array([signer.recipient_id, cc.recipient_id])
          end
        end
      end
    end

    describe '.get' do
      context 'get envelope information' do
        it 'successfully returns envelope summary' do
          envelope_summary = nil

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

            options = DocuSign_eSign::GetEnvelopeOptions.new

            envelope_summary = envelopes_api.get_envelope($account_id, $envelope_id, options)
          end

          expect(envelope_summary).to be_truthy
          if !envelope_summary.nil?
            expect(envelope_summary.envelope_id).to eq($envelope_id)
          end
        end
      end

      context 'get users information' do
        it 'successfully returns users info' do
          users_information = nil

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

            options = DocuSign_eSign::GetEnvelopeOptions.new

            users_information = envelopes_api.get_envelope($account_id, $envelope_id, options)
          end

          expect(users_information).to be_truthy
          if !users_information.nil?
            expect(users_information.envelope_id).to eq($envelope_id)
          end
        end
      end

      context 'get template information' do
        it 'successfully returns template' do
          template_summary = nil

          if !$envelope_id.nil?
            api_client = create_api_client()
            templates_api = DocuSign_eSign::TemplatesApi.new(api_client)
            options = DocuSign_eSign::GetOptions.new
            options.include = "tabs"

            template_summary = templates_api.get($account_id, ENV["TEMPLATE_ID"], options)
          end

          expect(template_summary).to be_truthy
          if !template_summary.nil?
            expect(template_summary.template_id).to eq(ENV["TEMPLATE_ID"])
          end
        end
      end

      context 'get account information' do
        it 'successfully returns account' do
          api_client = create_api_client()
          accounts_api = DocuSign_eSign::AccountsApi.new(api_client)
          account_summary = accounts_api.get_account_information($account_id)

          expect(account_summary).to be_truthy
          if !account_summary.nil?
            expect(account_summary.account_id_guid).to eq($account_id)
          end
        end
      end

      context 'get form data' do
        it 'successfully returns envelope form data' do
          envelope_form_data = nil

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

            envelope_form_data = envelopes_api.get_form_data($account_id, $envelope_id)
          end

          expect(envelope_form_data).to be_truthy
          if !envelope_form_data.nil?
            expect(envelope_form_data.form_data).to be_truthy
            if !envelope_form_data.form_data.nil?
              expect(envelope_form_data.form_data).to be_truthy
            end
          end
        end
      end

      context 'get user logging setting' do
        it 'successfully returns settings' do
          diagnostics_settings_info = nil

          if !$account_id.nil?
            api_client = create_api_client()
            diagnostics_api = DocuSign_eSign::DiagnosticsApi.new(api_client)

            diagnostics_settings_info = diagnostics_api.get_request_log_settings
          end

          expect(diagnostics_settings_info).not_to be_nil
          expect(diagnostics_settings_info).to be_a(DocuSign_eSign::DiagnosticsSettingsInformation)
        end
      end
    end

    describe '.list' do
      context 'list envelopes' do
        it 'successfully list envelope' do
          recipients = nil
          envelope_ids = ""
          count1 = 0
          count2 = 0

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

            options = DocuSign_eSign::ListStatusChangesOptions.new
            options.count = "10"
            options.from_date = (Date.today - 30).strftime("%Y-%m-%d")

            envelopes_information = envelopes_api.list_status_changes($account_id, options)
            expect(envelopes_information).to be_truthy
            if !envelopes_information.nil?
              expect(envelopes_information.envelopes.length).to be > 0
              count1 = envelopes_information.envelopes.length
              envelope_ids = envelopes_information.envelopes.map { |f| f.envelope_id }.join ','
            end

            options = DocuSign_eSign::ListStatusChangesOptions.new
            options.envelope_ids = envelope_ids

            envelopes_information = envelopes_api.list_status_changes($account_id, options)
          end

          expect(envelopes_information).to be_truthy
          if !envelopes_information.nil?
            expect(envelopes_information.envelopes.length).to be > 0
            count2 = envelopes_information.envelopes.length
            expect(count1 == count2)
          end
        end
      end

      context 'list recipients' do
        it 'successfully list envelope recipients' do
          recipients = nil

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

            options = DocuSign_eSign::ListRecipientsOptions.new

            recipients = envelopes_api.list_recipients($account_id, $envelope_id, options)
          end

          expect(recipients).to be_truthy
          if !recipients.nil?
            expect(recipients.recipient_count.to_i).to be > 0
          end
        end
      end

      context 'list status changes' do
        it 'successfully lists envelope status changes' do
          envelopes_information = nil

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

            options = DocuSign_eSign::ListStatusChangesOptions.new
            options.from_date = Time.now.strftime("%Y-%m-%d")

            envelopes_information = envelopes_api.list_status_changes($account_id, options)
          end

          expect(envelopes_information).to be_truthy
          if !envelopes_information.nil?
            expect(envelopes_information.total_set_size.to_i).to be > 0
          end
        end
      end

      context 'list documents and download' do
        it 'successfully lists and download envelope documents' do
          envelope_documents_result = nil

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

            envelope_documents_result = envelopes_api.list_documents($account_id, $envelope_id)
          end

          expect(envelope_documents_result).to be_truthy
          if !envelope_documents_result.nil?
            expect(envelope_documents_result.envelope_id).to eq($envelope_id)
            expect(envelope_documents_result.envelope_documents).to be_truthy

            if !envelope_documents_result.envelope_documents.nil?
              expect(envelope_documents_result.envelope_documents.count).to be > 0

              if envelope_documents_result.envelope_documents.count > 0
                options = DocuSign_eSign::GetDocumentOptions.new

                envelope_documents_result.envelope_documents.each do |envelope_document|
                  document = envelopes_api.get_document($account_id, envelope_document.document_id, $envelope_id, options)
                  expect(document).to be_truthy
                end
              end
            end
          end
        end
      end

      context 'list tabs' do
        it 'successfully lists envelope tabs' do
          envelope_summary = nil

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

            options = DocuSign_eSign::GetEnvelopeOptions.new

            envelope_summary = envelopes_api.get_envelope($account_id, $envelope_id, options)

            options = DocuSign_eSign::ListRecipientsOptions.new

            recipients = envelopes_api.list_recipients($account_id, $envelope_id, options)

            tabs = envelopes_api.list_tabs($account_id, $envelope_id, recipients.signers[0].recipient_id)

            sign_here_tabs = tabs.sign_here_tabs

            expect(sign_here_tabs).to be_truthy
          end
        end
      end

      context 'list users' do
        it 'successfully list account users' do
          user_info_list = nil

          if !$account_id.nil?
            api_client = create_api_client()
            users_api = DocuSign_eSign::UsersApi.new(api_client)
            options = DocuSign_eSign::ListOptions.new

            user_info_list = users_api.list($account_id, options)
          end

          expect(user_info_list).to be_truthy
          if !user_info_list.nil?
            expect(user_info_list.users).not_to be_empty
          end
        end
      end

      context 'list audit events' do
        it 'successfully list envelope audit events' do
          audit_events_response = nil

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

            audit_events_response = envelopes_api.list_audit_events($account_id, $envelope_id)
          end

          expect(audit_events_response).to be_truthy
          if !audit_events_response.nil?
            expect(audit_events_response.audit_events).not_to be_empty
          end
        end
      end

      context 'list envelope statuses' do
        it 'returns envelope statuses' do
          status = nil
          if !$envelope_id.nil?
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(create_api_client)
            envelope = envelopes_api.get_envelope($account_id, $envelope_id)

            list_status_options = DocuSign_eSign::ListStatusOptions.new
            list_status_options.envelope_ids = $envelope_id
            list_status_options.transaction_ids = envelope.transaction_id

            envelope_ids_request = DocuSign_eSign::EnvelopeIdsRequest.new
            envelope_ids_request.envelope_ids = Array($envelope_id)
            envelope_ids_request.transaction_ids = Array(envelope.transaction_id)

            status = envelopes_api.list_status($account_id, envelope_ids_request, list_status_options)
          end

          expect(status).not_to be_nil
          expect(status).to be_a(DocuSign_eSign::EnvelopesInformation)
          expect(status.envelopes).not_to be_nil
          expect(status.envelopes.size > 0).to be_truthy
        end
      end

      context 'list custom fields' do
        it 'successfully list custom fields' do
          custom_fields = nil

          if !$envelope_id.nil?
            api_client = create_api_client()
            envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

            custom_fields = envelopes_api.list_custom_fields($account_id, $envelope_id)
          end

          expect(custom_fields).to be_truthy
          expect(custom_fields).to be_a(DocuSign_eSign::CustomFieldsEnvelope)
        end
      end
    end
  end
end