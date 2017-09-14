# DocuSign_eSign::FolderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**completed_date_time** | **String** | Specifies the date and time this item was completed. | [optional] 
**created_date_time** | **String** | Indicates the date and time the item was created. | [optional] 
**custom_fields** | [**Array&lt;CustomFieldV2&gt;**](CustomFieldV2.md) | An optional array of strings that allows the sender to provide custom data about the recipient. This information is returned in the envelope status but otherwise not used by DocuSign. Each customField string can be a maximum of 100 characters. | [optional] 
**description** | **String** |  | [optional] 
**envelope_id** | **String** | The envelope ID of the envelope status that failed to post. | [optional] 
**envelope_uri** | **String** | Contains a URI for an endpoint that you can use to retrieve the envelope or envelopes. | [optional] 
**is21_cfr_part11** | **String** | When set to **true**, indicates that this module is enabled on the account. | [optional] 
**is_signature_provider_envelope** | **String** |  | [optional] 
**last_modified** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**owner_name** | **String** | Name of the envelope owner. | [optional] 
**page_count** | **Integer** |  | [optional] 
**password** | **String** |  | [optional] 
**sender_email** | **String** |  | [optional] 
**sender_name** | **String** | Name of the envelope sender. | [optional] 
**sent_date_time** | **String** | The date and time the envelope was sent. | [optional] 
**shared** | **String** | When set to **true**, this custom tab is shared. | [optional] 
**status** | **String** | Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. | [optional] 
**subject** | **String** |  | [optional] 
**template_id** | **String** | The unique identifier of the template. If this is not provided, DocuSign will generate a value.  | [optional] 
**uri** | **String** |  | [optional] 


