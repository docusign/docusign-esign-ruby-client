# DocuSign_eSign::DiagnosticsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_request_logs**](DiagnosticsApi.md#delete_request_logs) | **DELETE** /v2/diagnostics/request_logs | Deletes the request log files.
[**get_request_log**](DiagnosticsApi.md#get_request_log) | **GET** /v2/diagnostics/request_logs/{requestLogId} | Gets a request logging log file.
[**get_request_log_settings**](DiagnosticsApi.md#get_request_log_settings) | **GET** /v2/diagnostics/settings | Gets the API request logging settings.
[**get_resources**](DiagnosticsApi.md#get_resources) | **GET** /v2 | Lists resources for REST version specified
[**get_service**](DiagnosticsApi.md#get_service) | **GET** /service_information | Retrieves the available REST API versions.
[**list_request_logs**](DiagnosticsApi.md#list_request_logs) | **GET** /v2/diagnostics/request_logs | Gets the API request logging log files.
[**update_request_log_settings**](DiagnosticsApi.md#update_request_log_settings) | **PUT** /v2/diagnostics/settings | Enables or disables API request logging for troubleshooting.


# **delete_request_logs**
> delete_request_logs

Deletes the request log files.

Deletes the request log files.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::DiagnosticsApi.new

begin
  #Deletes the request log files.
  api_instance.delete_request_logs
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling DiagnosticsApi->delete_request_logs: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_request_log**
> File get_request_log(request_log_id)

Gets a request logging log file.

Retrieves information for a single log entry.  **Request** The `requestLogfId` property can be retrieved by getting the list of log entries. The Content-Transfer-Encoding header can be set to base64 to retrieve the API request/response as base 64 string. Otherwise the bytes of the request/response are returned.  **Response** If the Content-Transfer-Encoding header was set to base64, the log is returned as a base64 string.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::DiagnosticsApi.new

request_log_id = "request_log_id_example" # String | 


begin
  #Gets a request logging log file.
  result = api_instance.get_request_log(request_log_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling DiagnosticsApi->get_request_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_log_id** | **String**|  | 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain



# **get_request_log_settings**
> DiagnosticsSettingsInformation get_request_log_settings

Gets the API request logging settings.

Retrieves the current API request logging setting for the user and remaining log entries.  **Response** The response includes the current API request logging setting for the user, along with the maximum log entries and remaining log entries.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::DiagnosticsApi.new

begin
  #Gets the API request logging settings.
  result = api_instance.get_request_log_settings
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling DiagnosticsApi->get_request_log_settings: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DiagnosticsSettingsInformation**](DiagnosticsSettingsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_resources**
> ResourceInformation get_resources

Lists resources for REST version specified

Retrieves the base resources available for the DocuSign REST APIs.  You do not need an integrator key to view the REST API versions and resources.  Example: https://demo.docusign.net/restapi/v2 lists all of the base resources available in version 2 of the REST API on the DocuSign Demo system.  To view descriptions and samples of the service operations for all versions, remove the version number and add /help to the URL.  Example: https://demo.docusign.net/restapi/help lists the REST API operations on the DocuSign Demo system with XML and JSON request and response samples.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::DiagnosticsApi.new

begin
  #Lists resources for REST version specified
  result = api_instance.get_resources
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling DiagnosticsApi->get_resources: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourceInformation**](ResourceInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_service**
> ServiceInformation get_service

Retrieves the available REST API versions.

Retrieves the available REST API versions.  DocuSign Production system: https://www.docusign.net/restapi/service_information DocuSign Demo system: https://demo.docusign.net/restapi/service_information  You do not need an integrator key to view the REST API versions and resources.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::DiagnosticsApi.new

begin
  #Retrieves the available REST API versions.
  result = api_instance.get_service
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling DiagnosticsApi->get_service: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ServiceInformation**](ServiceInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_request_logs**
> ApiRequestLogsResult list_request_logs(opts)

Gets the API request logging log files.

Retrieves a list of log entries as a JSON or xml object or as a zip file containing the entries.  If the Accept header is set to application/zip, the response is a zip file containing individual text files, each representing an API request.  If the Accept header is set to `application/json` or `application/xml`, the response returns list of log entries in either JSON or XML. An example JSON response body is shown below. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::DiagnosticsApi.new

opts = { 
  encoding: "encoding_example" # String | 
}

begin
  #Gets the API request logging log files.
  result = api_instance.list_request_logs(opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling DiagnosticsApi->list_request_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **encoding** | **String**|  | [optional] 

### Return type

[**ApiRequestLogsResult**](ApiRequestLogsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_request_log_settings**
> DiagnosticsSettingsInformation update_request_log_settings(opts)

Enables or disables API request logging for troubleshooting.

Enables or disables API request logging for troubleshooting.  When enabled (`apiRequestLogging` is set to true), REST API requests and responses for the user are added to a log. A log can have up to 50 requests/responses and the current number of log entries can be determined by getting the settings. Logging is automatically disabled when the log limit of 50 is reached.  You can call [ML:GetRequestLog] or [ML:GetRequestLogs] to download the log files (individually or as a zip file). Call [ML:DeleteRequestLogs] to clear the log by deleting current entries.  Private information, such as passwords and integrator key information, which is normally located in the call header is omitted from the request/response log.  ###### Note: API request logging only captures requests from the authenticated user. Any call that does not authenticate the user and resolve a userId isn't logged. Meaning that login_information, NewAccounts, or other distributor-credential calls are not logged. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::DiagnosticsApi.new

opts = { 
  diagnostics_settings_information: DocuSign_eSign::DiagnosticsSettingsInformation.new # DiagnosticsSettingsInformation | 
}

begin
  #Enables or disables API request logging for troubleshooting.
  result = api_instance.update_request_log_settings(opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling DiagnosticsApi->update_request_log_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **diagnostics_settings_information** | [**DiagnosticsSettingsInformation**](DiagnosticsSettingsInformation.md)|  | [optional] 

### Return type

[**DiagnosticsSettingsInformation**](DiagnosticsSettingsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



