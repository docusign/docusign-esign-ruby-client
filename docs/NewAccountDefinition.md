# DocuSign_eSign::NewAccountDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_name** | **String** | The account name for the new account. | [optional] 
**account_settings** | [**Array&lt;NameValue&gt;**](NameValue.md) | The list of account settings. These determine the features available for the account. Note that some features are determined by the plan used to create the account, and cannot be overridden. | [optional] 
**address_information** | [**AccountAddress**](AccountAddress.md) |  | [optional] 
**credit_card_information** | [**CreditCardInformation**](CreditCardInformation.md) |  | [optional] 
**distributor_code** | **String** | The code that identifies the billing plan groups and plans for the new account. | [optional] 
**distributor_password** | **String** | The password for the distributorCode. | [optional] 
**initial_user** | [**UserInformation**](UserInformation.md) |  | [optional] 
**plan_information** | [**PlanInformation**](PlanInformation.md) |  | [optional] 
**referral_information** | [**ReferralInformation**](ReferralInformation.md) |  | [optional] 
**social_account_information** | [**SocialAccountInformation**](SocialAccountInformation.md) |  | [optional] 


