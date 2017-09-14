# DocuSign_eSign::CloudStorageApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_provider**](CloudStorageApi.md#create_provider) | **POST** /v2/accounts/{accountId}/users/{userId}/cloud_storage | Configures the redirect URL information  for one or more cloud storage providers for the specified user.
[**delete_provider**](CloudStorageApi.md#delete_provider) | **DELETE** /v2/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId} | Deletes the user authentication information for the specified cloud storage provider.
[**delete_providers**](CloudStorageApi.md#delete_providers) | **DELETE** /v2/accounts/{accountId}/users/{userId}/cloud_storage | Deletes the user authentication information for one or more cloud storage providers.
[**get_provider**](CloudStorageApi.md#get_provider) | **GET** /v2/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId} | Gets the specified Cloud Storage Provider configuration for the User.
[**list**](CloudStorageApi.md#list) | **GET** /v2/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}/folders/{folderId} | Gets a list of all the items from the specified cloud storage provider.
[**list_folders**](CloudStorageApi.md#list_folders) | **GET** /v2/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}/folders | Retrieves a list of all the items in a specified folder from the specified cloud storage provider.
[**list_providers**](CloudStorageApi.md#list_providers) | **GET** /v2/accounts/{accountId}/users/{userId}/cloud_storage | Get the Cloud Storage Provider configuration for the specified user.


# **create_provider**
> CloudStorageProviders create_provider(account_id, user_id, opts)

Configures the redirect URL information  for one or more cloud storage providers for the specified user.

Configures the redirect URL information  for one or more cloud storage providers for the specified user. The redirect URL is added to the authentication URL to complete the return route.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CloudStorageApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

user_id = "user_id_example" # String | The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

opts = { 
  cloud_storage_providers: DocuSign_eSign::CloudStorageProviders.new # CloudStorageProviders | 
}

begin
  #Configures the redirect URL information  for one or more cloud storage providers for the specified user.
  result = api_instance.create_provider(account_id, user_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CloudStorageApi->create_provider: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **user_id** | **String**| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **cloud_storage_providers** | [**CloudStorageProviders**](CloudStorageProviders.md)|  | [optional] 

### Return type

[**CloudStorageProviders**](CloudStorageProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_provider**
> CloudStorageProviders delete_provider(account_id, service_id, user_id)

Deletes the user authentication information for the specified cloud storage provider.

Deletes the user authentication information for the specified cloud storage provider. The next time the user tries to access the cloud storage provider, they must pass normal authentication for this cloud storage provider.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CloudStorageApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

service_id = "service_id_example" # String | The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").

user_id = "user_id_example" # String | The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.


begin
  #Deletes the user authentication information for the specified cloud storage provider.
  result = api_instance.delete_provider(account_id, service_id, user_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CloudStorageApi->delete_provider: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **service_id** | **String**| The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;). | 
 **user_id** | **String**| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**CloudStorageProviders**](CloudStorageProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_providers**
> CloudStorageProviders delete_providers(account_id, user_id, opts)

Deletes the user authentication information for one or more cloud storage providers.

Deletes the user authentication information for one or more cloud storage providers. The next time the user tries to access the cloud storage provider, they must pass normal authentication.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CloudStorageApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

user_id = "user_id_example" # String | The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

opts = { 
  cloud_storage_providers: DocuSign_eSign::CloudStorageProviders.new # CloudStorageProviders | 
}

begin
  #Deletes the user authentication information for one or more cloud storage providers.
  result = api_instance.delete_providers(account_id, user_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CloudStorageApi->delete_providers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **user_id** | **String**| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **cloud_storage_providers** | [**CloudStorageProviders**](CloudStorageProviders.md)|  | [optional] 

### Return type

[**CloudStorageProviders**](CloudStorageProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_provider**
> CloudStorageProviders get_provider(account_id, service_id, user_id, opts)

Gets the specified Cloud Storage Provider configuration for the User.

Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CloudStorageApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

service_id = "service_id_example" # String | The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").

user_id = "user_id_example" # String | The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

opts = { 
  redirect_url: "redirect_url_example" # String |  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.  
}

begin
  #Gets the specified Cloud Storage Provider configuration for the User.
  result = api_instance.get_provider(account_id, service_id, user_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CloudStorageApi->get_provider: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **service_id** | **String**| The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;). | 
 **user_id** | **String**| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **redirect_url** | **String**|  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.   | [optional] 

### Return type

[**CloudStorageProviders**](CloudStorageProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> ExternalFolder list(account_id, folder_id, service_id, user_id, opts)

Gets a list of all the items from the specified cloud storage provider.

Retrieves a list of all the items in all  the folders associated with the user from the specified cloud storage provider. You can limit the scope of the returned items by providing a comma separated list of folder IDs in the request.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CloudStorageApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

folder_id = "folder_id_example" # String | The ID of the folder being accessed.

service_id = "service_id_example" # String | The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").

user_id = "user_id_example" # String | The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

opts = { 
  cloud_storage_folder_path: "cloud_storage_folder_path_example", # String | 
  count: "count_example", # String | An optional value that sets how many items are included in the response.   The default setting for this is 25. 
  order: "order_example", # String | An optional value that sets the direction order used to sort the item list.   Valid values are:   * asc = ascending sort order * desc = descending sort order 
  order_by: "order_by_example", # String | An optional value that sets the file attribute used to sort the item list.   Valid values are:   * modified * name  
  search_text: "search_text_example", # String | 
  start_position: "start_position_example" # String | Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.  
}

begin
  #Gets a list of all the items from the specified cloud storage provider.
  result = api_instance.list(account_id, folder_id, service_id, user_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CloudStorageApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **folder_id** | **String**| The ID of the folder being accessed. | 
 **service_id** | **String**| The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;). | 
 **user_id** | **String**| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **cloud_storage_folder_path** | **String**|  | [optional] 
 **count** | **String**| An optional value that sets how many items are included in the response.   The default setting for this is 25.  | [optional] 
 **order** | **String**| An optional value that sets the direction order used to sort the item list.   Valid values are:   * asc &#x3D; ascending sort order * desc &#x3D; descending sort order  | [optional] 
 **order_by** | **String**| An optional value that sets the file attribute used to sort the item list.   Valid values are:   * modified * name   | [optional] 
 **search_text** | **String**|  | [optional] 
 **start_position** | **String**| Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.   | [optional] 

### Return type

[**ExternalFolder**](ExternalFolder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_folders**
> ExternalFolder list_folders(account_id, service_id, user_id, opts)

Retrieves a list of all the items in a specified folder from the specified cloud storage provider.

Retrieves a list of all the items in a specified folder from the specified cloud storage provider. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CloudStorageApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

service_id = "service_id_example" # String | The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").

user_id = "user_id_example" # String | The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

opts = { 
  cloud_storage_folder_path: "cloud_storage_folder_path_example", # String | A comma separated list of folder IDs included in the request. 
  count: "count_example", # String | An optional value that sets how many items are included in the response.   The default setting for this is 25. 
  order: "order_example", # String | An optional value that sets the direction order used to sort the item list.   Valid values are:   * asc = ascending sort order * desc = descending sort order 
  order_by: "order_by_example", # String | An optional value that sets the file attribute used to sort the item list.   Valid values are:   * modified * name  
  search_text: "search_text_example", # String | 
  start_position: "start_position_example" # String | Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.  
}

begin
  #Retrieves a list of all the items in a specified folder from the specified cloud storage provider.
  result = api_instance.list_folders(account_id, service_id, user_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CloudStorageApi->list_folders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **service_id** | **String**| The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;). | 
 **user_id** | **String**| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **cloud_storage_folder_path** | **String**| A comma separated list of folder IDs included in the request.  | [optional] 
 **count** | **String**| An optional value that sets how many items are included in the response.   The default setting for this is 25.  | [optional] 
 **order** | **String**| An optional value that sets the direction order used to sort the item list.   Valid values are:   * asc &#x3D; ascending sort order * desc &#x3D; descending sort order  | [optional] 
 **order_by** | **String**| An optional value that sets the file attribute used to sort the item list.   Valid values are:   * modified * name   | [optional] 
 **search_text** | **String**|  | [optional] 
 **start_position** | **String**| Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.   | [optional] 

### Return type

[**ExternalFolder**](ExternalFolder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_providers**
> CloudStorageProviders list_providers(account_id, user_id, opts)

Get the Cloud Storage Provider configuration for the specified user.

Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.  The {serviceId} parameter can be either the service name or serviceId.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CloudStorageApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

user_id = "user_id_example" # String | The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

opts = { 
  redirect_url: "redirect_url_example" # String |  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.  
}

begin
  #Get the Cloud Storage Provider configuration for the specified user.
  result = api_instance.list_providers(account_id, user_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CloudStorageApi->list_providers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **user_id** | **String**| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **redirect_url** | **String**|  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.   | [optional] 

### Return type

[**CloudStorageProviders**](CloudStorageProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



