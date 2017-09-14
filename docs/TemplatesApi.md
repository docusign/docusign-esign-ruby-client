# DocuSign_eSign::TemplatesApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_custom_fields**](TemplatesApi.md#create_custom_fields) | **POST** /v2/accounts/{accountId}/templates/{templateId}/custom_fields | Creates custom document fields in an existing template document.
[**create_document_fields**](TemplatesApi.md#create_document_fields) | **POST** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Creates custom document fields in an existing template document.
[**create_edit_view**](TemplatesApi.md#create_edit_view) | **POST** /v2/accounts/{accountId}/templates/{templateId}/views/edit | Provides a URL to start an edit view of the Template UI
[**create_lock**](TemplatesApi.md#create_lock) | **POST** /v2/accounts/{accountId}/templates/{templateId}/lock | Lock a template.
[**create_recipients**](TemplatesApi.md#create_recipients) | **POST** /v2/accounts/{accountId}/templates/{templateId}/recipients | Adds tabs for a recipient.
[**create_tabs**](TemplatesApi.md#create_tabs) | **POST** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Adds tabs for a recipient.
[**create_template**](TemplatesApi.md#create_template) | **POST** /v2/accounts/{accountId}/templates | Creates an envelope from a template.
[**delete_bulk_recipients**](TemplatesApi.md#delete_bulk_recipients) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients | Deletes the bulk recipient list on a template.
[**delete_custom_fields**](TemplatesApi.md#delete_custom_fields) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/custom_fields | Deletes envelope custom fields in a template.
[**delete_document_fields**](TemplatesApi.md#delete_document_fields) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Deletes custom document fields from an existing template document.
[**delete_document_page**](TemplatesApi.md#delete_document_page) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber} | Deletes a page from a document in an template.
[**delete_documents**](TemplatesApi.md#delete_documents) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/documents | Deletes documents from a template.
[**delete_group_share**](TemplatesApi.md#delete_group_share) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/{templatePart} | Removes a member group&#39;s sharing permissions for a template.
[**delete_lock**](TemplatesApi.md#delete_lock) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/lock | Deletes a template lock.
[**delete_recipient**](TemplatesApi.md#delete_recipient) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId} | Deletes the specified recipient file from a template.
[**delete_recipients**](TemplatesApi.md#delete_recipients) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/recipients | Deletes recipients from a template.
[**delete_tabs**](TemplatesApi.md#delete_tabs) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Deletes the tabs associated with a recipient in a template.
[**get**](TemplatesApi.md#get) | **GET** /v2/accounts/{accountId}/templates/{templateId} | Gets a list of templates for a specified account.
[**get_document**](TemplatesApi.md#get_document) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId} | Gets PDF documents from a template.
[**get_document_page_image**](TemplatesApi.md#get_document_page_image) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/page_image | Gets a page image from a template for display.
[**get_lock**](TemplatesApi.md#get_lock) | **GET** /v2/accounts/{accountId}/templates/{templateId}/lock | Gets template lock information.
[**get_notification_settings**](TemplatesApi.md#get_notification_settings) | **GET** /v2/accounts/{accountId}/templates/{templateId}/notification | Gets template notification information.
[**list_bulk_recipients**](TemplatesApi.md#list_bulk_recipients) | **GET** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients | Gets the bulk recipient file from a template.
[**list_custom_fields**](TemplatesApi.md#list_custom_fields) | **GET** /v2/accounts/{accountId}/templates/{templateId}/custom_fields | Gets the custom document fields from a template.
[**list_document_fields**](TemplatesApi.md#list_document_fields) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Gets the custom document fields for a an existing template document.
[**list_documents**](TemplatesApi.md#list_documents) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents | Gets a list of documents associated with a template.
[**list_recipients**](TemplatesApi.md#list_recipients) | **GET** /v2/accounts/{accountId}/templates/{templateId}/recipients | Gets recipient information from a template.
[**list_tabs**](TemplatesApi.md#list_tabs) | **GET** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Gets the tabs information for a signer or sign-in-person recipient in a template.
[**list_templates**](TemplatesApi.md#list_templates) | **GET** /v2/accounts/{accountId}/templates | Gets the definition of a template.
[**rotate_document_page**](TemplatesApi.md#rotate_document_page) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/page_image | Rotates page image from a template for display.
[**update**](TemplatesApi.md#update) | **PUT** /v2/accounts/{accountId}/templates/{templateId} | Updates an existing template.
[**update_bulk_recipients**](TemplatesApi.md#update_bulk_recipients) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients | Adds or replaces the bulk recipients list in a template.
[**update_custom_fields**](TemplatesApi.md#update_custom_fields) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/custom_fields | Updates envelope custom fields in a template.
[**update_document**](TemplatesApi.md#update_document) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId} | Adds a document to a template document.
[**update_document_fields**](TemplatesApi.md#update_document_fields) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Updates existing custom document fields in an existing template document.
[**update_documents**](TemplatesApi.md#update_documents) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/documents | Adds documents to a template document.
[**update_group_share**](TemplatesApi.md#update_group_share) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/{templatePart} | Shares a template with a group
[**update_lock**](TemplatesApi.md#update_lock) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/lock | Updates a template lock.
[**update_notification_settings**](TemplatesApi.md#update_notification_settings) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/notification | Updates the notification  structure for an existing template.
[**update_recipients**](TemplatesApi.md#update_recipients) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/recipients | Updates recipients in a template.
[**update_tabs**](TemplatesApi.md#update_tabs) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Updates the tabs for a recipient.


# **create_custom_fields**
> CustomFields create_custom_fields(account_id, template_id, opts)

Creates custom document fields in an existing template document.

Creates custom document fields in an existing template document.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  template_custom_fields: DocuSign_eSign::TemplateCustomFields.new # TemplateCustomFields | 
}

begin
  #Creates custom document fields in an existing template document.
  result = api_instance.create_custom_fields(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->create_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_custom_fields** | [**TemplateCustomFields**](TemplateCustomFields.md)|  | [optional] 

### Return type

[**CustomFields**](CustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_document_fields**
> DocumentFieldsInformation create_document_fields(account_id, document_id, template_id, opts)

Creates custom document fields in an existing template document.

Creates custom document fields in an existing template document.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

document_id = "document_id_example" # String | The ID of the document being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  document_fields_information: DocuSign_eSign::DocumentFieldsInformation.new # DocumentFieldsInformation | 
}

begin
  #Creates custom document fields in an existing template document.
  result = api_instance.create_document_fields(account_id, document_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->create_document_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **document_id** | **String**| The ID of the document being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **document_fields_information** | [**DocumentFieldsInformation**](DocumentFieldsInformation.md)|  | [optional] 

### Return type

[**DocumentFieldsInformation**](DocumentFieldsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_edit_view**
> ViewUrl create_edit_view(account_id, template_id, opts)

Provides a URL to start an edit view of the Template UI

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  return_url_request: DocuSign_eSign::ReturnUrlRequest.new # ReturnUrlRequest | 
}

begin
  #Provides a URL to start an edit view of the Template UI
  result = api_instance.create_edit_view(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->create_edit_view: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **return_url_request** | [**ReturnUrlRequest**](ReturnUrlRequest.md)|  | [optional] 

### Return type

[**ViewUrl**](ViewUrl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_lock**
> LockInformation create_lock(account_id, template_id, opts)

Lock a template.

Locks the specified template, and sets the time until the lock expires, to prevent other users or recipients from accessing and changing the template.  ###### Note: Users must have envelope locking capability enabled to use this function (the userSetting property `canLockEnvelopes` must be set to **true** for the user).

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  lock_request: DocuSign_eSign::LockRequest.new # LockRequest | 
}

begin
  #Lock a template.
  result = api_instance.create_lock(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->create_lock: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **lock_request** | [**LockRequest**](LockRequest.md)|  | [optional] 

### Return type

[**LockInformation**](LockInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_recipients**
> Recipients create_recipients(account_id, template_id, opts)

Adds tabs for a recipient.

Adds one or more recipients to a template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  resend_envelope: "resend_envelope_example", # String | 
  template_recipients: DocuSign_eSign::TemplateRecipients.new # TemplateRecipients | 
}

begin
  #Adds tabs for a recipient.
  result = api_instance.create_recipients(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->create_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **resend_envelope** | **String**|  | [optional] 
 **template_recipients** | [**TemplateRecipients**](TemplateRecipients.md)|  | [optional] 

### Return type

[**Recipients**](Recipients.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_tabs**
> Tabs create_tabs(account_id, recipient_id, template_id, opts)

Adds tabs for a recipient.

Adds one or more tabs for a recipient.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  template_tabs: DocuSign_eSign::TemplateTabs.new # TemplateTabs | 
}

begin
  #Adds tabs for a recipient.
  result = api_instance.create_tabs(account_id, recipient_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->create_tabs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_tabs** | [**TemplateTabs**](TemplateTabs.md)|  | [optional] 

### Return type

[**Tabs**](Tabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_template**
> TemplateSummary create_template(account_id, opts)

Creates an envelope from a template.

Creates a template definition using a multipart request.  ###Template Email Subject Merge Fields  Call this endpoint to insert a recipient name and email address merge fields into the email subject line when creating or sending from a template.  The merge fields, based on the recipient’s role name, are added to the `emailSubject` property when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.  Both the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient. ###### Note: If merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.  To add a recipient’s name in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:  [[<roleName>_UserName]]  Example:  `\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`  To add a recipient’s email address in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:  [[<roleName>_Email]]  Example:  `\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`   In both cases the <roleName> is the recipient's contents of the `roleName` property in the template.  For cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then [[<roleName>_UserName]] or [[<roleName>_Email]] is shown in the email subject.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  envelope_template: DocuSign_eSign::EnvelopeTemplate.new # EnvelopeTemplate | 
}

begin
  #Creates an envelope from a template.
  result = api_instance.create_template(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->create_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **envelope_template** | [**EnvelopeTemplate**](EnvelopeTemplate.md)|  | [optional] 

### Return type

[**TemplateSummary**](TemplateSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_bulk_recipients**
> BulkRecipientsUpdateResponse delete_bulk_recipients(account_id, recipient_id, template_id)

Deletes the bulk recipient list on a template.

Deletes the bulk recipient list on a template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.


begin
  #Deletes the bulk recipient list on a template.
  result = api_instance.delete_bulk_recipients(account_id, recipient_id, template_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->delete_bulk_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 

### Return type

[**BulkRecipientsUpdateResponse**](BulkRecipientsUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_custom_fields**
> CustomFields delete_custom_fields(account_id, template_id, opts)

Deletes envelope custom fields in a template.

Deletes envelope custom fields in a template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  template_custom_fields: DocuSign_eSign::TemplateCustomFields.new # TemplateCustomFields | 
}

begin
  #Deletes envelope custom fields in a template.
  result = api_instance.delete_custom_fields(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->delete_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_custom_fields** | [**TemplateCustomFields**](TemplateCustomFields.md)|  | [optional] 

### Return type

[**CustomFields**](CustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_document_fields**
> DocumentFieldsInformation delete_document_fields(account_id, document_id, template_id, opts)

Deletes custom document fields from an existing template document.

Deletes custom document fields from an existing template document.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

document_id = "document_id_example" # String | The ID of the document being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  document_fields_information: DocuSign_eSign::DocumentFieldsInformation.new # DocumentFieldsInformation | 
}

begin
  #Deletes custom document fields from an existing template document.
  result = api_instance.delete_document_fields(account_id, document_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->delete_document_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **document_id** | **String**| The ID of the document being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **document_fields_information** | [**DocumentFieldsInformation**](DocumentFieldsInformation.md)|  | [optional] 

### Return type

[**DocumentFieldsInformation**](DocumentFieldsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_document_page**
> delete_document_page(account_id, document_id, page_number, template_id, opts)

Deletes a page from a document in an template.

Deletes a page from a document in a template based on the page number.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

document_id = "document_id_example" # String | The ID of the document being accessed.

page_number = "page_number_example" # String | The page number being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  page_request: DocuSign_eSign::PageRequest.new # PageRequest | 
}

begin
  #Deletes a page from a document in an template.
  api_instance.delete_document_page(account_id, document_id, page_number, template_id, opts)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->delete_document_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **document_id** | **String**| The ID of the document being accessed. | 
 **page_number** | **String**| The page number being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **page_request** | [**PageRequest**](PageRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_documents**
> TemplateDocumentsResult delete_documents(account_id, template_id, opts)

Deletes documents from a template.

Deletes one or more documents from an existing template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  envelope_definition: DocuSign_eSign::EnvelopeDefinition.new # EnvelopeDefinition | 
}

begin
  #Deletes documents from a template.
  result = api_instance.delete_documents(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->delete_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **envelope_definition** | [**EnvelopeDefinition**](EnvelopeDefinition.md)|  | [optional] 

### Return type

[**TemplateDocumentsResult**](TemplateDocumentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_group_share**
> GroupInformation delete_group_share(account_id, template_id, template_part, opts)

Removes a member group's sharing permissions for a template.

Removes a member group's sharing permissions for a specified template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

template_part = "template_part_example" # String | Currently, the only defined part is **groups**.

opts = { 
  group_information: DocuSign_eSign::GroupInformation.new # GroupInformation | 
}

begin
  #Removes a member group's sharing permissions for a template.
  result = api_instance.delete_group_share(account_id, template_id, template_part, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->delete_group_share: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_part** | **String**| Currently, the only defined part is **groups**. | 
 **group_information** | [**GroupInformation**](GroupInformation.md)|  | [optional] 

### Return type

[**GroupInformation**](GroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_lock**
> LockInformation delete_lock(account_id, template_id, opts)

Deletes a template lock.

Deletes the lock from the specified template. The `X-DocuSign-Edit` header must be included in the request.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  lock_request: DocuSign_eSign::LockRequest.new # LockRequest | 
}

begin
  #Deletes a template lock.
  result = api_instance.delete_lock(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->delete_lock: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **lock_request** | [**LockRequest**](LockRequest.md)|  | [optional] 

### Return type

[**LockInformation**](LockInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_recipient**
> Recipients delete_recipient(account_id, recipient_id, template_id, opts)

Deletes the specified recipient file from a template.

Deletes the specified recipient file from the specified template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  template_recipients: DocuSign_eSign::TemplateRecipients.new # TemplateRecipients | 
}

begin
  #Deletes the specified recipient file from a template.
  result = api_instance.delete_recipient(account_id, recipient_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->delete_recipient: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_recipients** | [**TemplateRecipients**](TemplateRecipients.md)|  | [optional] 

### Return type

[**Recipients**](Recipients.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_recipients**
> Recipients delete_recipients(account_id, template_id, opts)

Deletes recipients from a template.

Deletes one or more recipients from a template. Recipients to be deleted are listed in the request, with the `recipientId` being used as the key for deleting recipients.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  template_recipients: DocuSign_eSign::TemplateRecipients.new # TemplateRecipients | 
}

begin
  #Deletes recipients from a template.
  result = api_instance.delete_recipients(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->delete_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_recipients** | [**TemplateRecipients**](TemplateRecipients.md)|  | [optional] 

### Return type

[**Recipients**](Recipients.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_tabs**
> Tabs delete_tabs(account_id, recipient_id, template_id, opts)

Deletes the tabs associated with a recipient in a template.

Deletes one or more tabs associated with a recipient in a template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  template_tabs: DocuSign_eSign::TemplateTabs.new # TemplateTabs | 
}

begin
  #Deletes the tabs associated with a recipient in a template.
  result = api_instance.delete_tabs(account_id, recipient_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->delete_tabs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_tabs** | [**TemplateTabs**](TemplateTabs.md)|  | [optional] 

### Return type

[**Tabs**](Tabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EnvelopeTemplate get(account_id, template_id, opts)

Gets a list of templates for a specified account.

Retrieves the definition of the specified template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  include: "include_example" # String | 
}

begin
  #Gets a list of templates for a specified account.
  result = api_instance.get(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **include** | **String**|  | [optional] 

### Return type

[**EnvelopeTemplate**](EnvelopeTemplate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_document**
> File get_document(account_id, document_id, template_id, opts)

Gets PDF documents from a template.

Retrieves one or more PDF documents from the specified template.  You can specify the ID of the document to retrieve or can specify `combined` to retrieve all documents in the template as one pdf.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

document_id = "document_id_example" # String | The ID of the document being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  encrypt: "encrypt_example", # String | 
  show_changes: "show_changes_example" # String | 
}

begin
  #Gets PDF documents from a template.
  result = api_instance.get_document(account_id, document_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->get_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **document_id** | **String**| The ID of the document being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **encrypt** | **String**|  | [optional] 
 **show_changes** | **String**|  | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf



# **get_document_page_image**
> File get_document_page_image(account_id, document_id, page_number, template_id, opts)

Gets a page image from a template for display.

Retrieves a page image for display from the specified template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

document_id = "document_id_example" # String | The ID of the document being accessed.

page_number = "page_number_example" # String | The page number being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  dpi: "dpi_example", # String | 
  max_height: "max_height_example", # String | 
  max_width: "max_width_example", # String | 
  show_changes: "show_changes_example" # String | 
}

begin
  #Gets a page image from a template for display.
  result = api_instance.get_document_page_image(account_id, document_id, page_number, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->get_document_page_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **document_id** | **String**| The ID of the document being accessed. | 
 **page_number** | **String**| The page number being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **dpi** | **String**|  | [optional] 
 **max_height** | **String**|  | [optional] 
 **max_width** | **String**|  | [optional] 
 **show_changes** | **String**|  | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png



# **get_lock**
> LockInformation get_lock(account_id, template_id)

Gets template lock information.

Retrieves general information about the template lock.  If the call is made by the user who has the lock and the request has the same integrator key as original, then the `X-DocuSign-Edit` header  field and additional lock information is included in the response. This allows users to recover a lost editing session token and the `X-DocuSign-Edit` header.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.


begin
  #Gets template lock information.
  result = api_instance.get_lock(account_id, template_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->get_lock: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 

### Return type

[**LockInformation**](LockInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_notification_settings**
> Notification get_notification_settings(account_id, template_id)

Gets template notification information.

Retrieves the envelope notification, reminders and expirations, information for an existing template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.


begin
  #Gets template notification information.
  result = api_instance.get_notification_settings(account_id, template_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->get_notification_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 

### Return type

[**Notification**](Notification.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_bulk_recipients**
> BulkRecipientsResponse list_bulk_recipients(account_id, recipient_id, template_id, opts)

Gets the bulk recipient file from a template.

Retrieves the bulk recipient file information from a template that has a bulk recipient.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  include_tabs: "include_tabs_example", # String | 
  start_position: "start_position_example" # String | 
}

begin
  #Gets the bulk recipient file from a template.
  result = api_instance.list_bulk_recipients(account_id, recipient_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->list_bulk_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **include_tabs** | **String**|  | [optional] 
 **start_position** | **String**|  | [optional] 

### Return type

[**BulkRecipientsResponse**](BulkRecipientsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_custom_fields**
> CustomFields list_custom_fields(account_id, template_id)

Gets the custom document fields from a template.

Retrieves the custom document field information from an existing template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.


begin
  #Gets the custom document fields from a template.
  result = api_instance.list_custom_fields(account_id, template_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->list_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 

### Return type

[**CustomFields**](CustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_document_fields**
> DocumentFieldsInformation list_document_fields(account_id, document_id, template_id)

Gets the custom document fields for a an existing template document.

Retrieves the custom document fields for an existing template document.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

document_id = "document_id_example" # String | The ID of the document being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.


begin
  #Gets the custom document fields for a an existing template document.
  result = api_instance.list_document_fields(account_id, document_id, template_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->list_document_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **document_id** | **String**| The ID of the document being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 

### Return type

[**DocumentFieldsInformation**](DocumentFieldsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_documents**
> TemplateDocumentsResult list_documents(account_id, template_id)

Gets a list of documents associated with a template.

Retrieves a list of documents associated with the specified template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.


begin
  #Gets a list of documents associated with a template.
  result = api_instance.list_documents(account_id, template_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->list_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 

### Return type

[**TemplateDocumentsResult**](TemplateDocumentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_recipients**
> Recipients list_recipients(account_id, template_id, opts)

Gets recipient information from a template.

Retrieves the information for all recipients in the specified template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  include_anchor_tab_locations: "include_anchor_tab_locations_example", # String |  When set to **true** and `include_tabs` is set to **true**, all tabs with anchor tab properties are included in the response. 
  include_extended: "include_extended_example", # String |  When set to **true**, the extended properties are included in the response. 
  include_tabs: "include_tabs_example" # String | When set to **true**, the tab information associated with the recipient is included in the response.
}

begin
  #Gets recipient information from a template.
  result = api_instance.list_recipients(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->list_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **include_anchor_tab_locations** | **String**|  When set to **true** and &#x60;include_tabs&#x60; is set to **true**, all tabs with anchor tab properties are included in the response.  | [optional] 
 **include_extended** | **String**|  When set to **true**, the extended properties are included in the response.  | [optional] 
 **include_tabs** | **String**| When set to **true**, the tab information associated with the recipient is included in the response. | [optional] 

### Return type

[**Recipients**](Recipients.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_tabs**
> Tabs list_tabs(account_id, recipient_id, template_id, opts)

Gets the tabs information for a signer or sign-in-person recipient in a template.

Gets the tabs information for a signer or sign-in-person recipient in a template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  include_anchor_tab_locations: "include_anchor_tab_locations_example", # String | When set to **true**, all tabs with anchor tab properties are included in the response. 
  include_metadata: "include_metadata_example" # String | 
}

begin
  #Gets the tabs information for a signer or sign-in-person recipient in a template.
  result = api_instance.list_tabs(account_id, recipient_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->list_tabs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **include_anchor_tab_locations** | **String**| When set to **true**, all tabs with anchor tab properties are included in the response.  | [optional] 
 **include_metadata** | **String**|  | [optional] 

### Return type

[**Tabs**](Tabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_templates**
> EnvelopeTemplateResults list_templates(account_id, opts)

Gets the definition of a template.

Retrieves the list of templates for the specified account. The request can be limited to a specific folder.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  count: "count_example", # String | Number of records to return in the cache.
  folder: "folder_example", # String | The query value can be a folder name or folder ID. The response will only return templates in the specified folder.
  folder_ids: "folder_ids_example", # String | A comma separated list of folder ID GUIDs.
  from_date: "from_date_example", # String | Start of the search date range. Only returns templates created on or after this date/time. If no value is specified, there is no limit on the earliest date created.
  include: "include_example", # String | A comma separated list of additional template attributes to include in the response. Valid values are: recipients, folders, documents, custom_fields, and notifications.
  order: "order_example", # String | Sets the direction order used to sort the list. Valid values are: -asc = ascending sort order (a to z)  -desc = descending sort order (z to a)
  order_by: "order_by_example", # String | Sets the file attribute used to sort the list. Valid values are:  -name: template name  -modified: date/time template was last modified.  -used: date/time the template was last used.
  search_text: "search_text_example", # String | The search text used to search the names of templates.
  shared: "shared_example", # String | 
  shared_by_me: "shared_by_me_example", # String | If true, the response only includes templates shared by the user. If false, the response only returns template not shared by the user. If not specified, the response is not affected.
  start_position: "start_position_example", # String | The starting index for the first template shown in the response. This must be greater than or equal to 0 (zero).
  to_date: "to_date_example", # String | End of the search date range. Only returns templates created up to this date/time. If no value is provided, this defaults to the current date.
  used_from_date: "used_from_date_example", # String | Start of the search date range. Only returns templates used or edited on or after this date/time. If no value is specified, there is no limit on the earliest date used.
  used_to_date: "used_to_date_example", # String | End of the search date range. Only returns templates used or edited up to this date/time. If no value is provided, this defaults to the current date.
  user_filter: "user_filter_example" # String | Sets if the templates shown in the response Valid values are:  -owned_by_me: only shows templates the user owns.  -shared_with_me: only shows templates that are shared with the user.  -all: shows all templates owned or shared with the user.
}

begin
  #Gets the definition of a template.
  result = api_instance.list_templates(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->list_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **count** | **String**| Number of records to return in the cache. | [optional] 
 **folder** | **String**| The query value can be a folder name or folder ID. The response will only return templates in the specified folder. | [optional] 
 **folder_ids** | **String**| A comma separated list of folder ID GUIDs. | [optional] 
 **from_date** | **String**| Start of the search date range. Only returns templates created on or after this date/time. If no value is specified, there is no limit on the earliest date created. | [optional] 
 **include** | **String**| A comma separated list of additional template attributes to include in the response. Valid values are: recipients, folders, documents, custom_fields, and notifications. | [optional] 
 **order** | **String**| Sets the direction order used to sort the list. Valid values are: -asc &#x3D; ascending sort order (a to z)  -desc &#x3D; descending sort order (z to a) | [optional] 
 **order_by** | **String**| Sets the file attribute used to sort the list. Valid values are:  -name: template name  -modified: date/time template was last modified.  -used: date/time the template was last used. | [optional] 
 **search_text** | **String**| The search text used to search the names of templates. | [optional] 
 **shared** | **String**|  | [optional] 
 **shared_by_me** | **String**| If true, the response only includes templates shared by the user. If false, the response only returns template not shared by the user. If not specified, the response is not affected. | [optional] 
 **start_position** | **String**| The starting index for the first template shown in the response. This must be greater than or equal to 0 (zero). | [optional] 
 **to_date** | **String**| End of the search date range. Only returns templates created up to this date/time. If no value is provided, this defaults to the current date. | [optional] 
 **used_from_date** | **String**| Start of the search date range. Only returns templates used or edited on or after this date/time. If no value is specified, there is no limit on the earliest date used. | [optional] 
 **used_to_date** | **String**| End of the search date range. Only returns templates used or edited up to this date/time. If no value is provided, this defaults to the current date. | [optional] 
 **user_filter** | **String**| Sets if the templates shown in the response Valid values are:  -owned_by_me: only shows templates the user owns.  -shared_with_me: only shows templates that are shared with the user.  -all: shows all templates owned or shared with the user. | [optional] 

### Return type

[**EnvelopeTemplateResults**](EnvelopeTemplateResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **rotate_document_page**
> rotate_document_page(account_id, document_id, page_number, template_id, opts)

Rotates page image from a template for display.

Rotates page image from a template for display. The page image can be rotated to the left or right.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

document_id = "document_id_example" # String | The ID of the document being accessed.

page_number = "page_number_example" # String | The page number being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  page_request: DocuSign_eSign::PageRequest.new # PageRequest | 
}

begin
  #Rotates page image from a template for display.
  api_instance.rotate_document_page(account_id, document_id, page_number, template_id, opts)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->rotate_document_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **document_id** | **String**| The ID of the document being accessed. | 
 **page_number** | **String**| The page number being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **page_request** | [**PageRequest**](PageRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> TemplateUpdateSummary update(account_id, template_id, opts)

Updates an existing template.

Updates an existing template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  envelope_template: DocuSign_eSign::EnvelopeTemplate.new # EnvelopeTemplate | 
}

begin
  #Updates an existing template.
  result = api_instance.update(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **envelope_template** | [**EnvelopeTemplate**](EnvelopeTemplate.md)|  | [optional] 

### Return type

[**TemplateUpdateSummary**](TemplateUpdateSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_bulk_recipients**
> BulkRecipientsSummaryResponse update_bulk_recipients(account_id, recipient_id, template_id, opts)

Adds or replaces the bulk recipients list in a template.

Updates the bulk recipients in a template using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  bulk_recipients_request: DocuSign_eSign::BulkRecipientsRequest.new # BulkRecipientsRequest | 
}

begin
  #Adds or replaces the bulk recipients list in a template.
  result = api_instance.update_bulk_recipients(account_id, recipient_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update_bulk_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **bulk_recipients_request** | [**BulkRecipientsRequest**](BulkRecipientsRequest.md)|  | [optional] 

### Return type

[**BulkRecipientsSummaryResponse**](BulkRecipientsSummaryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_custom_fields**
> CustomFields update_custom_fields(account_id, template_id, opts)

Updates envelope custom fields in a template.

Updates the custom fields in a template.  Each custom field used in a template must have a unique name.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  template_custom_fields: DocuSign_eSign::TemplateCustomFields.new # TemplateCustomFields | 
}

begin
  #Updates envelope custom fields in a template.
  result = api_instance.update_custom_fields(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_custom_fields** | [**TemplateCustomFields**](TemplateCustomFields.md)|  | [optional] 

### Return type

[**CustomFields**](CustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_document**
> EnvelopeDocument update_document(account_id, document_id, template_id, opts)

Adds a document to a template document.

Adds the specified document to an existing template document.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

document_id = "document_id_example" # String | The ID of the document being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  apply_document_fields: "apply_document_fields_example", # String | 
  is_envelope_definition: "is_envelope_definition_example", # String | 
  envelope_definition: DocuSign_eSign::EnvelopeDefinition.new # EnvelopeDefinition | 
}

begin
  #Adds a document to a template document.
  result = api_instance.update_document(account_id, document_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **document_id** | **String**| The ID of the document being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **apply_document_fields** | **String**|  | [optional] 
 **is_envelope_definition** | **String**|  | [optional] 
 **envelope_definition** | [**EnvelopeDefinition**](EnvelopeDefinition.md)|  | [optional] 

### Return type

[**EnvelopeDocument**](EnvelopeDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_document_fields**
> DocumentFieldsInformation update_document_fields(account_id, document_id, template_id, opts)

Updates existing custom document fields in an existing template document.

Updates existing custom document fields in an existing template document.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

document_id = "document_id_example" # String | The ID of the document being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  document_fields_information: DocuSign_eSign::DocumentFieldsInformation.new # DocumentFieldsInformation | 
}

begin
  #Updates existing custom document fields in an existing template document.
  result = api_instance.update_document_fields(account_id, document_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update_document_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **document_id** | **String**| The ID of the document being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **document_fields_information** | [**DocumentFieldsInformation**](DocumentFieldsInformation.md)|  | [optional] 

### Return type

[**DocumentFieldsInformation**](DocumentFieldsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_documents**
> TemplateDocumentsResult update_documents(account_id, template_id, opts)

Adds documents to a template document.

Adds one or more documents to an existing template document.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  apply_document_fields: "apply_document_fields_example", # String | 
  envelope_definition: DocuSign_eSign::EnvelopeDefinition.new # EnvelopeDefinition | 
}

begin
  #Adds documents to a template document.
  result = api_instance.update_documents(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **apply_document_fields** | **String**|  | [optional] 
 **envelope_definition** | [**EnvelopeDefinition**](EnvelopeDefinition.md)|  | [optional] 

### Return type

[**TemplateDocumentsResult**](TemplateDocumentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_group_share**
> GroupInformation update_group_share(account_id, template_id, template_part, opts)

Shares a template with a group

Shares a template with the specified members group.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

template_part = "template_part_example" # String | Currently, the only defined part is **groups**.

opts = { 
  group_information: DocuSign_eSign::GroupInformation.new # GroupInformation | 
}

begin
  #Shares a template with a group
  result = api_instance.update_group_share(account_id, template_id, template_part, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update_group_share: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_part** | **String**| Currently, the only defined part is **groups**. | 
 **group_information** | [**GroupInformation**](GroupInformation.md)|  | [optional] 

### Return type

[**GroupInformation**](GroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_lock**
> LockInformation update_lock(account_id, template_id, opts)

Updates a template lock.

Updates the lock duration time or update the `lockedByApp` property information for the specified template. The user and integrator key must match the user specified by the `lockByUser` property and integrator key information and the `X-DocuSign-Edit` header must be included or an error will be generated.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  lock_request: DocuSign_eSign::LockRequest.new # LockRequest | 
}

begin
  #Updates a template lock.
  result = api_instance.update_lock(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update_lock: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **lock_request** | [**LockRequest**](LockRequest.md)|  | [optional] 

### Return type

[**LockInformation**](LockInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_notification_settings**
> Notification update_notification_settings(account_id, template_id, opts)

Updates the notification  structure for an existing template.

Updates the notification structure for an existing template. Use this endpoint to set reminder and expiration notifications.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  template_notification_request: DocuSign_eSign::TemplateNotificationRequest.new # TemplateNotificationRequest | 
}

begin
  #Updates the notification  structure for an existing template.
  result = api_instance.update_notification_settings(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update_notification_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_notification_request** | [**TemplateNotificationRequest**](TemplateNotificationRequest.md)|  | [optional] 

### Return type

[**Notification**](Notification.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_recipients**
> RecipientsUpdateSummary update_recipients(account_id, template_id, opts)

Updates recipients in a template.

Updates recipients in a template.   You can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  resend_envelope: "resend_envelope_example", # String | 
  template_recipients: DocuSign_eSign::TemplateRecipients.new # TemplateRecipients | 
}

begin
  #Updates recipients in a template.
  result = api_instance.update_recipients(account_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **resend_envelope** | **String**|  | [optional] 
 **template_recipients** | [**TemplateRecipients**](TemplateRecipients.md)|  | [optional] 

### Return type

[**RecipientsUpdateSummary**](RecipientsUpdateSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_tabs**
> Tabs update_tabs(account_id, recipient_id, template_id, opts)

Updates the tabs for a recipient.

Updates one or more tabs for a recipient in a template.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::TemplatesApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

recipient_id = "recipient_id_example" # String | The ID of the recipient being accessed.

template_id = "template_id_example" # String | The ID of the template being accessed.

opts = { 
  template_tabs: DocuSign_eSign::TemplateTabs.new # TemplateTabs | 
}

begin
  #Updates the tabs for a recipient.
  result = api_instance.update_tabs(account_id, recipient_id, template_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling TemplatesApi->update_tabs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **recipient_id** | **String**| The ID of the recipient being accessed. | 
 **template_id** | **String**| The ID of the template being accessed. | 
 **template_tabs** | [**TemplateTabs**](TemplateTabs.md)|  | [optional] 

### Return type

[**Tabs**](Tabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



