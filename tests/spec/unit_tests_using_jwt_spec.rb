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
        		$api_client.set_oauth_base_path(DocuSign_eSign::OAuth::DEMO_OAUTH_BASE_PATH)
				# $api_client.get_authorization_uri($integrator_key,'signature',$return_url,'code')
				# $api_client.request_jwt_application_token($integrator_key,File.read($private_key_filename),$expires_in_seconds,'' )
				# code = 'code_here'
				# $api_client.generate_access_token($integrator_key,$secret,code)
			end

		decode_base64_content = Base64.decode64(ENV["PRIVATE_KEY"])
		File.open($private_key_filename, "wb") do |f|
		  f.write(decode_base64_content)
		end 
	  	token_obj = $api_client.request_jwt_user_token(ENV["INTEGRATOR_KEY_JWT"],ENV["USER_ID"], File.read($private_key_filename),$expires_in_seconds)

	  	user_info = $api_client.get_user_info(token_obj.access_token)


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

  	# $integrator_key = '97617642-faf7-4b4d-a9fb-692bfa86bad0'
  	# $user_id = 'f6c9e287-c8b0-4064-8c3f-7130f1a9ebcf'
  	$expires_in_seconds = 3600 #1 hour
  	$auth_server = 'account-d.docusign.com'
  	$private_key_filename= '../docs/private.pem'
  	# $private_key = 'LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFb2dJQkFBS0NBUUVBcTF5VXp3M293byt5SXVCbnRHNEVGUEVhZUpxZW1qZG5JS3U0SkpCOFZtNUxKUmFYCjY4c21oK3B6MkswR3RmcUIzZmlJYWd1dzNOc1ZaOHYrY2FyZnh6b1g1OGplaUlUaTZORFhLNmkzUSs5dHlDSnAKcnhjbVRseVBJaDFvK1I5QmFaQW43VWMwT0lra2NvbnJuY1JsREFqZ1J1c0JzNzlpekpJcU1IRStZRzV1U0NHKwpUTERQK0x0enpQSzhBNHJSQisvbERLb1hNK085MDVLQlNFSnlaMnhHWk9IWTRTRVdLSDV2akE1MHN5eTZvR3BNCkhwY3B4NHJydlJMZmNtSkRjU0h2WTFXVDNHYVBBT1huU29HelVEbndpT1BkUzFyY3puSDJud3J3K2tQV3hId2oKc0UyTy9qdkVMZHVWbDhIL1BQc1cxd3R5am5FdDdCN1E5d3JXY3dJREFRQUJBb0lCQUFNcG9IVzVCSmcrN0dtNQpUWmsxV2c0UktBUmhJMzJ1My9LVGkvUGhWb0tvaFB1NGN2WUJUVnlMM3o5V3NKQ3ZHa3czL1c4eXpjVnRMbnlOCnVmOTBoSjB0QThSVkJaYnNYR1dYLzBHeHdSeGt1M0lHVm03OTByZkRZd1ZwOW5sb2JlN1RzU09lWjZzTzZqeXcKaDFrcDNFaWdncVM5ZmdGSWhiTGd0bUVuYm0wVkJmQS8rOFVOWlF4Snh6dzB1WkNWb2pFb0Z0Ynh5djNpbkhTdQpjbEtHczNzRFExUkEyUERFM3h5T1I1MWE0UkxBV3VhdlFDMVRkeWRTL1FFbkNteEpuWjFlUVkrYmp0K0duSE9PCk9QemdDS0h1MVRkSnlQVDU3a1U3RlhNRWt1dWo1YUcxaS9VdFpTTkgrTDM4Nnk2blBtbzdiL21YeUZnTWlsN3IKbE5hVDgxRUNnWUVBNy9iMHVvdFpFbTNHejFPd05ZbVFTOGdOeEFxMVd0VzIyNVJDQnhpRVYrUzd4c2x1ZUNpRwpuQVRCaWR3TUkvOFhiTjhLdmJtVTJUTm5uZGNzVU50OXRhOHVmWDBHWFEwcGpFWE5MM1pmVEtvWkYwZS9CbjNXCkJxU1YxWUJscEU3QjgxTTc5bVNWWWJNU2NmenhDVmphVTUzSlJEellVWXhQUU5WK2lNa1lrOGtDZ1lFQXR0QUsKMlpLUG96bFdUUDZHTzF2M2VrbStRd1VmdHZKNDNYeVo1OVB6aGVnam0yaGtJRWJVdUlQQ1ZmdVFJVkN2ZlBJQgp5QW9UQys5aTRyQVBtQ3ZZWG9HWUF4OGw1WXV3ZmlVaDhhalRhdnpnckNrOXU5L3hPSDJ5cEl4Um5IenBlOTl0ClYra0xFRXVXK3VMY045K0QxMGJQMDRxVEhvK0RJR2g5TXVqMjNsc0NnWUFrWHF5Mi9WblJ0anUwdnIxdFQ5MUQKN3gxUEFrUjhjUG5YREFCNTdOaGFMZnZiNURuUEVtMWNoa2dES2d2WkJOZTdFNDhnTkZtQUZnOTFWK0NLbk1uUAoySzVXTExYak1wU0NneTNYTEx6QzlPRDZxMUFqbnJ6cW90Vm0xNkFRS0RPek9vRlRGZW1pTmk3c2dlYlNnTm9PClpGTFYrZGJiZlVXaDBQbnRwM1VIS1FLQmdGMS85RHlwVUJ1c1pLNUdjNE1DbTRXSkYrMlJQbEpFbTNxMGtzYlcKU2JRUU1iMzNXMWFDdzZPSGlDcVAybnlmbHRHeHVTV0Z1WTRlSnBaSWRBRmhVMjJxbklQa04yNjZ6azhHVU9FWApkdUkrYWU3RHZSWk5DRVBiVGpZSXFtaitIakRENmxuUEVHQ0tPTE1pdW4wOUxXSTZqbXJrY2pCc09DV29LM2lSClhFb0hBb0dBT1NYTzFrTTZwME1aRWhLeHJWdW5GNkhwVzhhSFJqY2RjampKSlJGZ2FwM2h4Q1QxT1o5WUIrU0QKUHJuK2NqRko3V1NNckhwSVJ0NTZGWkdVVWdtcCs5N1dxWXNJdUFKeDU2RVRLZEFWeDZDN1J1RXRiSm9xZFRFUgpoUzR2YUdxK0VXbWpWYy9wU01iQnpaOTlscElFYnlZQmsyakQzR3BDV2dTZDlDRHJ4R1k9Ci0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0t'
    # $secret = '43ce55e1-e849-42cb-b32b-f78fb2d0e0f5'

    $recipient_email = "node_sdk@mailinator.com" #"naveen.gopala@docusign.com"
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
	end
end