# DocuSign_eSign::GroupsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_groups**](GroupsApi.md#create_groups) | **POST** /v2/accounts/{accountId}/groups | Creates one or more groups for the account.
[**delete_brands**](GroupsApi.md#delete_brands) | **DELETE** /v2/accounts/{accountId}/groups/{groupId}/brands | Deletes brand information from the requested group.
[**delete_group_users**](GroupsApi.md#delete_group_users) | **DELETE** /v2/accounts/{accountId}/groups/{groupId}/users | Deletes one or more users from a gro
[**delete_groups**](GroupsApi.md#delete_groups) | **DELETE** /v2/accounts/{accountId}/groups | Deletes an existing user group.
[**get_brands**](GroupsApi.md#get_brands) | **GET** /v2/accounts/{accountId}/groups/{groupId}/brands | Gets group brand ID Information. 
[**list_group_users**](GroupsApi.md#list_group_users) | **GET** /v2/accounts/{accountId}/groups/{groupId}/users | Gets a list of users in a group.
[**list_groups**](GroupsApi.md#list_groups) | **GET** /v2/accounts/{accountId}/groups | Gets information about groups associated with the account.
[**update_brands**](GroupsApi.md#update_brands) | **PUT** /v2/accounts/{accountId}/groups/{groupId}/brands | Adds group brand ID information to a group.
[**update_group_users**](GroupsApi.md#update_group_users) | **PUT** /v2/accounts/{accountId}/groups/{groupId}/users | Adds one or more users to an existing group.
[**update_groups**](GroupsApi.md#update_groups) | **PUT** /v2/accounts/{accountId}/groups | Updates the group information for a group.


# **create_groups**
> GroupInformation create_groups(account_id, opts)

Creates one or more groups for the account.

Creates one or more groups for the account.  Groups can be used to help manage users by associating users with a group. You can associate a group with a Permission Profile, which sets the user permissions for users in that group without having to set the `userSettings` property for each user. You are not required to set Permission Profiles for a group, but it makes it easier to manage user permissions for a large number of users. You can also use groups with template sharing to limit user access to templates.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::GroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  group_information: DocuSign_eSign::GroupInformation.new # GroupInformation | 
}

begin
  #Creates one or more groups for the account.
  result = api_instance.create_groups(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling GroupsApi->create_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **group_information** | [**GroupInformation**](GroupInformation.md)|  | [optional] 

### Return type

[**GroupInformation**](GroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_brands**
> BrandsResponse delete_brands(account_id, group_id, opts)

Deletes brand information from the requested group.

Deletes brand information from the requested group.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::GroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

group_id = "group_id_example" # String | The ID of the group being accessed.

opts = { 
  brands_request: DocuSign_eSign::BrandsRequest.new # BrandsRequest | 
}

begin
  #Deletes brand information from the requested group.
  result = api_instance.delete_brands(account_id, group_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling GroupsApi->delete_brands: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **group_id** | **String**| The ID of the group being accessed. | 
 **brands_request** | [**BrandsRequest**](BrandsRequest.md)|  | [optional] 

### Return type

[**BrandsResponse**](BrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_group_users**
> UsersResponse delete_group_users(account_id, group_id, opts)

Deletes one or more users from a gro

Deletes one or more users from a group. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::GroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

group_id = "group_id_example" # String | The ID of the group being accessed.

opts = { 
  user_info_list: DocuSign_eSign::UserInfoList.new # UserInfoList | 
}

begin
  #Deletes one or more users from a gro
  result = api_instance.delete_group_users(account_id, group_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling GroupsApi->delete_group_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **group_id** | **String**| The ID of the group being accessed. | 
 **user_info_list** | [**UserInfoList**](UserInfoList.md)|  | [optional] 

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_groups**
> GroupInformation delete_groups(account_id, opts)

Deletes an existing user group.

Deletes an existing user group.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::GroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  group_information: DocuSign_eSign::GroupInformation.new # GroupInformation | 
}

begin
  #Deletes an existing user group.
  result = api_instance.delete_groups(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling GroupsApi->delete_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **group_information** | [**GroupInformation**](GroupInformation.md)|  | [optional] 

### Return type

[**GroupInformation**](GroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_brands**
> BrandsResponse get_brands(account_id, group_id)

Gets group brand ID Information. 

Retrieves information about the brands associated with the requested group.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::GroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

group_id = "group_id_example" # String | The ID of the group being accessed.


begin
  #Gets group brand ID Information. 
  result = api_instance.get_brands(account_id, group_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling GroupsApi->get_brands: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **group_id** | **String**| The ID of the group being accessed. | 

### Return type

[**BrandsResponse**](BrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_group_users**
> UsersResponse list_group_users(account_id, group_id, opts)

Gets a list of users in a group.

Retrieves a list of users in a group.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::GroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

group_id = "group_id_example" # String | The ID of the group being accessed.

opts = { 
  count: "count_example", # String | Number of records to return. The number must be greater than 1 and less than or equal to 100. 
  start_position: "start_position_example" # String | Starting value for the list.
}

begin
  #Gets a list of users in a group.
  result = api_instance.list_group_users(account_id, group_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling GroupsApi->list_group_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **group_id** | **String**| The ID of the group being accessed. | 
 **count** | **String**| Number of records to return. The number must be greater than 1 and less than or equal to 100.  | [optional] 
 **start_position** | **String**| Starting value for the list. | [optional] 

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_groups**
> GroupInformation list_groups(account_id, opts)

Gets information about groups associated with the account.

Retrieves information about groups associated with the account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::GroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  count: "count_example", # String | Number of records to return. The number must be greater than 1 and less than or equal to 100.
  group_name: "group_name_example", # String | Filters the groups returned by the group name or a sub-string of group name.
  group_type: "group_type_example", # String | 
  search_text: "search_text_example", # String | 
  start_position: "start_position_example" # String | Starting value for the list.
}

begin
  #Gets information about groups associated with the account.
  result = api_instance.list_groups(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling GroupsApi->list_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **count** | **String**| Number of records to return. The number must be greater than 1 and less than or equal to 100. | [optional] 
 **group_name** | **String**| Filters the groups returned by the group name or a sub-string of group name. | [optional] 
 **group_type** | **String**|  | [optional] 
 **search_text** | **String**|  | [optional] 
 **start_position** | **String**| Starting value for the list. | [optional] 

### Return type

[**GroupInformation**](GroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_brands**
> BrandsResponse update_brands(account_id, group_id, opts)

Adds group brand ID information to a group.

Adds group brand ID information to a group.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::GroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

group_id = "group_id_example" # String | The ID of the group being accessed.

opts = { 
  brands_request: DocuSign_eSign::BrandsRequest.new # BrandsRequest | 
}

begin
  #Adds group brand ID information to a group.
  result = api_instance.update_brands(account_id, group_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling GroupsApi->update_brands: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **group_id** | **String**| The ID of the group being accessed. | 
 **brands_request** | [**BrandsRequest**](BrandsRequest.md)|  | [optional] 

### Return type

[**BrandsResponse**](BrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_group_users**
> UsersResponse update_group_users(account_id, group_id, opts)

Adds one or more users to an existing group.

Adds one or more users to an existing group.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::GroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

group_id = "group_id_example" # String | The ID of the group being accessed.

opts = { 
  user_info_list: DocuSign_eSign::UserInfoList.new # UserInfoList | 
}

begin
  #Adds one or more users to an existing group.
  result = api_instance.update_group_users(account_id, group_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling GroupsApi->update_group_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **group_id** | **String**| The ID of the group being accessed. | 
 **user_info_list** | [**UserInfoList**](UserInfoList.md)|  | [optional] 

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_groups**
> GroupInformation update_groups(account_id, opts)

Updates the group information for a group.

Updates the group name and modifies, or sets, the permission profile for the group.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::GroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  group_information: DocuSign_eSign::GroupInformation.new # GroupInformation | 
}

begin
  #Updates the group information for a group.
  result = api_instance.update_groups(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling GroupsApi->update_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **group_information** | [**GroupInformation**](GroupInformation.md)|  | [optional] 

### Return type

[**GroupInformation**](GroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



