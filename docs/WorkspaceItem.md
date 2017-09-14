# DocuSign_eSign::WorkspaceItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**caller_authorization** | [**WorkspaceUserAuthorization**](WorkspaceUserAuthorization.md) |  | [optional] 
**content_type** | **String** |  | [optional] 
**created** | **String** | The UTC DateTime when the workspace item was created. | [optional] 
**created_by_id** | **String** |  | [optional] 
**created_by_information** | [**WorkspaceUser**](WorkspaceUser.md) |  | [optional] 
**extension** | **String** |  | [optional] 
**file_size** | **String** |  | [optional] 
**file_uri** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**is_public** | **String** |  If true, this supersedes need for bit mask permission with workspaceUserAuthorization | [optional] 
**last_modified** | **String** |  | [optional] 
**last_modified_by_id** | **String** | Utc date and time the comment was last updated (can only be done by creator) | [optional] 
**last_modified_by_information** | [**WorkspaceUser**](WorkspaceUser.md) |  | [optional] 
**name** | **String** | A simple string description of the item, such as a file name or a folder name. | [optional] 
**page_count** | **String** |  | [optional] 
**parent_folder_id** | **String** | The ID of the parent folder. This is the GUID of the parent folder, or the special value &#39;root&#39; for the root folder. | [optional] 
**parent_folder_uri** | **String** |  | [optional] 
**type** | **String** | The type of the workspace item. Valid values are file, folder. | [optional] 
**uri** | **String** |  | [optional] 


