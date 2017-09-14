# DocuSign_eSign::SigningGroupsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_list**](SigningGroupsApi.md#create_list) | **POST** /v2/accounts/{accountId}/signing_groups | Creates a signing group. 
[**delete_list**](SigningGroupsApi.md#delete_list) | **DELETE** /v2/accounts/{accountId}/signing_groups | Deletes one or more signing groups.
[**delete_users**](SigningGroupsApi.md#delete_users) | **DELETE** /v2/accounts/{accountId}/signing_groups/{signingGroupId}/users | Deletes  one or more members from a signing group.
[**get**](SigningGroupsApi.md#get) | **GET** /v2/accounts/{accountId}/signing_groups/{signingGroupId} | Gets information about a signing group. 
[**list**](SigningGroupsApi.md#list) | **GET** /v2/accounts/{accountId}/signing_groups | Gets a list of the Signing Groups in an account.
[**list_users**](SigningGroupsApi.md#list_users) | **GET** /v2/accounts/{accountId}/signing_groups/{signingGroupId}/users | Gets a list of members in a Signing Group.
[**update**](SigningGroupsApi.md#update) | **PUT** /v2/accounts/{accountId}/signing_groups/{signingGroupId} | Updates a signing group. 
[**update_list**](SigningGroupsApi.md#update_list) | **PUT** /v2/accounts/{accountId}/signing_groups | Updates signing group names.
[**update_users**](SigningGroupsApi.md#update_users) | **PUT** /v2/accounts/{accountId}/signing_groups/{signingGroupId}/users | Adds members to a signing group. 


# **create_list**
> SigningGroupInformation create_list(account_id, opts)

Creates a signing group. 

Creates one or more signing groups.   Multiple signing groups can be created in one call. Only users with account administrator privileges can create signing groups.   An account can have a maximum of 50 signing groups. Each signing group can have a maximum of 50 group members.   Signing groups can be used by any account user.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::SigningGroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  signing_group_information: DocuSign_eSign::SigningGroupInformation.new # SigningGroupInformation | 
}

begin
  #Creates a signing group. 
  result = api_instance.create_list(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling SigningGroupsApi->create_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **signing_group_information** | [**SigningGroupInformation**](SigningGroupInformation.md)|  | [optional] 

### Return type

[**SigningGroupInformation**](SigningGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_list**
> SigningGroupInformation delete_list(account_id, opts)

Deletes one or more signing groups.

Deletes one or more signing groups in the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::SigningGroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  signing_group_information: DocuSign_eSign::SigningGroupInformation.new # SigningGroupInformation | 
}

begin
  #Deletes one or more signing groups.
  result = api_instance.delete_list(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling SigningGroupsApi->delete_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **signing_group_information** | [**SigningGroupInformation**](SigningGroupInformation.md)|  | [optional] 

### Return type

[**SigningGroupInformation**](SigningGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_users**
> SigningGroupUsers delete_users(account_id, signing_group_id, opts)

Deletes  one or more members from a signing group.

Deletes  one or more members from the specified signing group. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::SigningGroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

signing_group_id = "signing_group_id_example" # String | 

opts = { 
  signing_group_users: DocuSign_eSign::SigningGroupUsers.new # SigningGroupUsers | 
}

begin
  #Deletes  one or more members from a signing group.
  result = api_instance.delete_users(account_id, signing_group_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling SigningGroupsApi->delete_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **signing_group_id** | **String**|  | 
 **signing_group_users** | [**SigningGroupUsers**](SigningGroupUsers.md)|  | [optional] 

### Return type

[**SigningGroupUsers**](SigningGroupUsers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> SigningGroup get(account_id, signing_group_id)

Gets information about a signing group. 

Retrieves information, including group member information, for the specified signing group. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::SigningGroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

signing_group_id = "signing_group_id_example" # String | 


begin
  #Gets information about a signing group. 
  result = api_instance.get(account_id, signing_group_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling SigningGroupsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **signing_group_id** | **String**|  | 

### Return type

[**SigningGroup**](SigningGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> SigningGroupInformation list(account_id, opts)

Gets a list of the Signing Groups in an account.

Retrieves a list of all signing groups in the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::SigningGroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  group_type: "group_type_example", # String | 
  include_users: "include_users_example" # String | When set to **true**, the response includes the signing group members. 
}

begin
  #Gets a list of the Signing Groups in an account.
  result = api_instance.list(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling SigningGroupsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **group_type** | **String**|  | [optional] 
 **include_users** | **String**| When set to **true**, the response includes the signing group members.  | [optional] 

### Return type

[**SigningGroupInformation**](SigningGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_users**
> SigningGroupUsers list_users(account_id, signing_group_id)

Gets a list of members in a Signing Group.

Retrieves the list of members in the specified Signing Group.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::SigningGroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

signing_group_id = "signing_group_id_example" # String | 


begin
  #Gets a list of members in a Signing Group.
  result = api_instance.list_users(account_id, signing_group_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling SigningGroupsApi->list_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **signing_group_id** | **String**|  | 

### Return type

[**SigningGroupUsers**](SigningGroupUsers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> SigningGroup update(account_id, signing_group_id, opts)

Updates a signing group. 

Updates signing group name and member information. You can also add new members to the signing group. A signing group can have a maximum of 50 members. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::SigningGroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

signing_group_id = "signing_group_id_example" # String | 

opts = { 
  signing_group: DocuSign_eSign::SigningGroup.new # SigningGroup | 
}

begin
  #Updates a signing group. 
  result = api_instance.update(account_id, signing_group_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling SigningGroupsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **signing_group_id** | **String**|  | 
 **signing_group** | [**SigningGroup**](SigningGroup.md)|  | [optional] 

### Return type

[**SigningGroup**](SigningGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_list**
> SigningGroupInformation update_list(account_id, opts)

Updates signing group names.

Updates the name of one or more existing signing groups. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::SigningGroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  signing_group_information: DocuSign_eSign::SigningGroupInformation.new # SigningGroupInformation | 
}

begin
  #Updates signing group names.
  result = api_instance.update_list(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling SigningGroupsApi->update_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **signing_group_information** | [**SigningGroupInformation**](SigningGroupInformation.md)|  | [optional] 

### Return type

[**SigningGroupInformation**](SigningGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_users**
> SigningGroupUsers update_users(account_id, signing_group_id, opts)

Adds members to a signing group. 

Adds one or more new members to a signing group. A signing group can have a maximum of 50 members. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::SigningGroupsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

signing_group_id = "signing_group_id_example" # String | 

opts = { 
  signing_group_users: DocuSign_eSign::SigningGroupUsers.new # SigningGroupUsers | 
}

begin
  #Adds members to a signing group. 
  result = api_instance.update_users(account_id, signing_group_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling SigningGroupsApi->update_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **signing_group_id** | **String**|  | 
 **signing_group_users** | [**SigningGroupUsers**](SigningGroupUsers.md)|  | [optional] 

### Return type

[**SigningGroupUsers**](SigningGroupUsers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



