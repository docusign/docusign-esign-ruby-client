# Change Log
All notable changes to this project will be documented in this file.

See [DocuSign Support Center](https://support.docusign.com/en/releasenotes/) for Product Release Notes.

## [v3.3.0] - eSignature API v2.1-20.1.02 - 2020-05-31
### Changed
- Added support for version v2.1-20.1.02 of the DocuSign eSignature API.
- Updated the SDK release version.

## [v3.2.1] - eSignature API v2.1-20.1.00 - 2020-04-15
### Changed
- Updated jwt to version 2.2.1.

## [v3.2.0] - eSignature API v2.1-20.1.00 - 2020-03-30
### Changed
- Added support for version v2.1-20.1.00 of the DocuSign eSignature API.
- Updated rake to version 12.3.3.
- Updated the SDK release version.
### Added
- Added the new property `copy_recipient_data` to envelopes. When set to **true**, the information that recipients enter is retained when you clone an envelope. For example, if you resend an envelope that was declined or voided after one or more recipients entered data, that data is retained. Note that the account setting `enable_envelope_copy_with_data` must be set to **true**.
- Added a new object, `RecipientIdentityInputOption`: Reserved for DocuSign.
- Added a new parameter, `input_options`, to `AccountIdentityVerificationWorkflow`: Reserved for DocuSign.

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
