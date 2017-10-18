require 'docusign_esign'
require 'base64'
require 'uri'

describe 'DocuSign Ruby Client Tests' do
	def login
		begin
			if $api_client.nil?
				configuration = DocuSign_eSign::Configuration.new
		  	configuration.host = $host

		  	$api_client = DocuSign_eSign::ApiClient.new(configuration)
		    $api_client.configure_jwt_authorization_flow($private_key_filename, $auth_server, $integrator_key, $user_id, $expires_in_seconds)
		  end

	  	authentication_api = DocuSign_eSign::AuthenticationApi.new($api_client)

	  	login_options = DocuSign_eSign::LoginOptions.new

			login_information = authentication_api.login(login_options)

			if !login_information.nil?
				login_information.login_accounts.each do |login_account|
					if login_account.is_default == "true"
						$base_url = login_account.base_url
						$account_id = login_account.account_id

						# IMPORTANT: Use the base url from the login account to instantiant the api_client
						base_uri = URI.parse($base_url)
				  	$api_client.config.host = "%s://%s/restapi" % [base_uri.scheme, base_uri.host]

						return login_account
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
			document_name = "Test.pdf"
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
			signer.email = $recipient_email
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

  	$integrator_key = ENV['INTEGRATOR_KEY']
  	$user_id = ENV['USER_ID']
  	$expires_in_seconds = ENV['EXPIRES_IN_SECONDS'] || 3600 #3600 - 1 hour
  	$auth_server = ENV['AUTH_SERVER'] || 'account-d.docusign.com'
  	$private_key_filename = ENV['PRIVATE_KEY_FILENAME']


    $recipient_email = ENV['RECIPIENT_EMAIL']
    $recipient_name = ENV['RECIPIENT_NAME']

    # Required for embedded signing url
    $client_user_id = 2939
    $return_url = ENV['REDIRECT_URI'] || 'https://www.docusign.com/devcenter'
    $authentication_method = 'email'
	    
    $template_id = ''
    $envelope_id = nil

    $base_url = nil
    $account_id = nil
    $api_client = nil
  end

  after do
    # run after each test
  end

  describe DocuSign_eSign::AuthenticationApi do
  	describe '.login' do
  		context 'given correct credentials' do
  			it 'return LoginAccount' do
  				login_account = login()

					if !login_account.nil?
						$base_url = login_account.base_url
						$account_id = login_account.account_id
					end

		      expect($account_id).to be_truthy
		      expect($base_url).to be_truthy
  			end
  		end
  	end
  end

  describe DocuSign_eSign::EnvelopesApi do
  	describe '.create' do
  		context 'request signature on a document' do
  			it 'successfully create an envelope' do
	  			
	  			# STEP 1: Login and get the account_id & base_url
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
						recipient_view_request.email = $recipient_email

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
  	end

  	describe '.list' do
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
						
						options = DocuSign_eSign::ListDocumentsOptions.new

						envelope_documents_result = envelopes_api.list_documents($account_id, $envelope_id, options)
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
	end
end