# Change Log
All notable changes to this project will be documented in this file.

See [DocuSign Support Center](https://support.docusign.com/en/releasenotes/) for Product Release Notes.

## [v5.3.0] - eSignature API v2.1-25.2.01.00 - 2025-07-08
### Changed
- Added support for version v2.1-25.2.01.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v5.2.0] - eSignature API v2.1-25.2.00.00 - 2025-05-21
### Changed
- Added support for version v2.1-25.2.00.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v5.1.0] - eSignature API v2.1-25.1.00.02 - 2025-04-24
### Changed
- Added support for version v2.1-25.1.00.02 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v5.1.0.rc1] - eSignature API v2.1-25.1.00.02 - 2025-04-04
### Changed
- Added support for version v2.1-25.1.00.02 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v5.0.0] - eSignature API v2.1-24.2.00.00 - 2024-07-23
### Breaking Changes

<details>
<summary>API Changes (Click to expand)</summary>

<div style="margin-left: 20px;">

<br/>
Added support for version v2.1-24.2.00.00 of the Docusign ESignature API.

  ## Endpoint-Specific Changes

  ### Updated [Envelopes: get](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopes/get/)
  Added new optional query parameter named `include_anchor_tab_locations` of type string.

  ### Updated [Envelopes: update](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopes/update/)
  Added new optional query parameter named `recycle_on_void` of type string.

  ### Updated [EnvelopeViews : createCorrect](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopeviews/createcorrect/)
  Request body object `correctViewRequest` has been changed to `envelopeViewRequest`.

  ## Model Changes

  ### Updated existing models

  ### `accountInformation`

  - **Added fields:**
    - `freeEnvelopeSendsRemainingForAdvancedDocGen`

  ### `accountSettingsInformation`

  - **Added fields:**
    - `defaultSigningResponsiveView`
    - `defaultSigningResponsiveViewMetadata`
    - `dss_SCOREFDN_196_Rebrand_DocuSignIsNotAVerb`
    - `enableAdditionalAdvancedWebFormsFeatures`
    - `enableAdditionalAdvancedWebFormsFeaturesMetadata`

- **Removed fields:**
    - `enableSaveAsEnvelopeCustomFieldInWebForms`
    - `enableSaveAsEnvelopeCustomFieldInWebFormsMetadata`

### `bulksendingCopyDocGenFormField`

- **Added field:**
  - `rowValues`

### `notaryRecipient`

- **Added field:**
  - `canNotaryCorrectEnvelope`

### `tabAccountSettings`

- **Added field:**
  - `enableTabAgreementDetails`
  - `enableTabAgreementDetailsMetadata`


### Newly added Models

- `bulkSendingCopyDocGenFormFieldRowValue`

</div>
</details>


### Other Changes
- Updated the SDK release version.

## [v5.0.0.rc1] - eSignature API v2.1-24.2.00.00 - 2024-06-28
### Breaking Changes

<details>
<summary>API Changes (Click to expand)</summary>

<div style="margin-left: 20px;">

<br/>
Added support for version v2.1-24.2.00.00 of the Docusign ESignature API.

  ## Endpoint-Specific Changes

  ### Updated [Envelopes: get](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopes/get/)
  Added new optional query parameter named `include_anchor_tab_locations` of type string.

  ### Updated [Envelopes: update](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopes/update/)
  Added new optional query parameter named `recycle_on_void` of type string.

  ### Updated [EnvelopeViews : createCorrect](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopeviews/createcorrect/)
  Request body object `correctViewRequest` has been changed to `envelopeViewRequest`.

  ## Model Changes

  ### Updated existing models

  ### `accountInformation`

  - **Added fields:**
    - `freeEnvelopeSendsRemainingForAdvancedDocGen`

  ### `accountSettingsInformation`

  - **Added fields:**
    - `defaultSigningResponsiveView`
    - `defaultSigningResponsiveViewMetadata`
    - `dss_SCOREFDN_196_Rebrand_DocuSignIsNotAVerb`
    - `enableAdditionalAdvancedWebFormsFeatures`
    - `enableAdditionalAdvancedWebFormsFeaturesMetadata`

