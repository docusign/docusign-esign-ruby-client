# DocuSign_eSign::CaptiveRecipient

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_user_id** | **String** | Specifies whether the recipient is embedded or remote.   If the &#x60;clientUserId&#x60; property is not null then the recipient is embedded. Note that if the &#x60;ClientUserId&#x60; property is set and either &#x60;SignerMustHaveAccount&#x60; or &#x60;SignerMustLoginToSign&#x60; property of the account settings is set to  **true**, an error is generated on sending.ng.   Maximum length: 100 characters.  | [optional] 
**email** | **String** | Specifies the email address associated with the captive recipient. | [optional] 
**error_details** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**user_name** | **String** | Specifies the user name associated with the captive recipient. | [optional] 


