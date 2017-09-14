# DocuSign_eSign::PowerForm

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_date_time** | **String** | Indicates the date and time the item was created. | [optional] 
**email_body** | **String** | Specifies the email body of the message sent to the recipient.   Maximum length: 10000 characters.  | [optional] 
**email_subject** | **String** | Specifies the subject of the email that is sent to all recipients.  See [ML:Template Email Subject Merge Fields] for information about adding merge field information to the email subject. | [optional] 
**envelopes** | [**Array&lt;Envelope&gt;**](Envelope.md) |  | [optional] 
**error_details** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**instructions** | **String** |  | [optional] 
**is_active** | **String** |  | [optional] 
**last_used** | **String** |  | [optional] 
**limit_use_interval** | **String** |  | [optional] 
**limit_use_interval_enabled** | **String** |  | [optional] 
**limit_use_interval_units** | **String** |  | [optional] 
**max_use_enabled** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**power_form_id** | **String** |  | [optional] 
**power_form_url** | **String** |  | [optional] 
**recipients** | [**Array&lt;PowerFormRecipient&gt;**](PowerFormRecipient.md) | An array of powerform recipients. | [optional] 
**sender_name** | **String** |  | [optional] 
**sender_user_id** | **String** |  | [optional] 
**signing_mode** | **String** |  | [optional] 
**template_id** | **String** | The unique identifier of the template. If this is not provided, DocuSign will generate a value.  | [optional] 
**template_name** | **String** |  | [optional] 
**times_used** | **String** |  | [optional] 
**uri** | **String** |  | [optional] 
**uses_remaining** | **String** |  | [optional] 


