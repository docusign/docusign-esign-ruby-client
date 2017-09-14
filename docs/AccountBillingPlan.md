# DocuSign_eSign::AccountBillingPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**add_ons** | [**Array&lt;AddOn&gt;**](AddOn.md) | Reserved: | [optional] 
**can_cancel_renewal** | **String** | Reserved: TBD | [optional] 
**can_upgrade** | **String** | When set to **true**, specifies that you can upgrade the account through the API. | [optional] 
**currency_code** | **String** | Specifies the ISO currency code for the account. | [optional] 
**enable_support** | **String** | When set to **true**, then customer support is provided as part of the account plan. | [optional] 
**included_seats** | **String** | The number of seats (users) included. | [optional] 
**incremental_seats** | **String** | Reserved: TBD | [optional] 
**is_downgrade** | **String** |  | [optional] 
**other_discount_percent** | **String** |  Any other percentage discount for the plan.  | [optional] 
**payment_cycle** | **String** |  | [optional] 
**payment_method** | **String** |  The payment method used with the plan. The possible values are: CreditCard, PurchaseOrder, Premium, or Freemium.  | [optional] 
**per_seat_price** | **String** |  | [optional] 
**plan_classification** | **String** | Identifies the type of plan. Examples include Business, Corporate, Enterprise, Free. | [optional] 
**plan_feature_sets** | [**Array&lt;FeatureSet&gt;**](FeatureSet.md) | A complex type that sets the feature sets for the account. It contains the following information (all string content):  * currencyFeatureSetPrices - Contains the currencyCode and currencySymbol for the alternate currency values for envelopeFee, fixedFee, seatFee that are configured for this plan feature set. * envelopeFee - An incremental envelope cost for plans with envelope overages (when isEnabled&#x3D;true). * featureSetId - A unique ID for the feature set. * fixedFee - A one-time fee associated with the plan (when isEnabled&#x3D;true). * isActive - Specifies whether the feature set is actively set as part of the plan. * isEnabled - Specifies whether the feature set is actively enabled as part of the plan. * name - The name of the feature set. * seatFee - An incremental seat cost for seat-based plans (when isEnabled&#x3D;true).  | [optional] 
**plan_id** | **String** |  | [optional] 
**plan_name** | **String** | The name of the Billing Plan. | [optional] 
**renewal_status** | **String** | The renewal status for the account. The acceptable values are:  * auto: The account automatically renews. * queued_for_close: Account will be closed at the billingPeriodEndDate. * queued_for_downgrade: Account will be downgraded at the billingPeriodEndDate. | [optional] 
**seat_discounts** | [**Array&lt;SeatDiscount&gt;**](SeatDiscount.md) |  A complex type that contains any seat discount information.  Values are: BeginSeatCount, EndSeatCount, and SeatDiscountPercent.   | [optional] 
**support_incident_fee** | **String** | The support incident fee charged for each support incident. | [optional] 
**support_plan_fee** | **String** | The support plan fee charged for this plan. | [optional] 


