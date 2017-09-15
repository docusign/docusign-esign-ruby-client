# The Official DocuSign Ruby Client

You can sign up for a free [developer sandbox](https://www.docusign.com/developer-center).

Requirements
============

Ruby 2.1.0 or higher [https://www.ruby-lang.org/en/].

Installation
============

Add this line to your application's Gemfile:

    gem 'docusign_esign'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install docusign_esign

Usage
=====

To initialize the client and make the Login API Call using the JWT authentication:

```ruby
	require 'docusign_esign'
	require 'uri'

	host = 'https://demo.docusign.net/restapi'
	integrator_key = '[REQUIRED]'
	user_id = '[REQUIRED]'
	expires_in_seconds = 3600 #1 hour
	auth_server = 'account-d.docusign.com'
	private_key_filename = '[REQUIRED]'

	# STEP 1: Initialize API Client
	configuration = DocuSign_eSign::Configuration.new
	configuration.host = host

	api_client = DocuSign_eSign::ApiClient.new(configuration)
	api_client.configure_jwt_authorization_flow(private_key_filename, auth_server, integrator_key, user_id, expires_in_seconds)

	# STEP 2: Initialize Authentication API using the API Client
	authentication_api = DocuSign_eSign::AuthenticationApi.new(api_client)


	# STEP 3: Make the login call
	login_options = DocuSign_eSign::LoginOptions.new
	login_information = authentication_api.login(login_options)

	if !login_information.nil?
		login_information.login_accounts.each do |login_account|
			if login_account.is_default == "true"
				# STEP 4: Extract the user information
				base_url = login_account.base_url
				account_id = login_account.account_id

				puts base_url
				puts account_id

				# IMPORTANT: Use the base url from the login account to update the api client which will be used in future api calls
				base_uri = URI.parse(base_url)
		  	api_client.config.host = "%s://%s/restapi" % [base_uri.scheme, base_uri.host]
			end
		end
	end
```

See [unit_tests_using_jwt_spec.rb](./tests/spec/unit_tests_using_jwt_spec.rb) for more examples.

Testing
=======

Unit tests are available in the [tests/spec](./tests/spec) folder. 

Follow the steps below to run the test cases

* Fill in all the required fields/values
* Run the following command from the [tests/spec](./tests/spec) folder 

        bundle exec rspec <spec_filename>

Support
=======

Feel free to log issues against this client through GitHub.  We also have an active developer community on Stack Overflow, search the [DocuSignAPI](http://stackoverflow.com/questions/tagged/docusignapi) tag.

License
=======

The DocuSign Ruby Client is licensed under the following [License](LICENSE).
