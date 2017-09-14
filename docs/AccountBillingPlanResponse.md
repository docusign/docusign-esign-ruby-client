# DocuSign_eSign::AccountBillingPlanResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_address** | [**AccountAddress**](AccountAddress.md) |  | [optional] 
**billing_address_is_credit_card_address** | **String** | When set to **true**, the credit card address information is the same as that returned as the billing address. If false, then the billing address is considered a billing contact address, and the credit card address can be different. | [optional] 
**billing_plan** | [**AccountBillingPlan**](AccountBillingPlan.md) |  | [optional] 
**credit_card_information** | [**CreditCardInformation**](CreditCardInformation.md) |  | [optional] 
**referral_information** | [**ReferralInformation**](ReferralInformation.md) |  | [optional] 
**successor_plans** | [**Array&lt;BillingPlan&gt;**](BillingPlan.md) |  | [optional] 


