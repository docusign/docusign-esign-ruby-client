# The Official Docusign eSignature Ruby Client SDK

The Docusign SDK makes integrating Docusign into your apps and websites a seamless experience.

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
	* [Version Information](#versionInformation)
	* [Requirements](#requirements)
	* [Compatibility](#compatibility)
	* [Installation via your application's Gemfile](#installationViaGem)
	* [Manual Installation](#manualInstallation)
- [Dependencies](#dependencies)
- [API Reference](#apiReference)
- [Code Examples](#codeExamples)
- [OAuth Implementations](#oauthImplementations)
- [Changelog](#changeLog)
- [Support](#support)
- [License](#license)
- [Additional Resources](#additionalResources)

<a id="introduction"></a>
## Introduction
Integrate eSignatures into your application in minutes. The secure and award-winning Docusign eSignature API makes requesting signatures, automating forms, and tracking documents directly from your app easy.

<a id="installation"></a>
## Installation
This client SDK is provided as open source, which enables you to customize its functionality to suit your particular use case. To do so, download or clone the repository. If the SDK’s given functionality meets your integration needs, or if you’re working through our [code examples](https://developers.docusign.com/docs/esign-rest-api/how-to/) from the [Docusign Developer Center](https://developers.docusign.com/), you merely need to install it by following the instructions below.

<a id="versionInformation"></a>
### Version Information
- **API version**: v2.1
- **Latest SDK version**: 5.6.0

<a id="requirements"></a>
## Requirements
*   Ruby 1.9+
*   Free [developer account](https://go.docusign.com/o/sandbox/?postActivateUrl=https://developers.docusign.com/)

<a id="compatibility"></a>
## Compatibility
*   Ruby 1.9+

<a id="installationViaGem"></a>
### Installation via your application's Gemfile:
1. In your application's Gemfile, add:  
    `gem 'docusign_esign'`
2. Open your preferred console.
3. In your project directory, execute the installer by typing: **bundle install**

<a id="manualInstallation"></a>
### Manual Installation:
1. Open your preferred console.
2. In the console, type: **gem install docusign_esign**

<a id="dependencies"></a>
### SDK Dependencies
This client has the following external dependencies:
*   Jwt v2.2.1
*   Json v2.1.0
*   addressable v2.7.0
*   Typhoeus v1.0.1

<a id="apiReference"></a>
## API Reference
You can refer to the API reference [here](https://developers.docusign.com/docs/esign-rest-api/reference/).

<a id="codeExamples"></a>
## Code examples
Explore our GitHub repository for the [Launcher](https://github.com/docusign/code-examples-ruby/), a self-executing package housing code examples for the eSignature Ruby SDK. This package showcases several common use cases and their respective source files. Additionally, you can download a version preconfigured for your Docusign developer account from [Quickstart](https://developers.docusign.com/docs/esign-rest-api/quickstart/). These examples support both the [Authorization Code Grant](https://developers.docusign.com/platform/auth/authcode/) and [JSON Web Token (JWT)](https://developers.docusign.com/platform/auth/jwt/) authentication workflows.

<a id="oauthImplementations"></a>
## OAuth implementations
For details regarding which type of OAuth grant will work best for your Docusign integration, see [Choose OAuth Type](https://developers.docusign.com/platform/auth/choose/) in the [Docusign Developer Center](https://developers.docusign.com/).

For security purposes, Docusign recommends using the [Authorization Code Grant](https://developers.docusign.com/platform/auth/authcode/) flow.

<a id="changeLog"></a>
## Changelog
You can refer to the complete changelog [here](https://github.com/docusign/docusign-esign-ruby-client/blob/master/CHANGELOG.md).

<a id="support"></a>
## Support
Log issues against this client SDK through GitHub. You can also reach out to us through [Docusign Community](https://community.docusign.com/developer-59) and [Stack Overflow](https://stackoverflow.com/questions/tagged/docusignapi).

<a id="license"></a>
## License
The Docusign eSignature Ruby Client SDK is licensed under the [MIT License](https://github.com/docusign/docusign-esign-ruby-client/blob/master/LICENSE).

<a id="additionalResources"></a>
### Additional resources
*   [Docusign Developer Center](https://developers.docusign.com/)
*   [Docusign API on Twitter](https://twitter.com/docusignapi)
*   [Docusign For Developers on LinkedIn](https://www.linkedin.com/showcase/docusign-for-developers/)
*   [Docusign For Developers on YouTube](https://www.youtube.com/channel/UCJSJ2kMs_qeQotmw4-lX2NQ)