# The Official DocuSign eSignature Ruby Client SDK

[![RubyGems version][rubygems-image]][rubygems-url]
[![RubyGems downloads][downloads-image]][downloads-url]
[![Build status][travis-image]][travis-url]

## Requirements

- Ruby 1.9+
- Free [Developer Sandbox](https://go.docusign.com/sandbox/productshot/?elqCampaignId=16531)

## Compatibility

- Ruby 1.9+

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

## Support
Log issues against this client through GitHub. We also have an [active developer community on Stack Overflow](https://stackoverflow.com/questions/tagged/docusignapi).

## License
The DocuSign eSignature Ruby Client SDK is licensed under the [MIT License](https://github.com/docusign/docusign-ruby-client/blob/master/LICENSE).

### Additional resources
*   [DocuSign Developer Center](https://developers.docusign.com/)
*   [DocuSign API on Twitter](https://twitter.com/docusignapi)
*   [DocuSign For Developers on LinkedIn](https://www.linkedin.com/showcase/docusign-for-developers/)
*   [DocuSign For Developers on YouTube](https://www.youtube.com/channel/UCJSJ2kMs_qeQotmw4-lX2NQ)

[rubygems-image]: https://img.shields.io/gem/v/docusign_esign.svg?style=flat
[rubygems-url]: https://rubygems.org/gems/docusign_esign
[downloads-image]: https://img.shields.io/gem/dt/docusign_esign.svg?style=flat
[downloads-url]: https://rubygems.org/gems/docusign_esign
[travis-image]: https://img.shields.io/travis/docusign/docusign-ruby-client.svg?style=flat
[travis-url]: https://travis-ci.org/docusign/docusign-ruby-client