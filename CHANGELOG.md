# Change Log
All notable changes to this project will be documented in this file.

See [DocuSign Support Center](https://support.docusign.com/en/releasenotes/) for Product Release Notes.

## [v3.11.0] - eSignature API v2.1-21.2.00.00 - 2021-07-22
### Added
- Added new models and properties.
### Changed
- Added support for version v2.1-21.2.00.00 of the DocuSign eSignature API.
- Updated the SDK release version.

## [v3.10.0] - eSignature API v2.1-21.1.02.00 - 2021-06-04
### Breaking
- Removed methods `get_account_settings_export`,`get_seal_providers` from Accounts.
- Removed methods `create_connect_secret`,`delete_connect_secret`,`generate_connect_secret`,`get_connect_secrets` from Connect.
- Removed methods `create_page_info`, `create_pdf_blob`, `delete_custom_fields_0`, `delete_custom_fields_v2`, `delete_document`, `delete_page_info`, `delete_recipient_denied_document_copy`, `delete_signer_attachment`, `get_account`, `get_appliance_info`, `get_custom_fields`, `get_document_pages`, `get_dynamic_system_settings`, `get_image`, `get_locale_policy`, `get_pdf`, `get_pdf_blob`, `get_signer_attachment`, `get_tabs_blob`, `update_document`, `update_document_0`, `update_page_info`, `update_pdf`, `update_pdf_blob`, `update_recipient_denied_document_copy` from Envelopes.
- Removed methods `complete_sign_hash`,`get_user_info`,`health_check`,`sign_hash_session_info`,`update_transaction` from TrustServiceProviders.
- Removed methods `get_user_list_export` from Users.
### Added
- Added new methods `get_bulk_send_batch_envelopes` to BulkEnvelopes.
### Changed
- Added support for version v2.1-21.1.02.00 of the DocuSign eSignature API.
- Updated the SDK release version.

## [v3.9.0] - eSignature API v2.1-21.1.01.03 - 2021-04-25
### Added
- Added new methods `delete_custom_fields_v2`, `delete_page_info_v2`, `get_appliance_envelope_info`, `get_template_info` to envelopes.
- Added new method `delete_connect_secret` to connect.
### Changed
- Added support for version v2.1-21.1.01.03 of the DocuSign eSignature API.
- Updated the SDK release version.

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
