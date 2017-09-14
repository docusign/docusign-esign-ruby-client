# DocuSign_eSign::AuthenticationApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_social_login**](AuthenticationApi.md#delete_social_login) | **DELETE** /v2/accounts/{accountId}/users/{userId}/social | Deletes user&#39;s social account.
[**get_o_auth_token**](AuthenticationApi.md#get_o_auth_token) | **POST** /v2/oauth2/token | Creates an authorization token.
[**list_social_logins**](AuthenticationApi.md#list_social_logins) | **GET** /v2/accounts/{accountId}/users/{userId}/social | Gets a list of a user&#39;s social accounts.
[**login**](AuthenticationApi.md#login) | **GET** /v2/login_information | Gets login information for a specified user.
[**revoke_o_auth_token**](AuthenticationApi.md#revoke_o_auth_token) | **POST** /v2/oauth2/revoke | Revokes an authorization token.
[**update_password**](AuthenticationApi.md#update_password) | **PUT** /v2/login_information/{loginPart} | Updates the password for a specified user.
[**update_social_login**](AuthenticationApi.md#update_social_login) | **PUT** /v2/accounts/{accountId}/users/{userId}/social | Adds social account for a user.


# **delete_social_login**
> delete_social_login(account_id, user_id, opts)

Deletes user's social account.

Deletes a social account from a use's account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AuthenticationApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

user_id = "user_id_example" # String | The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

opts = { 
  social_account_information: DocuSign_eSign::SocialAccountInformation.new # SocialAccountInformation | 
}

begin
  #Deletes user's social account.
  api_instance.delete_social_login(account_id, user_id, opts)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AuthenticationApi->delete_social_login: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **user_id** | **String**| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **social_account_information** | [**SocialAccountInformation**](SocialAccountInformation.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_o_auth_token**
> OauthAccess get_o_auth_token

Creates an authorization token.

Creates an OAuth2 authorization server token endpoint.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AuthenticationApi.new

begin
  #Creates an authorization token.
  result = api_instance.get_o_auth_token
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AuthenticationApi->get_o_auth_token: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OauthAccess**](OauthAccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_social_logins**
> UserSocialIdResult list_social_logins(account_id, user_id)

Gets a list of a user's social accounts.

Retrieves a list of social accounts linked to a user's account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AuthenticationApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

user_id = "user_id_example" # String | The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.


begin
  #Gets a list of a user's social accounts.
  result = api_instance.list_social_logins(account_id, user_id)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AuthenticationApi->list_social_logins: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **user_id** | **String**| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**UserSocialIdResult**](UserSocialIdResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **login**
> LoginInformation login(opts)

Gets login information for a specified user.

Retrieves login information for a specified user. Each account that is associated with the login credentials is listed. You can use the returned information to determine whether a user is authenticated and select an account to use in future operations.    The `baseUrl` property, returned in the response, is used in all future API calls as the base of the request URL. The `baseUrl` property contains the DocuSign server, the API version, and the `accountId` property that is used for the login. This request uses your DocuSign credentials to retrieve the account information.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AuthenticationApi.new

opts = { 
  api_password: "api_password_example", # String | When set to **true**, shows the account API password in the response.
  embed_account_id_guid: "embed_account_id_guid_example", # String | 
  include_account_id_guid: "include_account_id_guid_example", # String | When set to **true**, shows the account ID GUID in the response.
  login_settings: "login_settings_example" # String | Determines whether login settings are returned in the response.  Valid Values:  * all -  All the login settings are returned.  * none - no login settings are returned.
}

begin
  #Gets login information for a specified user.
  result = api_instance.login(opts)
  p result
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AuthenticationApi->login: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_password** | **String**| When set to **true**, shows the account API password in the response. | [optional] 
 **embed_account_id_guid** | **String**|  | [optional] 
 **include_account_id_guid** | **String**| When set to **true**, shows the account ID GUID in the response. | [optional] 
 **login_settings** | **String**| Determines whether login settings are returned in the response.  Valid Values:  * all -  All the login settings are returned.  * none - no login settings are returned. | [optional] 

### Return type

[**LoginInformation**](LoginInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **revoke_o_auth_token**
> revoke_o_auth_token

Revokes an authorization token.

Revokes an OAuth2 authorization server token. After the revocation is complete, a caller must re-authenticate to restore access.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AuthenticationApi.new

begin
  #Revokes an authorization token.
  api_instance.revoke_o_auth_token
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AuthenticationApi->revoke_o_auth_token: #{e}"
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



# **update_password**
> update_password(login_part, opts)

Updates the password for a specified user.

Updates the password for a specified user.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AuthenticationApi.new

login_part = "login_part_example" # String | Currently, only the value **password** is supported.

opts = { 
  user_password_information: DocuSign_eSign::UserPasswordInformation.new # UserPasswordInformation | 
}

begin
  #Updates the password for a specified user.
  api_instance.update_password(login_part, opts)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AuthenticationApi->update_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login_part** | **String**| Currently, only the value **password** is supported. | 
 **user_password_information** | [**UserPasswordInformation**](UserPasswordInformation.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_social_login**
> update_social_login(account_id, user_id, opts)

Adds social account for a user.

Adds a new social account to a user's account.

### Example
```ruby
# load the gem
require 'docusign_esign'

api_instance = DocuSign_eSign::AuthenticationApi.new

account_id = "account_id_example" # String | The external account number (int) or account ID Guid.

user_id = "user_id_example" # String | The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

opts = { 
  social_account_information: DocuSign_eSign::SocialAccountInformation.new # SocialAccountInformation | 
}

begin
  #Adds social account for a user.
  api_instance.update_social_login(account_id, user_id, opts)
rescue DocuSign_eSign::ApiError => e
  puts "Exception when calling AuthenticationApi->update_social_login: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The external account number (int) or account ID Guid. | 
 **user_id** | **String**| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **social_account_information** | [**SocialAccountInformation**](SocialAccountInformation.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



