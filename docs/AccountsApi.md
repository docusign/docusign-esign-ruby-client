# DocuSign_eSign::AccountsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](AccountsApi.md#create) | **POST** /v2/accounts | Creates new accounts.
[**create_brand**](AccountsApi.md#create_brand) | **POST** /v2/accounts/{accountId}/brands | Creates one or more brand profile files for the account.
[**create_e_mortgage_transaction**](AccountsApi.md#create_e_mortgage_transaction) | **POST** /v2/accounts/{accountId}/eMortgage/transactions | Starts a new eMortgage Transaction
[**create_permission_profile**](AccountsApi.md#create_permission_profile) | **POST** /v2/accounts/{accountId}/permission_profiles | Creates a new permission profile in the specified account.
[**delete**](AccountsApi.md#delete) | **DELETE** /v2/accounts/{accountId} | Deletes the specified account.
[**delete_brand**](AccountsApi.md#delete_brand) | **DELETE** /v2/accounts/{accountId}/brands/{brandId} | Removes a brand.
[**delete_brand_logo_by_type**](AccountsApi.md#delete_brand_logo_by_type) | **DELETE** /v2/accounts/{accountId}/brands/{brandId}/logos/{logoType} | Delete one branding logo.
[**delete_brands**](AccountsApi.md#delete_brands) | **DELETE** /v2/accounts/{accountId}/brands | Deletes one or more brand profiles.
[**delete_captive_recipient**](AccountsApi.md#delete_captive_recipient) | **DELETE** /v2/accounts/{accountId}/captive_recipients/{recipientPart} | Deletes the signature for one or more captive recipient records.
[**delete_e_note_configuration**](AccountsApi.md#delete_e_note_configuration) | **DELETE** /v2/accounts/{accountId}/settings/enote_configuration | Deletes configuration information for the eNote eOriginal integration.
[**delete_permission_profile**](AccountsApi.md#delete_permission_profile) | **DELETE** /v2/accounts/{accountId}/permission_profiles/{permissionProfileId} | Deletes a permissions profile within the specified account.
[**get_account_information**](AccountsApi.md#get_account_information) | **GET** /v2/accounts/{accountId} | Retrieves the account information for the specified account.
[**get_account_tab_settings**](AccountsApi.md#get_account_tab_settings) | **GET** /v2/accounts/{accountId}/settings/tabs | Returns tab settings list for specified account
[**get_billing_charges**](AccountsApi.md#get_billing_charges) | **GET** /v2/accounts/{accountId}/billing_charges | Gets list of recurring and usage charges for the account.
[**get_brand**](AccountsApi.md#get_brand) | **GET** /v2/accounts/{accountId}/brands/{brandId} | Get information for a specific brand.
[**get_brand_logo_by_type**](AccountsApi.md#get_brand_logo_by_type) | **GET** /v2/accounts/{accountId}/brands/{brandId}/logos/{logoType} | Obtains the specified image for a brand.
[**get_brand_resources**](AccountsApi.md#get_brand_resources) | **GET** /v2/accounts/{accountId}/brands/{brandId}/resources | Returns the specified account&#39;s list of branding resources (metadata).
[**get_brand_resources_by_content_type**](AccountsApi.md#get_brand_resources_by_content_type) | **GET** /v2/accounts/{accountId}/brands/{brandId}/resources/{resourceContentType} | Returns the specified branding resource file.
[**get_consumer_disclosure**](AccountsApi.md#get_consumer_disclosure) | **GET** /v2/accounts/{accountId}/consumer_disclosure/{langCode} | Gets the Electronic Record and Signature Disclosure.
[**get_consumer_disclosure_default**](AccountsApi.md#get_consumer_disclosure_default) | **GET** /v2/accounts/{accountId}/consumer_disclosure | Gets the Electronic Record and Signature Disclosure for the account.
[**get_e_note_configuration**](AccountsApi.md#get_e_note_configuration) | **GET** /v2/accounts/{accountId}/settings/enote_configuration | Returns the configuration information for the eNote eOriginal integration.
[**get_permission_profile**](AccountsApi.md#get_permission_profile) | **GET** /v2/accounts/{accountId}/permission_profiles/{permissionProfileId} | Returns a permissions profile in the specified account.
[**get_provisioning**](AccountsApi.md#get_provisioning) | **GET** /v2/accounts/provisioning | Retrieves the account provisioning information for the account.
[**list_brands**](AccountsApi.md#list_brands) | **GET** /v2/accounts/{accountId}/brands | Gets a list of brand profiles.
[**list_custom_fields**](AccountsApi.md#list_custom_fields) | **GET** /v2/accounts/{accountId}/custom_fields | Gets a list of custom fields associated with the account.
[**list_permissions**](AccountsApi.md#list_permissions) | **GET** /v2/accounts/{accountId}/permission_profiles | Gets a list of permission profiles.
[**list_recipient_names_by_email**](AccountsApi.md#list_recipient_names_by_email) | **GET** /v2/accounts/{accountId}/recipient_names | Gets recipient names associated with an email address.
[**list_settings**](AccountsApi.md#list_settings) | **GET** /v2/accounts/{accountId}/settings | Gets account settings information.
[**list_shared_access**](AccountsApi.md#list_shared_access) | **GET** /v2/accounts/{accountId}/shared_access | Reserved: Gets the shared item status for one or more users.
[**list_signature_providers**](AccountsApi.md#list_signature_providers) | **GET** /v2/accounts/{accountId}/signatureProviders | Returns Account available signature providers for specified account.
[**list_unsupported_file_types**](AccountsApi.md#list_unsupported_file_types) | **GET** /v2/accounts/{accountId}/unsupported_file_types | Gets a list of unsupported file types.
[**update_account_tab_settings**](AccountsApi.md#update_account_tab_settings) | **PUT** /v2/accounts/{accountId}/settings/tabs | Modifies tab settings for specified account
[**update_brand**](AccountsApi.md#update_brand) | **PUT** /v2/accounts/{accountId}/brands/{brandId} | Updates an existing brand.
[**update_brand_logo_by_type**](AccountsApi.md#update_brand_logo_by_type) | **PUT** /v2/accounts/{accountId}/brands/{brandId}/logos/{logoType} | Put one branding logo.
[**update_brand_resources_by_content_type**](AccountsApi.md#update_brand_resources_by_content_type) | **PUT** /v2/accounts/{accountId}/brands/{brandId}/resources/{resourceContentType} | Uploads a branding resource file.
[**update_e_note_configuration**](AccountsApi.md#update_e_note_configuration) | **PUT** /v2/accounts/{accountId}/settings/enote_configuration | Updates configuration information for the eNote eOriginal integration.
[**update_permission_profile**](AccountsApi.md#update_permission_profile) | **PUT** /v2/accounts/{accountId}/permission_profiles/{permissionProfileId} | Updates a permission profile within the specified account.
[**update_settings**](AccountsApi.md#update_settings) | **PUT** /v2/accounts/{accountId}/settings | Updates the account settings for an account.
[**update_shared_access**](AccountsApi.md#update_shared_access) | **PUT** /v2/accounts/{accountId}/shared_access | Reserved: Sets the shared access information for users.


# **create**
> NewAccountSummary create(opts)

Creates new accounts.

Creates new DocuSign service accounts.  This is used to create multiple DocuSign accounts with one call. It uses the same information and formats as the normal a  [Accounts:create](accounts_create) call with the information included within a `newAccountRequests` element. A maximum of 100 new accounts can be created at one time.  Note that the structure of the XML request is slightly different than the JSON request, in that the new account information is included in a `newAccountDefinition` property inside the `newAccountRequests` element. Response  The response returns the new account ID, password and the default user information for each newly created account.  A 201 code is returned if the call succeeded.  While the call may have succeed, some of the individual account requests may have failed. In the case of failures to create the account,  an `errorDetails` node is added in the response to each specific request that failed.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

opts = { 
  preview_billing_plan: "preview_billing_plan_example", # String | When set to **true**, creates the account using a preview billing plan.
  new_account_definition: DocuSign_eSign::NewAccountDefinition.new # NewAccountDefinition | 
}

begin
  #Creates new accounts.
  result = api_instance.create(opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **preview_billing_plan** | **String**| When set to **true**, creates the account using a preview billing plan. | [optional] 
 **new_account_definition** | [**NewAccountDefinition**](NewAccountDefinition.md)|  | [optional] 

### Return type

[**NewAccountSummary**](NewAccountSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_brand**
> BrandsResponse create_brand(account_id, opts)

Creates one or more brand profile files for the account.

Creates one or more brand profile files for the account. The Account Branding feature (accountSettings properties `canSelfBrandSend` and `canSelfBrandSig`) must be set to **true** for the account to use this call.  An error is returned if `brandId` property for a brand profile is already set for the account. To upload a new version of an existing brand profile, you must delete the profile and then upload the newer version.  When brand profile files are being uploaded, they must be combined into one zip file and the `Content-Type` must be `application/zip`.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  brand: DocuSign_eSign::Brand.new # Brand | 
}

begin
  #Creates one or more brand profile files for the account.
  result = api_instance.create_brand(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->create_brand: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brand** | [**Brand**](Brand.md)|  | [optional] 

### Return type

[**BrandsResponse**](BrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_e_mortgage_transaction**
> PostTransactionsResponse create_e_mortgage_transaction(account_id, opts)

Starts a new eMortgage Transaction

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  post_transactions_request: DocuSign_eSign::PostTransactionsRequest.new # PostTransactionsRequest | 
}

begin
  #Starts a new eMortgage Transaction
  result = api_instance.create_e_mortgage_transaction(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->create_e_mortgage_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **post_transactions_request** | [**PostTransactionsRequest**](PostTransactionsRequest.md)|  | [optional] 

### Return type

[**PostTransactionsResponse**](PostTransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_permission_profile**
> PermissionProfile create_permission_profile(account_id, opts)

Creates a new permission profile in the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  include: "include_example", # String | 
  permission_profile: DocuSign_eSign::PermissionProfile.new # PermissionProfile | 
}

begin
  #Creates a new permission profile in the specified account.
  result = api_instance.create_permission_profile(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->create_permission_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **include** | **String**|  | [optional] 
 **permission_profile** | [**PermissionProfile**](PermissionProfile.md)|  | [optional] 

### Return type

[**PermissionProfile**](PermissionProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete**
> delete(account_id)

Deletes the specified account.

This closes the specified account. You must be an account admin to close your account. Once closed, an account must be reopened by DocuSign.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.


begin
  #Deletes the specified account.
  api_instance.delete(account_id)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_brand**
> delete_brand(account_id, brand_id)

Removes a brand.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

brand_id = "brand_id_example" # String | The unique identifier of a brand.


begin
  #Removes a brand.
  api_instance.delete_brand(account_id, brand_id)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->delete_brand: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brand_id** | **String**| The unique identifier of a brand. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_brand_logo_by_type**
> delete_brand_logo_by_type(account_id, brand_id, logo_type)

Delete one branding logo.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

brand_id = "brand_id_example" # String | The unique identifier of a brand.

logo_type = "logo_type_example" # String | One of **Primary**, **Secondary** or **Email**.


begin
  #Delete one branding logo.
  api_instance.delete_brand_logo_by_type(account_id, brand_id, logo_type)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->delete_brand_logo_by_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brand_id** | **String**| The unique identifier of a brand. | 
 **logo_type** | **String**| One of **Primary**, **Secondary** or **Email**. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_brands**
> BrandsResponse delete_brands(account_id, opts)

Deletes one or more brand profiles.

Deletes one or more brand profiles from an account. The Account Branding feature (accountSettings properties `canSelfBrandSend` and `canSelfBrandSend`) must be set to **true** to use this call.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  brands_request: DocuSign_eSign::BrandsRequest.new # BrandsRequest | 
}

begin
  #Deletes one or more brand profiles.
  result = api_instance.delete_brands(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->delete_brands: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brands_request** | [**BrandsRequest**](BrandsRequest.md)|  | [optional] 

### Return type

[**BrandsResponse**](BrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_captive_recipient**
> CaptiveRecipientInformation delete_captive_recipient(account_id, recipient_part, opts)

Deletes the signature for one or more captive recipient records.

Deletes the signature for one or more captive recipient records; it is primarily used for testing. This provides a way to reset the signature associated with a client user ID so that a new signature can be created the next time the client user ID is used.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

recipient_part = "recipient_part_example" # String | 

opts = { 
  captive_recipient_information: DocuSign_eSign::CaptiveRecipientInformation.new # CaptiveRecipientInformation | 
}

begin
  #Deletes the signature for one or more captive recipient records.
  result = api_instance.delete_captive_recipient(account_id, recipient_part, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->delete_captive_recipient: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **recipient_part** | **String**|  | 
 **captive_recipient_information** | [**CaptiveRecipientInformation**](CaptiveRecipientInformation.md)|  | [optional] 

### Return type

[**CaptiveRecipientInformation**](CaptiveRecipientInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_e_note_configuration**
> delete_e_note_configuration(account_id)

Deletes configuration information for the eNote eOriginal integration.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.


begin
  #Deletes configuration information for the eNote eOriginal integration.
  api_instance.delete_e_note_configuration(account_id)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->delete_e_note_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_permission_profile**
> delete_permission_profile(account_id, permission_profile_id)

Deletes a permissions profile within the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

permission_profile_id = "permission_profile_id_example" # String | 


begin
  #Deletes a permissions profile within the specified account.
  api_instance.delete_permission_profile(account_id, permission_profile_id)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->delete_permission_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **permission_profile_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_information**
> AccountInformation get_account_information(account_id, opts)

Retrieves the account information for the specified account.

Retrieves the account information for the specified account.  **Response** The `canUpgrade` property contains is a Boolean that indicates whether the account can be upgraded through the API. 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  include_account_settings: "include_account_settings_example" # String | When set to **true**, includes the account settings for the account in the response.
}

begin
  #Retrieves the account information for the specified account.
  result = api_instance.get_account_information(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_account_information: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **include_account_settings** | **String**| When set to **true**, includes the account settings for the account in the response. | [optional] 

### Return type

[**AccountInformation**](AccountInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_tab_settings**
> TabAccountSettings get_account_tab_settings(account_id)

Returns tab settings list for specified account

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.


begin
  #Returns tab settings list for specified account
  result = api_instance.get_account_tab_settings(account_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_account_tab_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 

### Return type

[**TabAccountSettings**](TabAccountSettings.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_billing_charges**
> BillingChargeResponse get_billing_charges(account_id, opts)

Gets list of recurring and usage charges for the account.

Retrieves the list of recurring and usage charges for the account. This can be used to determine the charge structure and usage of charge plan items.   Privileges required: account administrator 

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  include_charges: "include_charges_example" # String | Specifies which billing charges to return. Valid values are:  * envelopes * seats 
}

begin
  #Gets list of recurring and usage charges for the account.
  result = api_instance.get_billing_charges(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_billing_charges: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **include_charges** | **String**| Specifies which billing charges to return. Valid values are:  * envelopes * seats  | [optional] 

### Return type

[**BillingChargeResponse**](BillingChargeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_brand**
> Brand get_brand(account_id, brand_id, opts)

Get information for a specific brand.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

brand_id = "brand_id_example" # String | The unique identifier of a brand.

opts = { 
  include_external_references: "include_external_references_example", # String | 
  include_logos: "include_logos_example" # String | 
}

begin
  #Get information for a specific brand.
  result = api_instance.get_brand(account_id, brand_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_brand: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brand_id** | **String**| The unique identifier of a brand. | 
 **include_external_references** | **String**|  | [optional] 
 **include_logos** | **String**|  | [optional] 

### Return type

[**Brand**](Brand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_brand_logo_by_type**
> get_brand_logo_by_type(account_id, brand_id, logo_type)

Obtains the specified image for a brand.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

brand_id = "brand_id_example" # String | The unique identifier of a brand.

logo_type = "logo_type_example" # String | One of **Primary**, **Secondary** or **Email**.


begin
  #Obtains the specified image for a brand.
  api_instance.get_brand_logo_by_type(account_id, brand_id, logo_type)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_brand_logo_by_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brand_id** | **String**| The unique identifier of a brand. | 
 **logo_type** | **String**| One of **Primary**, **Secondary** or **Email**. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_brand_resources**
> BrandResourcesList get_brand_resources(account_id, brand_id)

Returns the specified account's list of branding resources (metadata).

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

brand_id = "brand_id_example" # String | The unique identifier of a brand.


begin
  #Returns the specified account's list of branding resources (metadata).
  result = api_instance.get_brand_resources(account_id, brand_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_brand_resources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brand_id** | **String**| The unique identifier of a brand. | 

### Return type

[**BrandResourcesList**](BrandResourcesList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_brand_resources_by_content_type**
> get_brand_resources_by_content_type(account_id, brand_id, resource_content_type, opts)

Returns the specified branding resource file.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

brand_id = "brand_id_example" # String | The unique identifier of a brand.

resource_content_type = "resource_content_type_example" # String | 

opts = { 
  langcode: "langcode_example", # String | 
  return_master: "return_master_example" # String | 
}

begin
  #Returns the specified branding resource file.
  api_instance.get_brand_resources_by_content_type(account_id, brand_id, resource_content_type, opts)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_brand_resources_by_content_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brand_id** | **String**| The unique identifier of a brand. | 
 **resource_content_type** | **String**|  | 
 **langcode** | **String**|  | [optional] 
 **return_master** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_consumer_disclosure**
> ConsumerDisclosure get_consumer_disclosure(account_id, lang_code)

Gets the Electronic Record and Signature Disclosure.

Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, for the requested envelope recipient. This might be different than the current account disclosure depending on account settings, such as branding, and when the account disclosure was last updated. An optional query string can be included to return the language for the disclosure.  

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

lang_code = "lang_code_example" # String | The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to �browser� to automatically detect the browser language being used by the viewer and display the disclosure in that language.


begin
  #Gets the Electronic Record and Signature Disclosure.
  result = api_instance.get_consumer_disclosure(account_id, lang_code)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_consumer_disclosure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **lang_code** | **String**| The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to �browser� to automatically detect the browser language being used by the viewer and display the disclosure in that language. | 

### Return type

[**ConsumerDisclosure**](ConsumerDisclosure.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_consumer_disclosure_default**
> ConsumerDisclosure get_consumer_disclosure_default(account_id, opts)

Gets the Electronic Record and Signature Disclosure for the account.

Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, associated with the account. You can use an optional query string to set the language for the disclosure.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  lang_code: "lang_code_example" # String | Specifies the language used in the response. The supported languages, with the language value shown in parenthesis, are: Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk), and Vietnamese (vi).  Additionally, the value can be set to `browser` to automatically detect the browser language being used by the viewer and display the disclosure in that language. 
}

begin
  #Gets the Electronic Record and Signature Disclosure for the account.
  result = api_instance.get_consumer_disclosure_default(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_consumer_disclosure_default: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **lang_code** | **String**| Specifies the language used in the response. The supported languages, with the language value shown in parenthesis, are: Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk), and Vietnamese (vi).  Additionally, the value can be set to &#x60;browser&#x60; to automatically detect the browser language being used by the viewer and display the disclosure in that language.  | [optional] 

### Return type

[**ConsumerDisclosure**](ConsumerDisclosure.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_e_note_configuration**
> ENoteConfiguration get_e_note_configuration(account_id)

Returns the configuration information for the eNote eOriginal integration.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.


begin
  #Returns the configuration information for the eNote eOriginal integration.
  result = api_instance.get_e_note_configuration(account_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_e_note_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 

### Return type

[**ENoteConfiguration**](ENoteConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_permission_profile**
> PermissionProfile get_permission_profile(account_id, permission_profile_id, opts)

Returns a permissions profile in the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

permission_profile_id = "permission_profile_id_example" # String | 

opts = { 
  include: "include_example" # String | 
}

begin
  #Returns a permissions profile in the specified account.
  result = api_instance.get_permission_profile(account_id, permission_profile_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_permission_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **permission_profile_id** | **String**|  | 
 **include** | **String**|  | [optional] 

### Return type

[**PermissionProfile**](PermissionProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_provisioning**
> ProvisioningInformation get_provisioning

Retrieves the account provisioning information for the account.

Retrieves the account provisioning information for the account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

begin
  #Retrieves the account provisioning information for the account.
  result = api_instance.get_provisioning
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->get_provisioning: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProvisioningInformation**](ProvisioningInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_brands**
> BrandsResponse list_brands(account_id, opts)

Gets a list of brand profiles.

Retrieves the list of brand profiles associated with the account and the default brand profiles. The Account Branding feature (accountSettings properties `canSelfBrandSend` and `canSelfBrandSend`)  must be set to **true** for the account to use this call.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  exclude_distributor_brand: "exclude_distributor_brand_example", # String | When set to **true**, excludes distributor brand information from the response set.
  include_logos: "include_logos_example" # String | When set to **true**, returns the logos associated with the brand.
}

begin
  #Gets a list of brand profiles.
  result = api_instance.list_brands(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->list_brands: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **exclude_distributor_brand** | **String**| When set to **true**, excludes distributor brand information from the response set. | [optional] 
 **include_logos** | **String**| When set to **true**, returns the logos associated with the brand. | [optional] 

### Return type

[**BrandsResponse**](BrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_custom_fields**
> CustomFields list_custom_fields(account_id)

Gets a list of custom fields associated with the account.

Retrieves a list of envelope custom fields associated with the account. You can use these fields in the envelopes for your account to record information about the envelope, help search for envelopes and track information. The envelope custom fields are shown in the Envelope Settings section when a user is creating an envelope in the DocuSign member console. The envelope custom fields are not seen by the envelope recipients.  There are two types of envelope custom fields, text, and list. A text custom field lets the sender enter the value for the field. The list custom field lets the sender select the value of the field from a list you provide.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.


begin
  #Gets a list of custom fields associated with the account.
  result = api_instance.list_custom_fields(account_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->list_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 

### Return type

[**CustomFields**](CustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_permissions**
> PermissionProfileInformation list_permissions(account_id, opts)

Gets a list of permission profiles.

Retrieves a list of Permission Profiles. Permission Profiles are a standard set of user permissions that you can apply to individual users or users in a Group. This makes it easier to manage user permissions for a large number of users, without having to change permissions on a user-by-user basis.  Currently, Permission Profiles can only be created and modified in the DocuSign console.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  include: "include_example" # String | 
}

begin
  #Gets a list of permission profiles.
  result = api_instance.list_permissions(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->list_permissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **include** | **String**|  | [optional] 

### Return type

[**PermissionProfileInformation**](PermissionProfileInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_recipient_names_by_email**
> RecipientNamesResponse list_recipient_names_by_email(account_id, opts)

Gets recipient names associated with an email address.

Retrieves a list of recipients in the specified account that are associated with a email address supplied in the query string.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  email: "email_example" # String | The email address for the user
}

begin
  #Gets recipient names associated with an email address.
  result = api_instance.list_recipient_names_by_email(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->list_recipient_names_by_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **email** | **String**| The email address for the user | [optional] 

### Return type

[**RecipientNamesResponse**](RecipientNamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_settings**
> AccountSettingsInformation list_settings(account_id)

Gets account settings information.

Retrieves the account settings information for the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.


begin
  #Gets account settings information.
  result = api_instance.list_settings(account_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->list_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 

### Return type

[**AccountSettingsInformation**](AccountSettingsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_shared_access**
> AccountSharedAccess list_shared_access(account_id, opts)

Reserved: Gets the shared item status for one or more users.

Reserved: Retrieves shared item status for one or more users and types of items.  Users with account administration privileges can retrieve shared access information for all account users. Users without account administrator privileges can only retrieve shared access information for themselves and the returned information is limited to the retrieving the status of all members of the account that are sharing their folders to the user. This is equivalent to setting the shared=shared_from.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  count: "count_example", # String | Specifies maximum number of results included in the response. If no value is specified, this defaults to 1000.
  envelopes_not_shared_user_status: "envelopes_not_shared_user_status_example", # String | 
  folder_ids: "folder_ids_example", # String | 
  item_type: "item_type_example", # String | Specifies the type of shared item being requested. The accepted values are: -envelopes: returns information about envelope sharing between users.
  search_text: "search_text_example", # String | This can be used to filter user names in the response. The wild-card ‘*’ (asterisk) can be used around the string.
  shared: "shared_example", # String | Specifies which users should be included in the response. Multiple values can be used in the query by using a comma separated list of shared values. If the requestor does not have account administrator privileges, the shared_to value is used. Requestors that do not have account administrator privileges can only use the shared_to, any other setting will result in an error. The accepted values are:  -not_shared: Returns account users that the specified item type is not being shared with and that are not sharing the specified item type with the user.  User X (Share) X Account user  -shared_to: Returns account users that the specified item type is not being shared with and who are sharing the specified item type with the user (only shared to the user).  User X (Share) Account user  -shared_from: Returns account users that the specified item type is being shared with and who are not sharing the specified item type with the user (only shared from the user).  User (Share) >> Account user  -shared_to_and_from: Returns account users that the specified item type is being shared with and who are sharing the specified item type with the user.  User << (Share) >> Account user
  start_position: "start_position_example", # String | If the response set exceeds Count, this can be used to specify that the method should return users starting at the specified index. The first index is 0, and should be used in the first GET call. Typically this number is a multiple of Count. If no value is specified, this defaults to be 0. 
  user_ids: "user_ids_example" # String | A comma separated list of userIds for whom the shared item information is being requested. 
}

begin
  #Reserved: Gets the shared item status for one or more users.
  result = api_instance.list_shared_access(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->list_shared_access: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **count** | **String**| Specifies maximum number of results included in the response. If no value is specified, this defaults to 1000. | [optional] 
 **envelopes_not_shared_user_status** | **String**|  | [optional] 
 **folder_ids** | **String**|  | [optional] 
 **item_type** | **String**| Specifies the type of shared item being requested. The accepted values are: -envelopes: returns information about envelope sharing between users. | [optional] 
 **search_text** | **String**| This can be used to filter user names in the response. The wild-card ‘*’ (asterisk) can be used around the string. | [optional] 
 **shared** | **String**| Specifies which users should be included in the response. Multiple values can be used in the query by using a comma separated list of shared values. If the requestor does not have account administrator privileges, the shared_to value is used. Requestors that do not have account administrator privileges can only use the shared_to, any other setting will result in an error. The accepted values are:  -not_shared: Returns account users that the specified item type is not being shared with and that are not sharing the specified item type with the user.  User X (Share) X Account user  -shared_to: Returns account users that the specified item type is not being shared with and who are sharing the specified item type with the user (only shared to the user).  User X (Share) Account user  -shared_from: Returns account users that the specified item type is being shared with and who are not sharing the specified item type with the user (only shared from the user).  User (Share) &gt;&gt; Account user  -shared_to_and_from: Returns account users that the specified item type is being shared with and who are sharing the specified item type with the user.  User &lt;&lt; (Share) &gt;&gt; Account user | [optional] 
 **start_position** | **String**| If the response set exceeds Count, this can be used to specify that the method should return users starting at the specified index. The first index is 0, and should be used in the first GET call. Typically this number is a multiple of Count. If no value is specified, this defaults to be 0.  | [optional] 
 **user_ids** | **String**| A comma separated list of userIds for whom the shared item information is being requested.  | [optional] 

### Return type

[**AccountSharedAccess**](AccountSharedAccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_signature_providers**
> AccountSignatureProviders list_signature_providers(account_id)

Returns Account available signature providers for specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.


begin
  #Returns Account available signature providers for specified account.
  result = api_instance.list_signature_providers(account_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->list_signature_providers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 

### Return type

[**AccountSignatureProviders**](AccountSignatureProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_unsupported_file_types**
> FileTypeList list_unsupported_file_types(account_id)

Gets a list of unsupported file types.

Retrieves a list of file types (mime-types and file-extensions) that are not supported for upload through the DocuSign system.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.


begin
  #Gets a list of unsupported file types.
  result = api_instance.list_unsupported_file_types(account_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->list_unsupported_file_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 

### Return type

[**FileTypeList**](FileTypeList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_account_tab_settings**
> TabAccountSettings update_account_tab_settings(account_id, opts)

Modifies tab settings for specified account

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  tab_account_settings: DocuSign_eSign::TabAccountSettings.new # TabAccountSettings | 
}

begin
  #Modifies tab settings for specified account
  result = api_instance.update_account_tab_settings(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->update_account_tab_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **tab_account_settings** | [**TabAccountSettings**](TabAccountSettings.md)|  | [optional] 

### Return type

[**TabAccountSettings**](TabAccountSettings.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_brand**
> Brand update_brand(account_id, brand_id, opts)

Updates an existing brand.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

brand_id = "brand_id_example" # String | The unique identifier of a brand.

opts = { 
  brand: DocuSign_eSign::Brand.new # Brand | 
}

begin
  #Updates an existing brand.
  result = api_instance.update_brand(account_id, brand_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->update_brand: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brand_id** | **String**| The unique identifier of a brand. | 
 **brand** | [**Brand**](Brand.md)|  | [optional] 

### Return type

[**Brand**](Brand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_brand_logo_by_type**
> update_brand_logo_by_type(account_id, brand_id, logo_type)

Put one branding logo.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

brand_id = "brand_id_example" # String | The unique identifier of a brand.

logo_type = "logo_type_example" # String | One of **Primary**, **Secondary** or **Email**.


begin
  #Put one branding logo.
  api_instance.update_brand_logo_by_type(account_id, brand_id, logo_type)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->update_brand_logo_by_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brand_id** | **String**| The unique identifier of a brand. | 
 **logo_type** | **String**| One of **Primary**, **Secondary** or **Email**. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_brand_resources_by_content_type**
> BrandResources update_brand_resources_by_content_type(account_id, brand_id, resource_content_type)

Uploads a branding resource file.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

brand_id = "brand_id_example" # String | The unique identifier of a brand.

resource_content_type = "resource_content_type_example" # String | 


begin
  #Uploads a branding resource file.
  result = api_instance.update_brand_resources_by_content_type(account_id, brand_id, resource_content_type)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->update_brand_resources_by_content_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **brand_id** | **String**| The unique identifier of a brand. | 
 **resource_content_type** | **String**|  | 

### Return type

[**BrandResources**](BrandResources.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_e_note_configuration**
> ENoteConfiguration update_e_note_configuration(account_id, opts)

Updates configuration information for the eNote eOriginal integration.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  e_note_configuration: DocuSign_eSign::ENoteConfiguration.new # ENoteConfiguration | 
}

begin
  #Updates configuration information for the eNote eOriginal integration.
  result = api_instance.update_e_note_configuration(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->update_e_note_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **e_note_configuration** | [**ENoteConfiguration**](ENoteConfiguration.md)|  | [optional] 

### Return type

[**ENoteConfiguration**](ENoteConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_permission_profile**
> PermissionProfile update_permission_profile(account_id, permission_profile_id, opts)

Updates a permission profile within the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

permission_profile_id = "permission_profile_id_example" # String | 

opts = { 
  include: "include_example", # String | 
  permission_profile: DocuSign_eSign::PermissionProfile.new # PermissionProfile | 
}

begin
  #Updates a permission profile within the specified account.
  result = api_instance.update_permission_profile(account_id, permission_profile_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->update_permission_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **permission_profile_id** | **String**|  | 
 **include** | **String**|  | [optional] 
 **permission_profile** | [**PermissionProfile**](PermissionProfile.md)|  | [optional] 

### Return type

[**PermissionProfile**](PermissionProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_settings**
> update_settings(account_id, opts)

Updates the account settings for an account.

Updates the account settings for the specified account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  account_settings_information: DocuSign_eSign::AccountSettingsInformation.new # AccountSettingsInformation | 
}

begin
  #Updates the account settings for an account.
  api_instance.update_settings(account_id, opts)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->update_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **account_settings_information** | [**AccountSettingsInformation**](AccountSettingsInformation.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_shared_access**
> AccountSharedAccess update_shared_access(account_id, opts)

Reserved: Sets the shared access information for users.

Reserved: Sets the shared access information for one or more users.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AccountsApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

opts = { 
  item_type: "item_type_example", # String | 
  user_ids: "user_ids_example", # String | 
  account_shared_access: DocuSign_eSign::AccountSharedAccess.new # AccountSharedAccess | 
}

begin
  #Reserved: Sets the shared access information for users.
  result = api_instance.update_shared_access(account_id, opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AccountsApi->update_shared_access: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **item_type** | **String**|  | [optional] 
 **user_ids** | **String**|  | [optional] 
 **account_shared_access** | [**AccountSharedAccess**](AccountSharedAccess.md)|  | [optional] 

### Return type

[**AccountSharedAccess**](AccountSharedAccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



