# DocuSign_eSign::EnvelopeFormData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email_subject** | **String** | Specifies the subject of the email that is sent to all recipients.  See [ML:Template Email Subject Merge Fields] for information about adding merge field information to the email subject. | [optional] 
**envelope_id** | **String** | The envelope ID of the envelope status that failed to post. | [optional] 
**form_data** | [**Array&lt;NameValue&gt;**](NameValue.md) |  | [optional] 
**recipient_form_data** | [**Array&lt;RecipientFormData&gt;**](RecipientFormData.md) |  | [optional] 
**sent_date_time** | **String** | The date and time the envelope was sent. | [optional] 
**status** | **String** | Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. | [optional] 


