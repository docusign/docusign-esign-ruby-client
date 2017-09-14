# DocuSign_eSign::PowerFormSendersResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end_position** | **String** | The last position in the result set.  | [optional] 
**next_uri** | **String** | The URI to the next chunk of records based on the search request. If the endPosition is the entire results of the search, this is null.  | [optional] 
**power_form_senders** | [**Array&lt;UserInfo&gt;**](UserInfo.md) |  | [optional] 
**previous_uri** | **String** | The postal code for the billing address. | [optional] 
**result_set_size** | **String** | The number of results returned in this response.  | [optional] 
**start_position** | **String** | Starting position of the current result set. | [optional] 
**total_set_size** | **String** | The total number of items available in the result set. This will always be greater than or equal to the value of the property returning the results in the in the response. | [optional] 


