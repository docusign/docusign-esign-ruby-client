# DocuSign_eSign::AccountSharedAccess

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | The account ID associated with the envelope. | [optional] 
**end_position** | **String** | The last position in the result set.  | [optional] 
**error_details** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**next_uri** | **String** | The URI to the next chunk of records based on the search request. If the endPosition is the entire results of the search, this is null.  | [optional] 
**previous_uri** | **String** | The postal code for the billing address. | [optional] 
**result_set_size** | **String** | The number of results returned in this response.  | [optional] 
**shared_access** | [**Array&lt;MemberSharedItems&gt;**](MemberSharedItems.md) | A complex type containing the shared access information to an envelope for the users specified in the request. | [optional] 
**start_position** | **String** | Starting position of the current result set. | [optional] 
**total_set_size** | **String** | The total number of items available in the result set. This will always be greater than or equal to the value of the property returning the results in the in the response. | [optional] 


