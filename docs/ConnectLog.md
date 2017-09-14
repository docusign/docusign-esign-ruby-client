# DocuSign_eSign::ConnectLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | The account ID associated with the envelope. | [optional] 
**config_url** | **String** | The web address of the listener or Retrieving Service end point for Connect. | [optional] 
**connect_debug_log** | [**Array&lt;ConnectDebugLog&gt;**](ConnectDebugLog.md) | A complex element containing information about the Connect configuration, error details, date/time, description and payload.  This is only included in the response if the query additional_info&#x3D;true is used. | [optional] 
**connect_id** | **String** | The identifier for the Connect configuration that failed. If an account has multiple Connect configurations, this value is used to look up the Connect configuration for the failed post. | [optional] 
**created** | **String** | The date and time the entry was created. | [optional] 
**email** | **String** | The email that sent the envelope. | [optional] 
**envelope_id** | **String** | The envelope ID of the envelope status that failed to post. | [optional] 
**error** | **String** | The error that caused the Connect post to fail. | [optional] 
**failure_id** | **String** | The failure log ID for the failure. | [optional] 
**failure_uri** | **String** | The URI for the failure. | [optional] 
**last_try** | **String** | The date and time the last attempt to post. | [optional] 
**log_id** | **String** | The Connect log ID for the entry. | [optional] 
**log_uri** | **String** | The URI for the log item. | [optional] 
**retry_count** | **String** | The number of times the Connect post has been retried. | [optional] 
**retry_uri** | **String** | The UEI to retry to publish the Connect failure. | [optional] 
**status** | **String** | The new envelope status for the failed Connect post. The possible values are: Any, Voided, Created, Deleted, Sent, Delivered, Signed, Completed, Declined, TimedOut, Template, or Processing. | [optional] 
**subject** | **String** | The envelope subject. | [optional] 
**user_name** | **String** | The name of the envelope sender. | [optional] 


