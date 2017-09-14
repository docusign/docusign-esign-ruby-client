# DocuSign_eSign::BillingCharge

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed_quantity** | **String** | Reserved: TBD | [optional] 
**blocked** | **String** | Reserved: TBD | [optional] 
**charge_name** | **String** | Provides information on what services the charge item is for.  The following table provides a description of the different chargeName values available at this time.  | chargeName | Description | | --- | --- | | id_check | ID Check Charge | | in_person_signing | In Person Signing charge | | envelopes Included | Sent Envelopes for the account | | age_verify | Age verification check | | ofac | OFAC Check | | id_confirm | ID confirmation check | | student_authentication | STAN PIN authentication check | | wet_sign_fax | Pages for returning signed documents by fax | | attachment_fax | Pages for returning attachments by fax | | phone_authentication | Phone authentication charge | | powerforms | PowerForm envelopes sent | | signer_payments | Payment processing charge | | outbound_fax | Send by fax charge | | bulk_recipient_envelopes | Bulk Recipient Envelopes sent | | sms_authentications | SMS authentication charge | | saml_authentications | SAML authentication charge | | express_signer_certificate | DocuSign Express Certificate charge | | personal_signer_certificate | Personal Signer Certificate charge | | safe_certificate | SAFE BioPharma Signer Certificate charge | | seats | Included active seats charge | | open_trust_certificate | OpenTrust Signer Certificate charge | | [optional] 
**charge_type** | **String** | Reserved: TBD | [optional] 
**charge_unit_of_measure** | **String** | Reserved: TBD | [optional] 
**discounts** | [**Array&lt;BillingDiscount&gt;**](BillingDiscount.md) |  | [optional] 
**first_effective_date** | **String** |  | [optional] 
**included_quantity** | **String** |  | [optional] 
**incremental_quantity** | **String** | Reserved: TBD | [optional] 
**last_effective_date** | **String** |  | [optional] 
**prices** | [**Array&lt;BillingPrice&gt;**](BillingPrice.md) |  | [optional] 
**unit_price** | **String** | Reserved: TBD | [optional] 
**used_quantity** | **String** |  | [optional] 


