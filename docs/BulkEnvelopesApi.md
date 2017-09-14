# DocuSign_eSign::BulkEnvelopesApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_recipients**](BulkEnvelopesApi.md#delete_recipients) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients | Deletes the bulk recipient file from an envelope.
[**get**](BulkEnvelopesApi.md#get) | **GET** /v2/accounts/{accountId}/bulk_envelopes/{batchId} | Gets the status of a specified bulk send operation.
[**get_recipients**](BulkEnvelopesApi.md#get_recipients) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients | Gets the bulk recipient file from an envelope.
[**list**](BulkEnvelopesApi.md#list) | **GET** /v2/accounts/{accountId}/bulk_envelopes | Gets status information about bulk recipient batches.
[**update_recipients**](BulkEnvelopesApi.md#update_recipients) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients | Adds or replaces envelope bulk recipients.


# **delete_recipients**
> BulkRecipientsUpdateResponse delete_recipients(account_id, envelope_id, recipient_id)

Deletes the bulk recipient file from an envelope.

Deletes the bulk recipient file from an envelope. This cannot be used if the envelope has been sent.  After using this, the `bulkRecipientsUri` property is not returned in subsequent GET calls for the envelope, but the recipient will remain as a bulk recipient.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::BulkEnvelopesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

envelope_id = "envelope_id_example" # String | The envelopeId Guid of the envelope being accessed.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.


begin
  #Deletes the bulk recipient file from an envelope.
  result = api_instance.delete_recipients(account_id, envelope_id, recipient_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling BulkEnvelopesApi->delete_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **envelope_id** | **String**| The envelopeId Guid of the envelope being accessed. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 

### Return type

[**BulkRecipientsUpdateResponse**](BulkRecipientsUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> BulkEnvelopeStatus get(account_id, batch_id, opts)

Gets the status of a specified bulk send operation.

Retrieves the status information of a single bulk recipient batch. A bulk recipient batch is the set of envelopes sent from a single bulk recipient file. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::BulkEnvelopesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

batch_id = "batch_id_example" # String | 

opts = { 
  count: "count_example", # String | Specifies the number of entries to return.
  include: "include_example", # String | Specifies which entries are included in the response. Multiple entries can be included by using commas in the query string (example: ?include=”failed,queued”)   Valid values are:   * all - Returns all entries. If present, overrides all other query settings. This is the default if no query string is provided. * failed - This only returns entries with a failed status. * queued - This only returns entries with a queued status. * sent – This only returns entries with a sent status.  
  start_position: "start_position_example" # String | Specifies the location in the list of envelopes from which to start.
}

begin
  #Gets the status of a specified bulk send operation.
  result = api_instance.get(account_id, batch_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling BulkEnvelopesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **batch_id** | **String**|  | 
 **count** | **String**| Specifies the number of entries to return. | [optional] 
 **include** | **String**| Specifies which entries are included in the response. Multiple entries can be included by using commas in the query string (example: ?include&#x3D;”failed,queued”)   Valid values are:   * all - Returns all entries. If present, overrides all other query settings. This is the default if no query string is provided. * failed - This only returns entries with a failed status. * queued - This only returns entries with a queued status. * sent – This only returns entries with a sent status.   | [optional] 
 **start_position** | **String**| Specifies the location in the list of envelopes from which to start. | [optional] 

### Return type

[**BulkEnvelopeStatus**](BulkEnvelopeStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_recipients**
> BulkRecipientsResponse get_recipients(account_id, envelope_id, recipient_id, opts)

Gets the bulk recipient file from an envelope.

Retrieves the bulk recipient file information from an envelope that has a bulk recipient.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::BulkEnvelopesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

envelope_id = "envelope_id_example" # String | The envelopeId Guid of the envelope being accessed.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.

opts = { 
  include_tabs: "include_tabs_example", # String | 
  start_position: "start_position_example" # String | 
}

begin
  #Gets the bulk recipient file from an envelope.
  result = api_instance.get_recipients(account_id, envelope_id, recipient_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling BulkEnvelopesApi->get_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **envelope_id** | **String**| The envelopeId Guid of the envelope being accessed. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 
 **include_tabs** | **String**|  | [optional] 
 **start_position** | **String**|  | [optional] 

### Return type

[**BulkRecipientsResponse**](BulkRecipientsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> BulkEnvelopesResponse list(account_id, opts)

Gets status information about bulk recipient batches.

Retrieves status information about all the bulk recipient batches. A bulk recipient batch is the set of envelopes sent from a single bulk recipient file. The response includes general information about each bulk recipient batch.   The response returns information about the envelopes sent with bulk recipient batches, including the `batchId` property, which can be used to retrieve a more detailed status of individual bulk recipient batches.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::BulkEnvelopesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  count: "count_example", # String | The number of results to return. This can be 1 to 20.
  include: "include_example", # String | 
  start_position: "start_position_example" # String | The position of the bulk envelope items in the response. This is used for repeated calls, when the number of bulk envelopes returned is too large for one return. The default value is 0.
}

begin
  #Gets status information about bulk recipient batches.
  result = api_instance.list(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling BulkEnvelopesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **count** | **String**| The number of results to return. This can be 1 to 20. | [optional] 
 **include** | **String**|  | [optional] 
 **start_position** | **String**| The position of the bulk envelope items in the response. This is used for repeated calls, when the number of bulk envelopes returned is too large for one return. The default value is 0. | [optional] 

### Return type

[**BulkEnvelopesResponse**](BulkEnvelopesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_recipients**
> BulkRecipientsSummaryResponse update_recipients(account_id, envelope_id, recipient_id, opts)

Adds or replaces envelope bulk recipients.

Updates the bulk recipients in a draft envelope using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::BulkEnvelopesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

envelope_id = "envelope_id_example" # String | The envelopeId Guid of the envelope being accessed.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.

opts = { 
  bulk_recipients_request: DocuSign_eSign::BulkRecipientsRequest.new # BulkRecipientsRequest | 
}

begin
  #Adds or replaces envelope bulk recipients.
  result = api_instance.update_recipients(account_id, envelope_id, recipient_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling BulkEnvelopesApi->update_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **envelope_id** | **String**| The envelopeId Guid of the envelope being accessed. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 
 **bulk_recipients_request** | [**BulkRecipientsRequest**](BulkRecipientsRequest.md)|  | [optional] 

### Return type

[**BulkRecipientsSummaryResponse**](BulkRecipientsSummaryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



