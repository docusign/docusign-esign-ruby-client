# DocuSign_eSign::CustomTabsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CustomTabsApi.md#create) | **POST** /v2/accounts/{accountId}/tab_definitions | Creates a custom tab.
[**delete**](CustomTabsApi.md#delete) | **DELETE** /v2/accounts/{accountId}/tab_definitions/{customTabId} | Deletes custom tab information.
[**get**](CustomTabsApi.md#get) | **GET** /v2/accounts/{accountId}/tab_definitions/{customTabId} | Gets custom tab information.
[**list**](CustomTabsApi.md#list) | **GET** /v2/accounts/{accountId}/tab_definitions | Gets a list of all account tabs.
[**update**](CustomTabsApi.md#update) | **PUT** /v2/accounts/{accountId}/tab_definitions/{customTabId} | Updates custom tab information.  


# **create**
> TabMetadata create(account_id, opts)

Creates a custom tab.

Creates a tab with pre-defined properties, such as a text tab with a certain font type and validation pattern. Users can access the custom tabs when sending documents through the DocuSign web application.  Custom tabs can be created for approve, checkbox, company, date, date signed, decline, email, email address, envelope ID, first name, formula, full name, initial here, last name, list, note, number, radio, sign here, signer attachment, SSN, text, title, and zip tabs.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CustomTabsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  tab_metadata: DocuSign_eSign::TabMetadata.new # TabMetadata | 
}

begin
  #Creates a custom tab.
  result = api_instance.create(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CustomTabsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **tab_metadata** | [**TabMetadata**](TabMetadata.md)|  | [optional] 

### Return type

[**TabMetadata**](TabMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete**
> delete(account_id, custom_tab_id)

Deletes custom tab information.

Deletes the custom from the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CustomTabsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

custom_tab_id = "custom_tab_id_example" # String | 


begin
  #Deletes custom tab information.
  api_instance.delete(account_id, custom_tab_id)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CustomTabsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **custom_tab_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> TabMetadata get(account_id, custom_tab_id)

Gets custom tab information.

Retrieves information about the requested custom tab on the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CustomTabsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

custom_tab_id = "custom_tab_id_example" # String | 


begin
  #Gets custom tab information.
  result = api_instance.get(account_id, custom_tab_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CustomTabsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **custom_tab_id** | **String**|  | 

### Return type

[**TabMetadata**](TabMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> TabMetadataList list(account_id, opts)

Gets a list of all account tabs.

Retrieves a list of all tabs associated with the account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CustomTabsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  custom_tab_only: "custom_tab_only_example" # String | When set to **true**, only custom tabs are returned in the response. 
}

begin
  #Gets a list of all account tabs.
  result = api_instance.list(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CustomTabsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **custom_tab_only** | **String**| When set to **true**, only custom tabs are returned in the response.  | [optional] 

### Return type

[**TabMetadataList**](TabMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> TabMetadata update(account_id, custom_tab_id, opts)

Updates custom tab information.  

Updates the information in a custom tab for the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::CustomTabsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

custom_tab_id = "custom_tab_id_example" # String | 

opts = { 
  tab_metadata: DocuSign_eSign::TabMetadata.new # TabMetadata | 
}

begin
  #Updates custom tab information.  
  result = api_instance.update(account_id, custom_tab_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling CustomTabsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **custom_tab_id** | **String**|  | 
 **tab_metadata** | [**TabMetadata**](TabMetadata.md)|  | [optional] 

### Return type

[**TabMetadata**](TabMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



