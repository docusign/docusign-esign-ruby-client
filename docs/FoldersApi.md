# DocuSign_eSign::FoldersApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](FoldersApi.md#list) | **GET** /v2/accounts/{accountId}/folders | Gets a list of the folders for the account.
[**list_items**](FoldersApi.md#list_items) | **GET** /v2/accounts/{accountId}/folders/{folderId} | Gets a list of the envelopes in the specified folder.
[**move_envelopes**](FoldersApi.md#move_envelopes) | **PUT** /v2/accounts/{accountId}/folders/{folderId} | Moves an envelope from its current folder to the specified folder.
[**search**](FoldersApi.md#search) | **GET** /v2/accounts/{accountId}/search_folders/{searchFolderId} | Gets a list of envelopes in folders matching the specified criteria.


# **list**
> FoldersResponse list(account_id, opts)

Gets a list of the folders for the account.

Retrieves a list of the folders for the account, including the folder hierarchy. You can specify whether to return just the template folder or template folder and normal folders by setting the `template` query string parameter.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::FoldersApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  include: "include_example", # String | 
  include_items: "include_items_example", # String | 
  start_position: "start_position_example", # String | 
  template: "template_example", # String | Specifies the items that are returned. Valid values are:   * include - The folder list will return normal folders plus template folders.  * only - Only the list of template folders are returned.
  user_filter: "user_filter_example" # String | 
}

begin
  #Gets a list of the folders for the account.
  result = api_instance.list(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling FoldersApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **include** | **String**|  | [optional] 
 **include_items** | **String**|  | [optional] 
 **start_position** | **String**|  | [optional] 
 **template** | **String**| Specifies the items that are returned. Valid values are:   * include - The folder list will return normal folders plus template folders.  * only - Only the list of template folders are returned. | [optional] 
 **user_filter** | **String**|  | [optional] 

### Return type

[**FoldersResponse**](FoldersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_items**
> FolderItemsResponse list_items(account_id, folder_id, opts)

Gets a list of the envelopes in the specified folder.

Retrieves a list of the envelopes in the specified folder. You can narrow the query by specifying search criteria in the query string parameters.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::FoldersApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

folder_id = "folder_id_example" # String | The ID of the folder being accessed.

opts = { 
  from_date: "from_date_example", # String |  Only return items on or after this date. If no value is provided, the default search is the previous 30 days. 
  include_items: "include_items_example", # String | 
  owner_email: "owner_email_example", # String |  The email of the folder owner. 
  owner_name: "owner_name_example", # String |  The name of the folder owner. 
  search_text: "search_text_example", # String |  The search text used to search the items of the envelope. The search looks at recipient names and emails, envelope custom fields, sender name, and subject. 
  start_position: "start_position_example", # String | The position of the folder items to return. This is used for repeated calls, when the number of envelopes returned is too much for one return (calls return 100 envelopes at a time). The default value is 0.
  status: "status_example", # String | The current status of the envelope. If no value is provided, the default search is all/any status.
  to_date: "to_date_example" # String | Only return items up to this date. If no value is provided, the default search is to the current date.
}

begin
  #Gets a list of the envelopes in the specified folder.
  result = api_instance.list_items(account_id, folder_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling FoldersApi->list_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **folder_id** | **String**| The ID of the folder being accessed. | 
 **from_date** | **String**|  Only return items on or after this date. If no value is provided, the default search is the previous 30 days.  | [optional] 
 **include_items** | **String**|  | [optional] 
 **owner_email** | **String**|  The email of the folder owner.  | [optional] 
 **owner_name** | **String**|  The name of the folder owner.  | [optional] 
 **search_text** | **String**|  The search text used to search the items of the envelope. The search looks at recipient names and emails, envelope custom fields, sender name, and subject.  | [optional] 
 **start_position** | **String**| The position of the folder items to return. This is used for repeated calls, when the number of envelopes returned is too much for one return (calls return 100 envelopes at a time). The default value is 0. | [optional] 
 **status** | **String**| The current status of the envelope. If no value is provided, the default search is all/any status. | [optional] 
 **to_date** | **String**| Only return items up to this date. If no value is provided, the default search is to the current date. | [optional] 

### Return type

[**FolderItemsResponse**](FolderItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **move_envelopes**
> FoldersResponse move_envelopes(account_id, folder_id, opts)

Moves an envelope from its current folder to the specified folder.

Moves envelopes to the specified folder.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::FoldersApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

folder_id = "folder_id_example" # String | The ID of the folder being accessed.

opts = { 
  folders_request: DocuSign_eSign::FoldersRequest.new # FoldersRequest | 
}

begin
  #Moves an envelope from its current folder to the specified folder.
  result = api_instance.move_envelopes(account_id, folder_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling FoldersApi->move_envelopes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **folder_id** | **String**| The ID of the folder being accessed. | 
 **folders_request** | [**FoldersRequest**](FoldersRequest.md)|  | [optional] 

### Return type

[**FoldersResponse**](FoldersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search**
> FolderItemResponse search(account_id, search_folder_id, opts)

Gets a list of envelopes in folders matching the specified criteria.

Retrieves a list of envelopes that match the criteria specified in the query.  If the user ID of the user making the call is the same as the user ID for any returned recipient, then the userId property is added to the returned information for those recipients.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::FoldersApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

search_folder_id = "search_folder_id_example" # String | Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature.

opts = { 
  all: "all_example", # String | Specifies that all envelopes that match the criteria are returned.
  count: "count_example", # String | Specifies the number of records returned in the cache. The number must be greater than 0 and less than or equal to 100.
  from_date: "from_date_example", # String | Specifies the start of the date range to return. If no value is provided, the default search is the previous 30 days.
  include_recipients: "include_recipients_example", # String | When set to **true**, the recipient information is returned in the response.
  order: "order_example", # String | Specifies the order in which the list is returned. Valid values are: `asc` for ascending order, and `desc` for descending order.
  order_by: "order_by_example", # String | Specifies the property used to sort the list. Valid values are: `action_required`, `created`, `completed`, `sent`, `signer_list`, `status`, or `subject`.
  start_position: "start_position_example", # String | Specifies the the starting location in the result set of the items that are returned.
  to_date: "to_date_example" # String | Specifies the end of the date range to return.
}

begin
  #Gets a list of envelopes in folders matching the specified criteria.
  result = api_instance.search(account_id, search_folder_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling FoldersApi->search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **search_folder_id** | **String**| Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature. | 
 **all** | **String**| Specifies that all envelopes that match the criteria are returned. | [optional] 
 **count** | **String**| Specifies the number of records returned in the cache. The number must be greater than 0 and less than or equal to 100. | [optional] 
 **from_date** | **String**| Specifies the start of the date range to return. If no value is provided, the default search is the previous 30 days. | [optional] 
 **include_recipients** | **String**| When set to **true**, the recipient information is returned in the response. | [optional] 
 **order** | **String**| Specifies the order in which the list is returned. Valid values are: &#x60;asc&#x60; for ascending order, and &#x60;desc&#x60; for descending order. | [optional] 
 **order_by** | **String**| Specifies the property used to sort the list. Valid values are: &#x60;action_required&#x60;, &#x60;created&#x60;, &#x60;completed&#x60;, &#x60;sent&#x60;, &#x60;signer_list&#x60;, &#x60;status&#x60;, or &#x60;subject&#x60;. | [optional] 
 **start_position** | **String**| Specifies the the starting location in the result set of the items that are returned. | [optional] 
 **to_date** | **String**| Specifies the end of the date range to return. | [optional] 

### Return type

[**FolderItemResponse**](FolderItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



