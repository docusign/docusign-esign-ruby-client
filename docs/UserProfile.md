# DocuSign_eSign::UserProfile

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**AddressInformationV2**](AddressInformationV2.md) |  | [optional] 
**authentication_methods** | [**Array&lt;AuthenticationMethod&gt;**](AuthenticationMethod.md) | These properties cannot be modified in the PUT.   Indicates the authentication methods used by the user. | [optional] 
**company_name** | **String** | The name of the user&#39;s Company. | [optional] 
**display_organization_info** | **String** |  When set to **true**, the user&#39;s company and title information are shown on the ID card.  | [optional] 
**display_personal_info** | **String** | When set to **true**, the user&#39;s Address and Phone number are shown on the ID card. | [optional] 
**display_profile** | **String** | When set to **true**, the user&#39;s ID card can be viewed from signed documents and envelope history. | [optional] 
**display_usage_history** | **String** | When set to **true**, the user&#39;s usage information is shown on the ID card. | [optional] 
**profile_image_uri** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**usage_history** | [**UsageHistory**](UsageHistory.md) |  | [optional] 
**user_details** | [**UserInformation**](UserInformation.md) |  | [optional] 
**user_profile_last_modified_date** | **String** |  | [optional] 