- **Removed fields:**
    - `enableSaveAsEnvelopeCustomFieldInWebForms`
    - `enableSaveAsEnvelopeCustomFieldInWebFormsMetadata`

### `bulksendingCopyDocGenFormField`

- **Added field:**
  - `rowValues`

### `notaryRecipient`

- **Added field:**
  - `canNotaryCorrectEnvelope`

### `tabAccountSettings`

- **Added field:**
  - `enableTabAgreementDetails`
  - `enableTabAgreementDetailsMetadata`


### Newly added Models

- `bulkSendingCopyDocGenFormFieldRowValue`

</div>
</details>

### Other Changes
- Updated the SDK release version.

## [v4.0.0] - eSignature API v2.1-24.1.01.00 - 2024-05-22
## Endpoint-Specific Changes

### Updated [EnvelopeRecipients: createRecipientProofFileResourceToken](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/enveloperecipients/createrecipientprooffileresourcetoken/)
The `"token_scopes"` parameter has been moved from path parameters to query parameters for the above mentioned endpoint.

### Updated [EnvelopeView:CreateSender](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopeviews/createsender/) and [EnvelopeView:CreateEdit](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopeviews/createedit/)
The body parameter `returnUrlRequest` has been changed to `envelopeViewRequest`.
`envelopeViewRequest` has the same properties as the previous `returnUrlRequest` but now includes additional `viewAccess` and `settings` properties, where settings is a complex object with several UI controls for the view experience.

### Updated [TemplateViews: createEdit](https://developers.docusign.com/docs/esign-rest-api/reference/templates/templateviews/createedit/)
The body parameter `returnUrlRequest` has been changed to `templateViewRequest`.
`templateViewRequest` has the same properties as the previous `returnUrlRequest` but now includes an additional `viewAccess` string.

## Model Changes

- Updated existing models

### `accountSettingsInformation`

- **Added fields:**
  - `allowConnectEnvelopeRemovedEvent`
  - `allowOrganizationBranding`
  - `allowOrganizationBrandingMetadata`
  - `allowPendingDestinationUrlEdition`
  - `allowPendingDestinationUrlEditionMetadata`
  - `disableBulkSendRecipientLimit`
  - `disableBulkSendRecipientLimitMetaData`
  - `enableAdvancedSearch`
  - `enableAdvancedSearchMetadata`
  - `enableContentSearch`
  - `enableContentSearchMetadata`
  - `enableMultiUserRepositoryFeatures`
  - `enableMultiUserRepositoryFeaturesMetadata`
  - `enablePremiumDataVerificationExtensions`
  - `enablePremiumDataVerificationExtensionsMetadata`
  - `enableSaveAsEnvelopeCustomFieldInWebForms`
  - `enableSaveAsEnvelopeCustomFieldInWebFormsMetadata`
  - `enableScheduledRelease`
  - `enableScheduledReleaseMetadata`
  - `isvOemEmbed`
  - `isvOemEmbedMetaData`

- **Removed fields:**
  - `enableInboxRelevanceSortForRecentAccounts`
  - `enableInboxRelevanceSortForRecentAccountsMetadata`
  - `enableScheduledRelease`
  - `enableScheduledReleaseMetadata`
  - `enableSearch`
  - `enableSearchMetadata`
  - `enableSearchUI`
  - `enableSearchUIMetadata`

### `accountUISettings`

- **Added fields:**
  - `enableEnvelopeTypes`
  - `enableEnvelopeTypesMetadata`

### `envelopDefinitions`

- **Added field:**
  - `uSigState`

### `envelopTemplate`

- **Added field:**
  - `uSigState`

### `group`

- **Added property:**
  - `lastModifiedOn`

### `receipientViewRequest`

- **Added property:**
  - `displayFormat`

### `userSettingsInformation`

- **Added properties:**
  - `accountAgreementsAccessType`
  - `accountAgreementsAccessTypeMetadata`
  - `canBulkUploadAgreements`
  - `canBulkUploadAgreementsMetadata`
  - `canManageAgreementParties`
  - `canManageAgreementPartiesMetadata`

### Newly added Models

