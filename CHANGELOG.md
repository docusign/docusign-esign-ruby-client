# Change Log
All notable changes to this project will be documented in this file.

See [DocuSign Support Center](https://support.docusign.com/en/releasenotes/) for Product Release Notes.

## [v3.2.0-rc1] - eSignature API v2.1-20.1.00 - 2020-03-13
### Changed
- The SDK now supports version v2.1-20.1.00 of the DocuSign eSignature API.
- Update rake version to 12.3.3
- SDK Release Version updated.

## [v3.0.0] - eSignature API v2.1-19.2.02 - 2019-10-08
### BREAKING
- The SDK now supports version 19.2.02 of the DocuSign eSignature v2.1 API.
### Changed
- SDK Release Version updated.
## Fixed
- Issue [`#23`](https://github.com/docusign/docusign-ruby-client/issues/23): Support for DocuSign API 2.1. (DCM-3546)
- Issue [`#22`](https://github.com/docusign/docusign-ruby-client/issues/22): JSON version of version 2.0. (DCM-3375)
- Issue [`#17`](https://github.com/docusign/docusign-ruby-client/issues/17): Client doesn't properly handle Dropdown. (DCM-3192)
- Issue [`#16`](https://github.com/docusign/docusign-ruby-client/issues/16): Client doesn't properly handle Text tabs with Date Validation. (DCM-3193)
- Issue [`#15`](https://github.com/docusign/docusign-ruby-client/issues/15): ListStatus not accepting envelope_ids. (DCM-3123)
- Issue [`#7`](https://github.com/docusign/docusign-ruby-client/issues/7): Allow passing in JWT. (DCM-2312)

## [v2.1.0] - eSignature API v2-19.2.02 - 2019-10-08
### Changed
- The SDK now supports version 19.2.02 of the DocuSign eSignature v2 API.
- SDK Release Version updated.
## Fixed
- Issue [`#23`](https://github.com/docusign/docusign-ruby-client/issues/23): Support for DocuSign API 2.1. (DCM-3546)
- Issue [`#22`](https://github.com/docusign/docusign-ruby-client/issues/22): JSON version of version 2.0. (DCM-3375)
- Issue [`#17`](https://github.com/docusign/docusign-ruby-client/issues/17): Client doesn't properly handle Dropdown. (DCM-3192)
- Issue [`#16`](https://github.com/docusign/docusign-ruby-client/issues/16): Client doesn't properly handle Text tabs with Date Validation. (DCM-3193)
- Issue [`#15`](https://github.com/docusign/docusign-ruby-client/issues/15): ListStatus not accepting envelope_ids. (DCM-3123)
- Issue [`#7`](https://github.com/docusign/docusign-ruby-client/issues/7): Allow passing in JWT. (DCM-2312)

## [2.0.0] - eSignature API v19.1.02 - 2019-06-08
### BREAKING
* Moved ApiClient and ApiException under Client folder
### Removed
* empty test placeholder files
### Changed
* updated existing test cases to use JWT instead of the legacy auth (still not fully working yet)
### Added
* OAuth models under Client/Auth folder
* new dependency for OAuth support (firebase/php-jwt)
* OAuthTests.php for OAuth support test
### Fixed
* A bug with that could cause the *moveEnvelopes* method call to return a response without a *Content-Type* header. (DCM-2871)

## [1.0.2] - Updates Json gem dependency from 1.8 to 2.1 - 2018-10-22

## [1.0.1] - Updated JWT version requirement - 2018-10-22
