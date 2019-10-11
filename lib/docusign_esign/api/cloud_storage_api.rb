=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_eSign

  class GetProviderOptions
    #  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.  
    attr_accessor :redirect_url

    def self.default
      @@default ||= GetProviderOptions.new
    end
  end

  class ListOptions
    # 
    attr_accessor :cloud_storage_folder_path

    # 
    attr_accessor :cloud_storage_folderid_plain

    # An optional value that sets how many items are included in the response.   The default setting for this is 25. 
    attr_accessor :count

    # An optional value that sets the direction order used to sort the item list.   Valid values are:   * asc = ascending sort order * desc = descending sort order 
    attr_accessor :order

    # An optional value that sets the file attribute used to sort the item list.   Valid values are:   * modified * name  
    attr_accessor :order_by

    # 
    attr_accessor :search_text

    # Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.  
    attr_accessor :start_position

    def self.default
      @@default ||= ListOptions.new
    end
  end

  class ListFoldersOptions
    # A comma separated list of folder IDs included in the request. 
    attr_accessor :cloud_storage_folder_path

    # An optional value that sets how many items are included in the response.   The default setting for this is 25. 
    attr_accessor :count

    # An optional value that sets the direction order used to sort the item list.   Valid values are:   * asc = ascending sort order * desc = descending sort order 
    attr_accessor :order

    # An optional value that sets the file attribute used to sort the item list.   Valid values are:   * modified * name  
    attr_accessor :order_by

    # 
    attr_accessor :search_text

    # Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.  
    attr_accessor :start_position

    def self.default
      @@default ||= ListFoldersOptions.new
    end
  end

  class ListProvidersOptions
    #  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.  
    attr_accessor :redirect_url

    def self.default
      @@default ||= ListProvidersOptions.new
    end
  end


  class CloudStorageApi
    attr_accessor :api_client

    def initialize(api_client = CloudStorageApi.default)
      @api_client = api_client
    end

    # Configures the redirect URL information  for one or more cloud storage providers for the specified user.
    # Configures the redirect URL information  for one or more cloud storage providers for the specified user. The redirect URL is added to the authentication URL to complete the return route.
    # @param account_id The external account number (int) or account ID Guid.
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param cloud_storage_providers  (optional parameter)
    # @return [CloudStorageProviders]
    def create_provider(account_id, user_id, cloud_storage_providers)
      data, _status_code, _headers = create_provider_with_http_info(account_id, user_id,  cloud_storage_providers)
      return data
    end

    # Configures the redirect URL information  for one or more cloud storage providers for the specified user.
    # Configures the redirect URL information  for one or more cloud storage providers for the specified user. The redirect URL is added to the authentication URL to complete the return route.
    # @param account_id The external account number (int) or account ID Guid.
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param cloud_storage_providers  (optional parameter)
    # @return [Array<(CloudStorageProviders, Fixnum, Hash)>] CloudStorageProviders data, response status code and response headers
    def create_provider_with_http_info(account_id, user_id, cloud_storage_providers)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CloudStorageApi.create_provider ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling CloudStorageApi.create_provider" if account_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling CloudStorageApi.create_provider" if user_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/users/{userId}/cloud_storage".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cloud_storage_providers)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CloudStorageProviders')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudStorageApi#create_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes the user authentication information for the specified cloud storage provider.
    # Deletes the user authentication information for the specified cloud storage provider. The next time the user tries to access the cloud storage provider, they must pass normal authentication for this cloud storage provider.
    # @param account_id The external account number (int) or account ID Guid.
    # @param service_id The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @return [CloudStorageProviders]
    def delete_provider(account_id, service_id, user_id)
      data, _status_code, _headers = delete_provider_with_http_info(account_id, service_id, user_id)
      return data
    end

    # Deletes the user authentication information for the specified cloud storage provider.
    # Deletes the user authentication information for the specified cloud storage provider. The next time the user tries to access the cloud storage provider, they must pass normal authentication for this cloud storage provider.
    # @param account_id The external account number (int) or account ID Guid.
    # @param service_id The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @return [Array<(CloudStorageProviders, Fixnum, Hash)>] CloudStorageProviders data, response status code and response headers
    def delete_provider_with_http_info(account_id, service_id, user_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CloudStorageApi.delete_provider ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling CloudStorageApi.delete_provider" if account_id.nil?
      # verify the required parameter 'service_id' is set
      fail ArgumentError, "Missing the required parameter 'service_id' when calling CloudStorageApi.delete_provider" if service_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling CloudStorageApi.delete_provider" if user_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'serviceId' + '}', service_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CloudStorageProviders')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudStorageApi#delete_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes the user authentication information for one or more cloud storage providers.
    # Deletes the user authentication information for one or more cloud storage providers. The next time the user tries to access the cloud storage provider, they must pass normal authentication.
    # @param account_id The external account number (int) or account ID Guid.
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param cloud_storage_providers  (optional parameter)
    # @return [CloudStorageProviders]
    def delete_providers(account_id, user_id, cloud_storage_providers)
      data, _status_code, _headers = delete_providers_with_http_info(account_id, user_id,  cloud_storage_providers)
      return data
    end

    # Deletes the user authentication information for one or more cloud storage providers.
    # Deletes the user authentication information for one or more cloud storage providers. The next time the user tries to access the cloud storage provider, they must pass normal authentication.
    # @param account_id The external account number (int) or account ID Guid.
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param cloud_storage_providers  (optional parameter)
    # @return [Array<(CloudStorageProviders, Fixnum, Hash)>] CloudStorageProviders data, response status code and response headers
    def delete_providers_with_http_info(account_id, user_id, cloud_storage_providers)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CloudStorageApi.delete_providers ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling CloudStorageApi.delete_providers" if account_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling CloudStorageApi.delete_providers" if user_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/users/{userId}/cloud_storage".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cloud_storage_providers)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CloudStorageProviders')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudStorageApi#delete_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the specified Cloud Storage Provider configuration for the User.
    # Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.
    # @param account_id The external account number (int) or account ID Guid.
    # @param service_id The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param DocuSign_eSign::GetProviderOptions Options for modifying the behavior of the function.
    # @return [CloudStorageProviders]
    def get_provider(account_id, service_id, user_id, options = DocuSign_eSign::GetProviderOptions.default)
      data, _status_code, _headers = get_provider_with_http_info(account_id, service_id, user_id, options)
      return data
    end

    # Gets the specified Cloud Storage Provider configuration for the User.
    # Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.
    # @param account_id The external account number (int) or account ID Guid.
    # @param service_id The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param DocuSign_eSign::GetProviderOptions Options for modifying the behavior of the function.
    # @return [Array<(CloudStorageProviders, Fixnum, Hash)>] CloudStorageProviders data, response status code and response headers
    def get_provider_with_http_info(account_id, service_id, user_id, options = DocuSign_eSign::GetProviderOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CloudStorageApi.get_provider ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling CloudStorageApi.get_provider" if account_id.nil?
      # verify the required parameter 'service_id' is set
      fail ArgumentError, "Missing the required parameter 'service_id' when calling CloudStorageApi.get_provider" if service_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling CloudStorageApi.get_provider" if user_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'serviceId' + '}', service_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'redirectUrl'] = options.redirect_url if !options.redirect_url.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CloudStorageProviders')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudStorageApi#get_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of all the items from the specified cloud storage provider.
    # Retrieves a list of all the items in all  the folders associated with the user from the specified cloud storage provider. You can limit the scope of the returned items by providing a comma separated list of folder IDs in the request.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param service_id The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param DocuSign_eSign::ListOptions Options for modifying the behavior of the function.
    # @return [ExternalFolder]
    def list(account_id, folder_id, service_id, user_id, options = DocuSign_eSign::ListOptions.default)
      data, _status_code, _headers = list_with_http_info(account_id, folder_id, service_id, user_id, options)
      return data
    end

    # Gets a list of all the items from the specified cloud storage provider.
    # Retrieves a list of all the items in all  the folders associated with the user from the specified cloud storage provider. You can limit the scope of the returned items by providing a comma separated list of folder IDs in the request.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param service_id The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param DocuSign_eSign::ListOptions Options for modifying the behavior of the function.
    # @return [Array<(ExternalFolder, Fixnum, Hash)>] ExternalFolder data, response status code and response headers
    def list_with_http_info(account_id, folder_id, service_id, user_id, options = DocuSign_eSign::ListOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CloudStorageApi.list ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling CloudStorageApi.list" if account_id.nil?
      # verify the required parameter 'folder_id' is set
      fail ArgumentError, "Missing the required parameter 'folder_id' when calling CloudStorageApi.list" if folder_id.nil?
      # verify the required parameter 'service_id' is set
      fail ArgumentError, "Missing the required parameter 'service_id' when calling CloudStorageApi.list" if service_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling CloudStorageApi.list" if user_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}/folders/{folderId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'folderId' + '}', folder_id.to_s).sub('{' + 'serviceId' + '}', service_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cloud_storage_folder_path'] = options.cloud_storage_folder_path if !options.cloud_storage_folder_path.nil?
      query_params[:'cloud_storage_folderid_plain'] = options.cloud_storage_folderid_plain if !options.cloud_storage_folderid_plain.nil?
      query_params[:'count'] = options.count if !options.count.nil?
      query_params[:'order'] = options.order if !options.order.nil?
      query_params[:'order_by'] = options.order_by if !options.order_by.nil?
      query_params[:'search_text'] = options.search_text if !options.search_text.nil?
      query_params[:'start_position'] = options.start_position if !options.start_position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExternalFolder')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudStorageApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a list of all the items in a specified folder from the specified cloud storage provider.
    # Retrieves a list of all the items in a specified folder from the specified cloud storage provider. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param service_id The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param DocuSign_eSign::ListFoldersOptions Options for modifying the behavior of the function.
    # @return [ExternalFolder]
    def list_folders(account_id, service_id, user_id, options = DocuSign_eSign::ListFoldersOptions.default)
      data, _status_code, _headers = list_folders_with_http_info(account_id, service_id, user_id, options)
      return data
    end

    # Retrieves a list of all the items in a specified folder from the specified cloud storage provider.
    # Retrieves a list of all the items in a specified folder from the specified cloud storage provider. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param service_id The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param DocuSign_eSign::ListFoldersOptions Options for modifying the behavior of the function.
    # @return [Array<(ExternalFolder, Fixnum, Hash)>] ExternalFolder data, response status code and response headers
    def list_folders_with_http_info(account_id, service_id, user_id, options = DocuSign_eSign::ListFoldersOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CloudStorageApi.list_folders ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling CloudStorageApi.list_folders" if account_id.nil?
      # verify the required parameter 'service_id' is set
      fail ArgumentError, "Missing the required parameter 'service_id' when calling CloudStorageApi.list_folders" if service_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling CloudStorageApi.list_folders" if user_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}/folders".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'serviceId' + '}', service_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cloud_storage_folder_path'] = options.cloud_storage_folder_path if !options.cloud_storage_folder_path.nil?
      query_params[:'count'] = options.count if !options.count.nil?
      query_params[:'order'] = options.order if !options.order.nil?
      query_params[:'order_by'] = options.order_by if !options.order_by.nil?
      query_params[:'search_text'] = options.search_text if !options.search_text.nil?
      query_params[:'start_position'] = options.start_position if !options.start_position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExternalFolder')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudStorageApi#list_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Cloud Storage Provider configuration for the specified user.
    # Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.  The {serviceId} parameter can be either the service name or serviceId.
    # @param account_id The external account number (int) or account ID Guid.
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param DocuSign_eSign::ListProvidersOptions Options for modifying the behavior of the function.
    # @return [CloudStorageProviders]
    def list_providers(account_id, user_id, options = DocuSign_eSign::ListProvidersOptions.default)
      data, _status_code, _headers = list_providers_with_http_info(account_id, user_id, options)
      return data
    end

    # Get the Cloud Storage Provider configuration for the specified user.
    # Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.  The {serviceId} parameter can be either the service name or serviceId.
    # @param account_id The external account number (int) or account ID Guid.
    # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
    # @param DocuSign_eSign::ListProvidersOptions Options for modifying the behavior of the function.
    # @return [Array<(CloudStorageProviders, Fixnum, Hash)>] CloudStorageProviders data, response status code and response headers
    def list_providers_with_http_info(account_id, user_id, options = DocuSign_eSign::ListProvidersOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CloudStorageApi.list_providers ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling CloudStorageApi.list_providers" if account_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling CloudStorageApi.list_providers" if user_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/users/{userId}/cloud_storage".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'redirectUrl'] = options.redirect_url if !options.redirect_url.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CloudStorageProviders')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudStorageApi#list_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
