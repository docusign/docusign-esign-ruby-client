# DocuSign_eSign::BulkEnvelopeStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batch_id** | **String** | Specifies an identifier which can be used to retrieve a more detailed status of individual bulk recipient batches. | [optional] 
**batch_size** | **String** | The number of items returned in this response. | [optional] 
**bulk_envelopes** | [**Array&lt;BulkEnvelope&gt;**](BulkEnvelope.md) | Reserved: TBD | [optional] 
**bulk_envelopes_batch_uri** | **String** | Reserved: TBD | [optional] 
**end_position** | **String** | The last position in the result set.  | [optional] 
**failed** | **String** | The number of entries with a status of failed.  | [optional] 
**next_uri** | **String** | The URI to the next chunk of records based on the search request. If the endPosition is the entire results of the search, this is null.  | [optional] 
**previous_uri** | **String** | The postal code for the billing address. | [optional] 
**queued** | **String** | The number of entries with a status of queued.  | [optional] 
**result_set_size** | **String** | The number of results returned in this response.  | [optional] 
**sent** | **String** | The number of entries with a status of sent. | [optional] 
**start_position** | **String** | Starting position of the current result set. | [optional] 
**submitted_date** | **String** |  | [optional] 
**total_set_size** | **String** | The total number of items available in the result set. This will always be greater than or equal to the value of the property returning the results in the in the response. | [optional] 


