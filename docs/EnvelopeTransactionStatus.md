# DocuSign_eSign::EnvelopeTransactionStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelope_id** | **String** | The envelope ID of the envelope status that failed to post. | [optional] 
**error_details** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**status** | **String** | Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. | [optional] 
**transaction_id** | **String** |  Used to identify an envelope. The id is a sender-generated value and is valid in the DocuSign system for 7 days. It is recommended that a transaction ID is used for offline signing to ensure that an envelope is not sent multiple times. The &#x60;transactionId&#x60; property can be used determine an envelope&#39;s status (i.e. was it created or not) in cases where the internet connection was lost before the envelope status was returned. | [optional] 


