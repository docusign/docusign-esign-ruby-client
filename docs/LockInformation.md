# DocuSign_eSign::LockInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_details** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**lock_duration_in_seconds** | **String** | Sets the time, in seconds, until the lock expires when there is no activity on the envelope.  If no value is entered, then the default value of 300 seconds is used. The maximum value is 1,800 seconds.  The lock duration can be extended.  | [optional] 
**locked_by_app** | **String** | Specifies the friendly name of  the application that is locking the envelope. | [optional] 
**locked_by_user** | [**UserInfo**](UserInfo.md) |  | [optional] 
**locked_until_date_time** | **String** | The datetime until the envelope lock expires. | [optional] 
**lock_token** | **String** | A unique identifier provided to the owner of the envelope lock.   Used to prove ownership of the lock. | [optional] 
**lock_type** | **String** | The type of envelope lock.  Currently \&quot;edit\&quot; is the only supported type. | [optional] 
**use_scratch_pad** | **String** | Reserved for future use.  Indicates whether a scratchpad is used for editing information.   | [optional] 


