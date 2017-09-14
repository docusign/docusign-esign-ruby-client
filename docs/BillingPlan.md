# DocuSign_eSign::BillingPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**app_store_products** | [**Array&lt;AppStoreProduct&gt;**](AppStoreProduct.md) | Reserved: TBD | [optional] 
**currency_plan_prices** | [**Array&lt;CurrencyPlanPrice&gt;**](CurrencyPlanPrice.md) | Contains the currencyCode and currencySymbol for the alternate currency values for envelopeFee, fixedFee, and seatFee that are configured for this plan feature set. | [optional] 
**enable_support** | **String** | When set to **true**, then customer support is provided as part of the account plan. | [optional] 
**included_seats** | **String** | The number of seats (users) included. | [optional] 
**other_discount_percent** | **String** |  | [optional] 
**payment_cycle** | **String** |  The payment cycle associated with the plan. The possible values are: Monthly or Annually.  | [optional] 
**payment_method** | **String** |  | [optional] 
**per_seat_price** | **String** | The per seat price for the plan. | [optional] 
**plan_classification** | **String** | Identifies the type of plan. Examples include Business, Corporate, Enterprise, Free. | [optional] 
**plan_feature_sets** | [**Array&lt;FeatureSet&gt;**](FeatureSet.md) |  | [optional] 
**plan_id** | **String** |  | [optional] 
**plan_name** | **String** | The name of the Billing Plan. | [optional] 
**seat_discounts** | [**Array&lt;SeatDiscount&gt;**](SeatDiscount.md) |  | [optional] 
**support_incident_fee** | **String** | The support incident fee charged for each support incident. | [optional] 
**support_plan_fee** | **String** | The support plan fee charged for this plan. | [optional] 


