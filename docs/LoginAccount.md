# DocuSign_eSign::LoginAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | The account ID associated with the envelope. | [optional] 
**account_id_guid** | **String** | The GUID associated with the account ID. | [optional] 
**base_url** | **String** | The URL that should be used for successive calls to this account. It includes the protocal (https), the DocuSign server where the account is located, and the account number. Use this Url to make API calls against this account. Many of the API calls provide Uri&#39;s that are relative to this baseUrl. | [optional] 
**email** | **String** | The email address for the user. | [optional] 
**is_default** | **String** | This value is true if this is the default account for the user, otherwise false is returned. | [optional] 
**login_account_settings** | [**Array&lt;NameValue&gt;**](NameValue.md) | A list of settings on the acccount that indicate what features are available. | [optional] 
**login_user_settings** | [**Array&lt;NameValue&gt;**](NameValue.md) | A list of user-level settings that indicate what user-specific features are available. | [optional] 
**name** | **String** | The name associated with the account. | [optional] 
**site_description** | **String** | An optional descirption of the site that hosts the account. | [optional] 
**user_id** | **String** |  | [optional] 
**user_name** | **String** | The name of this user as defined by the account. | [optional] 


