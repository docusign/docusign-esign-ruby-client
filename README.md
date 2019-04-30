# The Official DocuSign Ruby Client

[![RubyGems version][rubygems-image]][rubygems-url]
[![RubyGems downloads][downloads-image]][downloads-url]
[![Build status][travis-image]][travis-url]

## Requirements

- Ruby 2.1.0+
- Free [Developer Sandbox](https://go.docusign.com/sandbox/productshot/?elqCampaignId=16531)

## Compatibility

- Ruby 2.1.0+

## Note

This open-source SDK is provided for cases where you would like to make additional changes that the SDK does not provide out-of-the-box. If you simply want to use the SDK with any of the examples shown in the [Developer Center](https://developers.docusign.com/esign-rest-api/code-examples), follow the installation instructions below.

## Installation

### Install via your application's **Gemfile** :

1. In your application's **Gemfile** , add:
gem 'docusign_esign'
2. Open your preferred console.
3. In your project directory, execute the installer by typing:
**bundle install**

### Manual install:

1. Open your preferred console.
2. In the console, type:
**gem install docusign_esign**

### Dependencies

This client has the following external dependencies:

- Jwt-1.5.6
- Ffi-1.10.0-x64.mingw32
- Ethon-0.12.0
- Typhoeus-1.3.1

## Code Examples

### Launchers

DocuSign provides a sample application referred to as a [Launcher](https://github.com/docusign/eg-03-ruby-auth-code-grant). The Launcher contains a set of 14 common use cases and associated source files. These examples use  DocuSign's [Authorization Code Grant](https://developers.docusign.com/esign-rest-api/guides/authentication/oauth2-code-grant) flow.

### Proof-of-concept applications

If your goal is to create a proof-of-concept application, DocuSign provides a set of [Quick Start](https://github.com/docusign/qs-ruby) examples. The Quick Start examples are meant to be used with DocuSign's [OAuth Token Generator](https://developers.docusign.com/oauth-token-generator), which will allow you to generate tokens for the Demo/Sandbox environment only. These tokens last for eight hours and will enable you to build your proof-of-concept application without the need to fully implement an OAuth solution.

## OAuth Implementations

For details regarding which type of OAuth grant will work best for your DocuSign integration, see the [REST API Authentication Overview](https://developers.docusign.com/esign-rest-api/guides/authentication) guide located on the [DocuSign Developer Center](https://developers.docusign.com/esign-rest-api/guides/authentication).

For security purposes, DocuSign recommends using the [Authorization Code Grant](https://developers.docusign.com/esign-rest-api/guides/authentication/oauth2-code-grant) flow.

There are other use-case scenarios, such as **single-page applications** (SPA) that use **Cross-Origin Resource Sharing** (CORS), or where there may not be a user to interact with your Service Account. For these use cases, DocuSign also supports [JWT](https://developers.docusign.com/esign-rest-api/guides/authentication/oauth2-jsonwebtoken) and [Implicit](https://developers.docusign.com/esign-rest-api/guides/authentication/oauth2-implicit) grants. For code examples, see the links below:

- [JWT (JSON Web Token)](https://github.com/docusign/eg-03-ruby-auth-code-grant)
- Implicit Grant (coming soon)

## Support

Log issues against this client through GitHub. We also have an [active developer community on Stack Overflow](http://stackoverflow.com/questions/tagged/docusignapi).

## License

The DocuSign Ruby Client is licensed under the [MIT License](https://github.com/docusign/docusign-ruby-client/blob/master/LICENSE).

[rubygems-image]: https://img.shields.io/gem/v/docusign_esign.svg?style=flat
[rubygems-url]: https://rubygems.org/gems/docusign_esign
[downloads-image]: https://img.shields.io/gem/dt/docusign_esign.svg?style=flat
[downloads-url]: https://rubygems.org/gems/docusign_esign
[travis-image]: https://img.shields.io/travis/docusign/docusign-ruby-client.svg?style=flat
[travis-url]: https://travis-ci.org/docusign/docusign-ruby-client
