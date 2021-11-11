# The Official DocuSign eSignature Ruby Client SDK

[![RubyGems version][rubygems-image]][rubygems-url]
[![RubyGems downloads][downloads-image]][downloads-url]
[![Build status][travis-image]][travis-url]

## Requirements
*   Ruby 1.9+
*   Free [developer account](https://go.docusign.com/sandbox/productshot/?elqCampaignId=16531)

## Compatibility
*   Ruby 1.9+

## Installation
This SDK is provided as open source, which enables you to customize its functionality to suit your particular use case. To do so, download or clone the repository. If the SDK’s given functionality meets your integration needs, or if you’re working through our [code examples](https://developers.docusign.com/docs/esign-rest-api/how-to/) from the [DocuSign Developer Center](https://developers.docusign.com/), you merely need to install it by following the instructions below.

### Installation via your application's Gemfile:
1. In your application's Gemfile, add:  
    `gem 'docusign_esign'`
2. Open your preferred console.
3. In your project directory, execute the installer by typing: **bundle install**

### Manual installation:
1. Open your preferred console.
2. In the console, type: **gem install docusign_esign**

### Dependencies
This client has the following external dependencies:
*   Jwt>=1.5.2
*   Json>=2.1.0
*   Typhoeus>=1.0.1

## Code examples
You can find on our GitHub a self-executing package of code examples for the eSignature C# SDK, called a [Launcher](https://github.com/docusign/code-examples-ruby/blob/master/README.md), that demonstrates common use cases. You can also download a version preconfigured for your DocuSign developer account from [Quickstart](https://developers.docusign.com/docs/esign-rest-api/quickstart/). These examples can use either the [Authorization Code Grant](https://developers.docusign.com/esign-rest-api/guides/authentication/oauth2-code-grant) or [JSON Web Token (JWT)](https://developers.docusign.com/esign-rest-api/guides/authentication/oauth2-jsonwebtoken) authentication workflows.

## OAuth implementations
For details regarding which type of OAuth grant will work best for your DocuSign integration, see [Choose OAuth Type](https://developers.docusign.com/platform/auth/choose/) in the [DocuSign Developer Center](https://developers.docusign.com/).

For security purposes, DocuSign recommends using the [Authorization Code Grant](https://developers.docusign.com/esign-rest-api/guides/authentication/oauth2-code-grant) flow.

## Running tests:
Pre-conditions:
1. Make sure ruby is installed or install it fallowing the [instructions](https://www.ruby-lang.org/en/documentation/installation/)
2. Login with your DocuSign account on https://appdemo.docusign.com.
3. Open Apps and Keys section in Settings and press Add App and Integration Key button.
4. Enter App name, add secret key, generate RSA key and press Save button, add `https://developers.docusign.com/` to Redirect URIs.
5. Create new template on https://appdemo.docusign.com/templates page and save its ID.

After complete all previous steps for run on the Windows 10 need to do the following:
1. Download curl from https://curl.se/windows/
2. Inside archive find "bin" directory
3. Rename libcurl-x64.def to libcurl.def
4. Rename libcurl-x64.dll to libcurl.dll
5. Copy all files from "bin" directory to C:\Ruby30-x64\bin

To run tests, you need:
1. Create a .env file at the `tests` dir (or rename an existing .env.example file)
2. Enter your data from the developer account
* `SECRET` \
    settings => Apps and Keys =>
    Apps and Integration Keys your app "ACTIONS" => Edit =>
    Authentication => Secret Keys
* `INTEGRATOR_KEY_JWT` \
    settings => Apps and Keys => Integration Key of your app
* `TEMPLATE_ID` \
  templates => in MyTemplates list click by chosen template or _create new one_ => template id
* `USER_ID` \
    settings => Apps and Keys => User ID

3. Copy private key to `tests/docs/private.pem ` \
    Settings => "Apps and Keys"
    in Apps and Integration Keys choose your application name => "ACTIONS" Edit => Service Integration => + GENERATE RSA

4. Run tests: \
   `cd tests && bundle install`\
   `bundle exec rspec spec/unit_tests_using_jwt_spec.rb --format documentation`

### Important note:
First time you ask for a JWT access token you might need to uncomment lines 19-21 in `tests/spec/unit_tests_using_jwt_spec.rb:19` and grant access to the API


## Support
Log issues against this client through GitHub. We also have an [active developer community on Stack Overflow](https://stackoverflow.com/questions/tagged/docusignapi).

## License
The DocuSign eSignature Ruby Client SDK is licensed under the [MIT License](https://github.com/docusign/docusign-ruby-client/blob/master/LICENSE).

### Additional resources
*   [DocuSign Developer Center](https://developers.docusign.com/)
*   [DocuSign API on Twitter](https://twitter.com/docusignapi)
*   [DocuSign For Developers on LinkedIn](https://www.linkedin.com/showcase/docusign-for-developers/)
*   [DocuSign For Developers on YouTube](https://www.youtube.com/channel/UCJSJ2kMs_qeQotmw4-lX2NQ)