- `envelopeViewDocumentSettings`
- `envelopeViewEnvelopeCustomFieldSettings`
- `envelopeViewRecipientSettings`
- `envelopeViewRequest`
- `envelopeViewSettings`
- `envelopeViewTaggerSettings`
- `envelopeViewTemplateSettings`
- `paletteItemSettings`
- `paletteSettings`
- `templateViewRequest`

### Removed Models
- `returnUrlRequest`

## [v4.0.0.rc1] - eSignature API v2.1-24.1.01.00 - 2024-05-02
### Changed
- Added support for version v2.1-24.1.01.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.27.0] - eSignature API v2.1-23.4.02.00 - 2024-04-30
### Changed
- Updated logic to derive the `oauth_base_path` from `base_path`.
- Added support for version v2.1-23.4.02.00 of the DocuSign ESignature API.
- Updated the SDK release version.
## [v3.27.0.rc1] - eSignature API v2.1-23.4.02.00 - 2024-03-12
### Changed
- Added support for version v2.1-23.4.02.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.27.0.alpha1] - eSignature API v2.1-23.4.02.00 - 2024-03-07
### Changed
- Updated logic to derive the `oauth_base_path` from `base_path`.
- Added support for version v2.1-23.4.02.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.26.0] - eSignature API v2.1-23.3.01.02 - 2023-10-25
### Changed
- Added support for version v2.1-23.3.01.02 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.25.0] - eSignature API v2.1-23.3.00.01 - 2023-08-30
### Changed
- Added support for version v2.1-23.3.00.01 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.24.0] - eSignature API v2.1-23.2.00.00 - 2023-05-15
### Changed
- Added support for version v2.1-23.2.00.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.23.0] - eSignature API v2.1-23.1.01.01 - 2023-04-05
### Changed
- Added support for version v2.1-23.1.01.01 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.22.0] - eSignature API v2.1-23.1.01.00 - 2023-03-17
### Changed
- Added support for version v2.1-23.1.01.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.21.0] - eSignature API v2.1-22.4.02.00 - 2023-02-02
### Changed
- Added support for version v2.1-22.4.02.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.20.0] - eSignature API v2.1-22.3.01.00 - 2022-11-18
### Changed
- Added support for version v2.1-22.3.01.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.19.0] - eSignature API v2.1-22.3.00.00 - 2022-09-08
### Changed
- Added support for version v2.1-22.3.00.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.18.0] - eSignature API v2.1-22.2.00.00 - 2022-06-17
### Changed
- Added support for version v2.1-22.2.00.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.17.0] - eSignature API v2.1-22.1.02.00 - 2022-05-18
### Changed
- Added support for version v2.1-22.1.02.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.16.0] - eSignature API v2.1-22.1.01.00 - 2022-04-07
### Changed
- Added support for version v2.1-22.1.01.00 of the DocuSign ESignature API.
- Updated the SDK release version.

### Breaking
- Following types are renamed

    - `ScheduledSendingApiModel` is renamed to `ScheduledSending`
    - `DelayedRoutingApiModel` is renamed to `DelayedRouting`

## [v3.15.0] - eSignature API v2.1-21.4.02.00 - 2022-02-08
### Changed
- Added support for version v2.1-21.4.02.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [v3.14.0] - eSignature API v2.1-21.4.01.00 - 2022-01-06
### Changed
- Added support for version v2.1-21.4.01.00 of the DocuSign ESignature API.
- Updated the SDK release version.

## [3.14.0.rc1] - ESignature API v2.1-21.4.00.00 - 2021-12-13
### Changed
- Added support for version v2.1-21.4.00.00 of the DocuSign ESignature API.
- Updated the SDK release version.


## [3.13.0] - ESignature API v2.1-21.3.02.00 - 2021-10-29
### Changed
- Added support for version v2.1-21.3.02.00 of the DocuSign ESignature API.
- Updated the SDK release version.


## [3.13.0.rc1] - ESignature API v2.1-21.3.00.00 - 2021-09-21
### Changed
- Added support for version v2.1-21.3.00.00 of the DocuSign ESignature API.
- Updated the SDK release version.


## [v3.12.0] - ESignature API v2.1-21.2.02.00 - 2021-09-03
### Changed
- Added support for version v2.1-21.2.02.00 of the DocuSign ESignature API.
- Updated the SDK release version.

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
