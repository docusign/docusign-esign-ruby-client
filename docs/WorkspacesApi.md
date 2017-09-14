# DocuSign_eSign::WorkspacesApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_workspace**](WorkspacesApi.md#create_workspace) | **POST** /v2/accounts/{accountId}/workspaces | Create a Workspace
[**create_workspace_file**](WorkspacesApi.md#create_workspace_file) | **POST** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files | Creates a workspace file.
[**delete_workspace**](WorkspacesApi.md#delete_workspace) | **DELETE** /v2/accounts/{accountId}/workspaces/{workspaceId} | Delete Workspace
[**delete_workspace_folder_items**](WorkspacesApi.md#delete_workspace_folder_items) | **DELETE** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId} | Deletes workspace one or more specific files/folders from the given folder or root.
[**get_workspace**](WorkspacesApi.md#get_workspace) | **GET** /v2/accounts/{accountId}/workspaces/{workspaceId} | Get Workspace
[**get_workspace_file**](WorkspacesApi.md#get_workspace_file) | **GET** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId} | Get Workspace File
[**list_workspace_file_pages**](WorkspacesApi.md#list_workspace_file_pages) | **GET** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}/pages | List File Pages
[**list_workspace_folder_items**](WorkspacesApi.md#list_workspace_folder_items) | **GET** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId} | List Workspace Folder Contents
[**list_workspaces**](WorkspacesApi.md#list_workspaces) | **GET** /v2/accounts/{accountId}/workspaces | List Workspaces
[**update_workspace**](WorkspacesApi.md#update_workspace) | **PUT** /v2/accounts/{accountId}/workspaces/{workspaceId} | Update Workspace
[**update_workspace_file**](WorkspacesApi.md#update_workspace_file) | **PUT** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId} | Update Workspace File Metadata


# **create_workspace**
> Workspace create_workspace(account_id, opts)

Create a Workspace

Creates a new workspace.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  workspace: DocuSign_eSign::Workspace.new # Workspace | 
}

begin
  #Create a Workspace
  result = api_instance.create_workspace(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->create_workspace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **workspace** | [**Workspace**](Workspace.md)|  | [optional] 

### Return type

[**Workspace**](Workspace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_workspace_file**
> WorkspaceItem create_workspace_file(account_id, folder_id, workspace_id)

Creates a workspace file.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

folder_id = "folder_id_example" # String | The ID of the folder being accessed.

workspace_id = "workspace_id_example" # String | Specifies the workspace ID GUID.


begin
  #Creates a workspace file.
  result = api_instance.create_workspace_file(account_id, folder_id, workspace_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->create_workspace_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **folder_id** | **String**| The ID of the folder being accessed. | 
 **workspace_id** | **String**| Specifies the workspace ID GUID. | 

### Return type

[**WorkspaceItem**](WorkspaceItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_workspace**
> Workspace delete_workspace(account_id, workspace_id)

Delete Workspace

Deletes an existing workspace (logically).

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

workspace_id = "workspace_id_example" # String | Specifies the workspace ID GUID.


begin
  #Delete Workspace
  result = api_instance.delete_workspace(account_id, workspace_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->delete_workspace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **workspace_id** | **String**| Specifies the workspace ID GUID. | 

### Return type

[**Workspace**](Workspace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_workspace_folder_items**
> delete_workspace_folder_items(account_id, folder_id, workspace_id, opts)

Deletes workspace one or more specific files/folders from the given folder or root.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

folder_id = "folder_id_example" # String | The ID of the folder being accessed.

workspace_id = "workspace_id_example" # String | Specifies the workspace ID GUID.

opts = { 
  workspace_item_list: DocuSign_eSign::WorkspaceItemList.new # WorkspaceItemList | 
}

begin
  #Deletes workspace one or more specific files/folders from the given folder or root.
  api_instance.delete_workspace_folder_items(account_id, folder_id, workspace_id, opts)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->delete_workspace_folder_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **folder_id** | **String**| The ID of the folder being accessed. | 
 **workspace_id** | **String**| Specifies the workspace ID GUID. | 
 **workspace_item_list** | [**WorkspaceItemList**](WorkspaceItemList.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_workspace**
> Workspace get_workspace(account_id, workspace_id)

Get Workspace

Retrives properties about a workspace given a unique workspaceId. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

workspace_id = "workspace_id_example" # String | Specifies the workspace ID GUID.


begin
  #Get Workspace
  result = api_instance.get_workspace(account_id, workspace_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->get_workspace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **workspace_id** | **String**| Specifies the workspace ID GUID. | 

### Return type

[**Workspace**](Workspace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_workspace_file**
> get_workspace_file(account_id, file_id, folder_id, workspace_id, opts)

Get Workspace File

Retrieves a workspace file (the binary).

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

file_id = "file_id_example" # String | Specifies the room file ID GUID.

folder_id = "folder_id_example" # String | The ID of the folder being accessed.

workspace_id = "workspace_id_example" # String | Specifies the workspace ID GUID.

opts = { 
  is_download: "is_download_example", # String | When set to **true**, the Content-Disposition header is set in the response. The value of the header provides the filename of the file. Default is **false**.
  pdf_version: "pdf_version_example" # String | When set to **true** the file returned as a PDF.
}

begin
  #Get Workspace File
  api_instance.get_workspace_file(account_id, file_id, folder_id, workspace_id, opts)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->get_workspace_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **file_id** | **String**| Specifies the room file ID GUID. | 
 **folder_id** | **String**| The ID of the folder being accessed. | 
 **workspace_id** | **String**| Specifies the workspace ID GUID. | 
 **is_download** | **String**| When set to **true**, the Content-Disposition header is set in the response. The value of the header provides the filename of the file. Default is **false**. | [optional] 
 **pdf_version** | **String**| When set to **true** the file returned as a PDF. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_workspace_file_pages**
> PageImages list_workspace_file_pages(account_id, file_id, folder_id, workspace_id, opts)

List File Pages

Retrieves a workspace file as rasterized pages.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

file_id = "file_id_example" # String | Specifies the room file ID GUID.

folder_id = "folder_id_example" # String | The ID of the folder being accessed.

workspace_id = "workspace_id_example" # String | Specifies the workspace ID GUID.

opts = { 
  count: "count_example", # String | The maximum number of results to be returned by this request.
  dpi: "dpi_example", # String | Number of dots per inch for the resulting image. The default if not used is 94. The range is 1-310.
  max_height: "max_height_example", # String | Sets the maximum height (in pixels) of the returned image.
  max_width: "max_width_example", # String | Sets the maximum width (in pixels) of the returned image.
  start_position: "start_position_example" # String | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image.
}

begin
  #List File Pages
  result = api_instance.list_workspace_file_pages(account_id, file_id, folder_id, workspace_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->list_workspace_file_pages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **file_id** | **String**| Specifies the room file ID GUID. | 
 **folder_id** | **String**| The ID of the folder being accessed. | 
 **workspace_id** | **String**| Specifies the workspace ID GUID. | 
 **count** | **String**| The maximum number of results to be returned by this request. | [optional] 
 **dpi** | **String**| Number of dots per inch for the resulting image. The default if not used is 94. The range is 1-310. | [optional] 
 **max_height** | **String**| Sets the maximum height (in pixels) of the returned image. | [optional] 
 **max_width** | **String**| Sets the maximum width (in pixels) of the returned image. | [optional] 
 **start_position** | **String**| The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. | [optional] 

### Return type

[**PageImages**](PageImages.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_workspace_folder_items**
> WorkspaceFolderContents list_workspace_folder_items(account_id, folder_id, workspace_id, opts)

List Workspace Folder Contents

Retrieves workspace folder contents, which can include sub folders and files.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

folder_id = "folder_id_example" # String | The ID of the folder being accessed.

workspace_id = "workspace_id_example" # String | Specifies the workspace ID GUID.

opts = { 
  count: "count_example", # String | The maximum number of results to be returned by this request.
  include_files: "include_files_example", # String | When set to **true**, file information is returned in the response along with folder information. The default is **false**.
  include_sub_folders: "include_sub_folders_example", # String | When set to **true**, information about the sub-folders of the current folder is returned. The default is **false**.
  include_thumbnails: "include_thumbnails_example", # String | When set to **true**, thumbnails are returned as part of the response.  The default is **false**.
  include_user_detail: "include_user_detail_example", # String | Set to **true** to return extended details about the user. The default is **false**.
  start_position: "start_position_example", # String | The position within the total result set from which to start returning values.
  workspace_user_id: "workspace_user_id_example" # String | If set, then the results are filtered to those associated with the specified userId.
}

begin
  #List Workspace Folder Contents
  result = api_instance.list_workspace_folder_items(account_id, folder_id, workspace_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->list_workspace_folder_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **folder_id** | **String**| The ID of the folder being accessed. | 
 **workspace_id** | **String**| Specifies the workspace ID GUID. | 
 **count** | **String**| The maximum number of results to be returned by this request. | [optional] 
 **include_files** | **String**| When set to **true**, file information is returned in the response along with folder information. The default is **false**. | [optional] 
 **include_sub_folders** | **String**| When set to **true**, information about the sub-folders of the current folder is returned. The default is **false**. | [optional] 
 **include_thumbnails** | **String**| When set to **true**, thumbnails are returned as part of the response.  The default is **false**. | [optional] 
 **include_user_detail** | **String**| Set to **true** to return extended details about the user. The default is **false**. | [optional] 
 **start_position** | **String**| The position within the total result set from which to start returning values. | [optional] 
 **workspace_user_id** | **String**| If set, then the results are filtered to those associated with the specified userId. | [optional] 

### Return type

[**WorkspaceFolderContents**](WorkspaceFolderContents.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_workspaces**
> WorkspaceList list_workspaces(account_id)

List Workspaces

Gets information about the Workspaces that have been created.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.


begin
  #List Workspaces
  result = api_instance.list_workspaces(account_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->list_workspaces: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 

### Return type

[**WorkspaceList**](WorkspaceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_workspace**
> Workspace update_workspace(account_id, workspace_id, opts)

Update Workspace

Updates information about a specific workspace.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

workspace_id = "workspace_id_example" # String | Specifies the workspace ID GUID.

opts = { 
  workspace: DocuSign_eSign::Workspace.new # Workspace | 
}

begin
  #Update Workspace
  result = api_instance.update_workspace(account_id, workspace_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->update_workspace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **workspace_id** | **String**| Specifies the workspace ID GUID. | 
 **workspace** | [**Workspace**](Workspace.md)|  | [optional] 

### Return type

[**Workspace**](Workspace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_workspace_file**
> WorkspaceItem update_workspace_file(account_id, file_id, folder_id, workspace_id)

Update Workspace File Metadata

Updates workspace item metadata for one or more specific files/folders.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::WorkspacesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

file_id = "file_id_example" # String | Specifies the room file ID GUID.

folder_id = "folder_id_example" # String | The ID of the folder being accessed.

workspace_id = "workspace_id_example" # String | Specifies the workspace ID GUID.


begin
  #Update Workspace File Metadata
  result = api_instance.update_workspace_file(account_id, file_id, folder_id, workspace_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling WorkspacesApi->update_workspace_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **file_id** | **String**| Specifies the room file ID GUID. | 
 **folder_id** | **String**| The ID of the folder being accessed. | 
 **workspace_id** | **String**| Specifies the workspace ID GUID. | 

### Return type

[**WorkspaceItem**](WorkspaceItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



