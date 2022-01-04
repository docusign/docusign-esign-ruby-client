require 'docusign_esign'
require 'base64'
require 'uri'

describe 'DocuSign Ruby Client Tests' do
    def login
        begin
            puts "1"
            if $api_client.nil?
                puts "2"
                configuration = DocuSign_eSign::Configuration.new
                configuration.host = $host

                puts "3"
                $api_client = DocuSign_eSign::ApiClient.new(configuration)
                    $api_client.set_oauth_base_path(DocuSign_eSign::OAuth::DEMO_OAUTH_BASE_PATH)
                # $api_client.get_authorization_uri($integrator_key,'signature',$return_url,'code')
                # $api_client.request_jwt_application_token($integrator_key,File.read($private_key_filename),$expires_in_seconds,'' )
                # code = 'code_here'
                # $api_client.generate_access_token($integrator_key,$secret,code)
            end

        puts "4"
        decode_base64_content = Base64.decode64(ENV["PRIVATE_KEY"])
        encoded_content = ENV["PRIVATE_KEY"]
        puts "encoded: #{$encoded_content}"
        puts "decoded: #{$decode_base64_content}"
        puts "5"
        File.open($private_key_filename, "wb") do |f|
            f.write(decode_base64_content)
        end
        puts "6"
        token_obj = $api_client.request_jwt_user_token(ENV["INTEGRATOR_KEY_JWT"],ENV["USER_ID"], File.read($private_key_filename),$expires_in_seconds)
        puts "7"
        puts $token_obj.access_token
        user_info = $api_client.get_user_info(token_obj.access_token)

        puts "8"
        if !user_info.nil?
            user_info.accounts.each do |account|
                if account.is_default == "true"
                    $base_uri = account.base_uri
                    $account_id = account.account_id

        # IMPORTANT: Use the base url from the login account to instantiant the api_client
                    base_uri = URI.parse($base_uri)
                    $api_client.set_base_path( "%s://%s/restapi" % [base_uri.scheme, base_uri.host])

                    return account
                end
            end
        end
        rescue => e
          puts "Error during processing: #{$!}"
          # puts "Backtrace:\n\t#{e.backtrace.join("\n\t")}"
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
        if(!$account_id.nil?)
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

            if(is_embedded_signing)
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
    $client_user_id = '1234'
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

          context 'request signature using a template' do
              it 'successfully send an envelope' do
                  # TODO
              end
          end

          context 'sender view' do
              it 'successfully returns sender view url' do
                  view_url = nil
                  
                  if !$envelope_id.nil?
                      api_client = create_api_client()
                        envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

                      return_url_request = DocuSign_eSign::ReturnUrlRequest.new
                      return_url_request.return_url = $return_url

                      view_url = envelopes_api.create_sender_view($account_id, $envelope_id, return_url_request)
                  end

                    expect(view_url).to be_truthy
                  if !view_url.nil?
                      expect(view_url.url).to be_truthy
                  end
              end
          end

          context 'recipient view' do
              it 'successfully returns embedded signing view url' do
                  view_url = nil

                  if !$envelope_id.nil?
                      api_client = create_api_client()
                        envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

                        envelope = DocuSign_eSign::Envelope.new
                        envelope.status = 'sent'

                        options = DocuSign_eSign::UpdateOptions.new

                        envelope_update_summary = envelopes_api.update($account_id, $envelope_id, envelope, options)

                        expect(envelope_update_summary).to be_truthy
                        if(!envelope_update_summary.nil?)
                            expect(envelope_update_summary.envelope_id).to be_truthy
                        end

                        recipient_view_request = DocuSign_eSign::RecipientViewRequest.new
                        recipient_view_request.return_url = $return_url
                        recipient_view_request.client_user_id = $client_user_id
                        recipient_view_request.authentication_method = $authentication_method
                        recipient_view_request.user_name = $recipient_name
                        recipient_view_request.email = ENV["RECIPIENT_EMAIL"]

                        view_url = envelopes_api.create_recipient_view($account_id, $envelope_id, recipient_view_request)
                  end

                  expect(view_url).to be_truthy
                  if !view_url.nil?
                      expect(view_url.url).to be_truthy
                  end
              end
          end

          context 'embedded console view' do
              it 'successfully returns embedded console view url' do
                  view_url = nil

                  if !$envelope_id.nil?
                      api_client = create_api_client()
                        envelopes_api = DocuSign_eSign::EnvelopesApi.new(api_client)

                        console_view_request = DocuSign_eSign::ConsoleViewRequest.new
                        console_view_request.envelope_id = $envelope_id
                        console_view_request.return_url = $return_url

                        view_url = envelopes_api.create_console_view($account_id, console_view_request)
                  end

                  expect(view_url).to be_truthy
                  if !view_url.nil?
                      expect(view_url.url).to be_truthy
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

          context 'get template information' do
              it 'successfully returns template' do
                  template_summary = nil

                  if !$envelope_id.nil?
                    api_client = create_api_client()
                    templates_api = DocuSign_eSign::TemplatesApi.new(api_client)
                    
                    options = DocuSign_eSign::GetEnvelopeOptions.new
                    $template_id = ENV["TEMPLATE_ID"]

                    options = DocuSign_eSign::GetOptions.new
                    options.include = "tabs"

                    template_summary = templates_api.get($account_id, $template_id, options)
                end

                expect(template_summary).to be_truthy
                if !template_summary.nil?
                    expect(template_summary.template_id).to eq($template_id)
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
                        # expect(envelope_form_data.form_data.length).to be > 0
                        # if envelope_form_data.form_data.length > 0
                        # 	expect(envelope_form_data.form_data[0].name).to be_truthy
                        # 	expect(envelope_form_data.prefill_form_data).to be_truthy
                        # 	if !envelope_form_data.prefill_form_data.nil?
                        # 		expect(envelope_form_data.prefill_form_data.form_data).to be_truthy
                        # 		expect(envelope_form_data.prefill_form_data.form_data.length).to be > 0
                        # 		if envelope_form_data.prefill_form_data.form_data.length > 0
                        # 			expect(envelope_form_data.prefill_form_data.form_data[0].name).to be_truthy
                        # 		end
                        # 	end
                        # end
                    end
                  end
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
                    options.from_date = (Date.today-30).strftime("%Y-%m-%d")

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
    end
end