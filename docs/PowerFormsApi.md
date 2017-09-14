# DocuSign_eSign::PowerFormsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_power_form**](PowerFormsApi.md#create_power_form) | **POST** /v2/accounts/{accountId}/powerforms | Creates a new PowerForm.
[**delete_power_form**](PowerFormsApi.md#delete_power_form) | **DELETE** /v2/accounts/{accountId}/powerforms/{powerFormId} | Delete a PowerForm.
[**delete_power_forms**](PowerFormsApi.md#delete_power_forms) | **DELETE** /v2/accounts/{accountId}/powerforms | Deletes one or more PowerForms
[**get_power_form**](PowerFormsApi.md#get_power_form) | **GET** /v2/accounts/{accountId}/powerforms/{powerFormId} | Returns a single PowerForm.
[**get_power_form_data**](PowerFormsApi.md#get_power_form_data) | **GET** /v2/accounts/{accountId}/powerforms/{powerFormId}/form_data | Returns the form data associated with the usage of a PowerForm.
[**list_power_form_senders**](PowerFormsApi.md#list_power_form_senders) | **GET** /v2/accounts/{accountId}/powerforms/senders | Returns the list of PowerForms available to the user.
[**list_power_forms**](PowerFormsApi.md#list_power_forms) | **GET** /v2/accounts/{accountId}/powerforms | Returns the list of PowerForms available to the user.
[**update_power_form**](PowerFormsApi.md#update_power_form) | **PUT** /v2/accounts/{accountId}/powerforms/{powerFormId} | Creates a new PowerForm.


# **create_power_form**
> PowerForm create_power_form(account_id, opts)

Creates a new PowerForm.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::PowerFormsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  power_form: DocuSign_eSign::PowerForm.new # PowerForm | 
}

begin
  #Creates a new PowerForm.
  result = api_instance.create_power_form(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling PowerFormsApi->create_power_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **power_form** | [**PowerForm**](PowerForm.md)|  | [optional] 

### Return type

[**PowerForm**](PowerForm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_power_form**
> delete_power_form(account_id, power_form_id)

Delete a PowerForm.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::PowerFormsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

power_form_id = "power_form_id_example" # String | 


begin
  #Delete a PowerForm.
  api_instance.delete_power_form(account_id, power_form_id)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling PowerFormsApi->delete_power_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **power_form_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_power_forms**
> PowerFormsResponse delete_power_forms(account_id, opts)

Deletes one or more PowerForms

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::PowerFormsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  power_forms_request: DocuSign_eSign::PowerFormsRequest.new # PowerFormsRequest | 
}

begin
  #Deletes one or more PowerForms
  result = api_instance.delete_power_forms(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling PowerFormsApi->delete_power_forms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **power_forms_request** | [**PowerFormsRequest**](PowerFormsRequest.md)|  | [optional] 

### Return type

[**PowerFormsResponse**](PowerFormsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_power_form**
> PowerForm get_power_form(account_id, power_form_id)

Returns a single PowerForm.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::PowerFormsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

power_form_id = "power_form_id_example" # String | 


begin
  #Returns a single PowerForm.
  result = api_instance.get_power_form(account_id, power_form_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling PowerFormsApi->get_power_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **power_form_id** | **String**|  | 

### Return type

[**PowerForm**](PowerForm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_power_form_data**
> PowerFormsFormDataResponse get_power_form_data(account_id, power_form_id, opts)

Returns the form data associated with the usage of a PowerForm.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::PowerFormsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

power_form_id = "power_form_id_example" # String | 

opts = { 
  from_date: "from_date_example", # String | 
  to_date: "to_date_example" # String | 
}

begin
  #Returns the form data associated with the usage of a PowerForm.
  result = api_instance.get_power_form_data(account_id, power_form_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling PowerFormsApi->get_power_form_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **power_form_id** | **String**|  | 
 **from_date** | **String**|  | [optional] 
 **to_date** | **String**|  | [optional] 

### Return type

[**PowerFormsFormDataResponse**](PowerFormsFormDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_power_form_senders**
> PowerFormSendersResponse list_power_form_senders(account_id, opts)

Returns the list of PowerForms available to the user.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::PowerFormsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  start_position: "start_position_example" # String | 
}

begin
  #Returns the list of PowerForms available to the user.
  result = api_instance.list_power_form_senders(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling PowerFormsApi->list_power_form_senders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **start_position** | **String**|  | [optional] 

### Return type

[**PowerFormSendersResponse**](PowerFormSendersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_power_forms**
> PowerFormsResponse list_power_forms(account_id, opts)

Returns the list of PowerForms available to the user.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::PowerFormsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  from_date: "from_date_example", # String | 
  order: "order_example", # String | 
  order_by: "order_by_example", # String | 
  to_date: "to_date_example" # String | 
}

begin
  #Returns the list of PowerForms available to the user.
  result = api_instance.list_power_forms(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling PowerFormsApi->list_power_forms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **from_date** | **String**|  | [optional] 
 **order** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **to_date** | **String**|  | [optional] 

### Return type

[**PowerFormsResponse**](PowerFormsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_power_form**
> PowerForm update_power_form(account_id, power_form_id, opts)

Creates a new PowerForm.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::PowerFormsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

power_form_id = "power_form_id_example" # String | 

opts = { 
  power_form: DocuSign_eSign::PowerForm.new # PowerForm | 
}

begin
  #Creates a new PowerForm.
  result = api_instance.update_power_form(account_id, power_form_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling PowerFormsApi->update_power_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **power_form_id** | **String**|  | 
 **power_form** | [**PowerForm**](PowerForm.md)|  | [optional] 

### Return type

[**PowerForm**](PowerForm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



