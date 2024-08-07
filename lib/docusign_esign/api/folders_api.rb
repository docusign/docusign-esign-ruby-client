=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_eSign

  class ListOptions
    # 
    attr_accessor :count

    # 
    attr_accessor :include

    # 
    attr_accessor :include_items

    # 
    attr_accessor :start_position

    # 
    attr_accessor :sub_folder_depth

    # Specifies the items that are returned. Valid values are:   * include - The folder list will return normal folders plus template folders.  * only - Only the list of template folders are returned.
    attr_accessor :template

    # 
    attr_accessor :user_filter

    def self.default
      @@default ||= ListOptions.new
    end
  end

  class ListItemsOptions
    #  Only return items on or after this date. If no value is provided, the default search is the previous 30 days. 
    attr_accessor :from_date

    # 
    attr_accessor :include_items

    #  The email of the folder owner. 
    attr_accessor :owner_email

    #  The name of the folder owner. 
    attr_accessor :owner_name

    #  The search text used to search the items of the envelope. The search looks at recipient names and emails, envelope custom fields, sender name, and subject. 
    attr_accessor :search_text

    # The position of the folder items to return. This is used for repeated calls, when the number of envelopes returned is too much for one return (calls return 100 envelopes at a time). The default value is 0.
    attr_accessor :start_position

    # The current status of the envelope. If no value is provided, the default search is all/any status.
    attr_accessor :status

    # Only return items up to this date. If no value is provided, the default search is to the current date.
    attr_accessor :to_date

    def self.default
      @@default ||= ListItemsOptions.new
    end
  end

  class SearchOptions
    # Specifies that all envelopes that match the criteria are returned.
    attr_accessor :all

    # Specifies the number of records returned in the cache. The number must be greater than 0 and less than or equal to 100.
    attr_accessor :count

    # Specifies the start of the date range to return. If no value is provided, the default search is the previous 30 days.
    attr_accessor :from_date

    # When set to **true**, the recipient information is returned in the response.
    attr_accessor :include_recipients

    # Specifies the order in which the list is returned. Valid values are: `asc` for ascending order, and `desc` for descending order.
    attr_accessor :order

    # Specifies the property used to sort the list. Valid values are: `action_required`, `created`, `completed`, `sent`, `signer_list`, `status`, or `subject`.
    attr_accessor :order_by

    # Specifies the the starting location in the result set of the items that are returned.
    attr_accessor :start_position

    # Specifies the end of the date range to return.
    attr_accessor :to_date

    def self.default
      @@default ||= SearchOptions.new
    end
  end


  class FoldersApi
    attr_accessor :api_client

    def initialize(api_client = FoldersApi.default)
      @api_client = api_client
    end

    # Gets a list of the folders for the account.
    # Retrieves a list of the folders for the account, including the folder hierarchy. You can specify whether to return just the template folder or template folder and normal folders by setting the `template` query string parameter.
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListOptions Options for modifying the behavior of the function.
    # @return [FoldersResponse]
    def list(account_id, options = DocuSign_eSign::ListOptions.default)
      data, _status_code, _headers = list_with_http_info(account_id, options)
      return data
    end

    # Gets a list of the folders for the account.
    # Retrieves a list of the folders for the account, including the folder hierarchy. You can specify whether to return just the template folder or template folder and normal folders by setting the &#x60;template&#x60; query string parameter.
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListOptions Options for modifying the behavior of the function.
    # @return [Array<(FoldersResponse, Fixnum, Hash)>] FoldersResponse data, response status code and response headers
    def list_with_http_info(account_id, options = DocuSign_eSign::ListOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FoldersApi.list ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling FoldersApi.list" if account_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/folders".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'count'] = options.count if !options.count.nil?
      query_params[:'include'] = options.include if !options.include.nil?
      query_params[:'include_items'] = options.include_items if !options.include_items.nil?
      query_params[:'start_position'] = options.start_position if !options.start_position.nil?
      query_params[:'sub_folder_depth'] = options.sub_folder_depth if !options.sub_folder_depth.nil?
      query_params[:'template'] = options.template if !options.template.nil?
      query_params[:'user_filter'] = options.user_filter if !options.user_filter.nil?

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
        :return_type => 'FoldersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of the envelopes in the specified folder.
    # Retrieves a list of the envelopes in the specified folder. You can narrow the query by specifying search criteria in the query string parameters.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param DocuSign_eSign::ListItemsOptions Options for modifying the behavior of the function.
    # @return [FolderItemsResponse]
    def list_items(account_id, folder_id, options = DocuSign_eSign::ListItemsOptions.default)
      data, _status_code, _headers = list_items_with_http_info(account_id, folder_id, options)
      return data
    end

    # Gets a list of the envelopes in the specified folder.
    # Retrieves a list of the envelopes in the specified folder. You can narrow the query by specifying search criteria in the query string parameters.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param DocuSign_eSign::ListItemsOptions Options for modifying the behavior of the function.
    # @return [Array<(FolderItemsResponse, Fixnum, Hash)>] FolderItemsResponse data, response status code and response headers
    def list_items_with_http_info(account_id, folder_id, options = DocuSign_eSign::ListItemsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FoldersApi.list_items ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling FoldersApi.list_items" if account_id.nil?
      # verify the required parameter 'folder_id' is set
      fail ArgumentError, "Missing the required parameter 'folder_id' when calling FoldersApi.list_items" if folder_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/folders/{folderId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'folderId' + '}', folder_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'from_date'] = options.from_date if !options.from_date.nil?
      query_params[:'include_items'] = options.include_items if !options.include_items.nil?
      query_params[:'owner_email'] = options.owner_email if !options.owner_email.nil?
      query_params[:'owner_name'] = options.owner_name if !options.owner_name.nil?
      query_params[:'search_text'] = options.search_text if !options.search_text.nil?
      query_params[:'start_position'] = options.start_position if !options.start_position.nil?
      query_params[:'status'] = options.status if !options.status.nil?
      query_params[:'to_date'] = options.to_date if !options.to_date.nil?

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
        :return_type => 'FolderItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#list_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Moves an envelope from its current folder to the specified folder.
    # Moves envelopes to the specified folder.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param folders_request  (optional parameter)
    # @return [FoldersResponse]
    def move_envelopes(account_id, folder_id, folders_request)
      data, _status_code, _headers = move_envelopes_with_http_info(account_id, folder_id,  folders_request)
      return data
    end

    # Moves an envelope from its current folder to the specified folder.
    # Moves envelopes to the specified folder.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param folders_request  (optional parameter)
    # @return [Array<(FoldersResponse, Fixnum, Hash)>] FoldersResponse data, response status code and response headers
    def move_envelopes_with_http_info(account_id, folder_id, folders_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FoldersApi.move_envelopes ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling FoldersApi.move_envelopes" if account_id.nil?
      # verify the required parameter 'folder_id' is set
      fail ArgumentError, "Missing the required parameter 'folder_id' when calling FoldersApi.move_envelopes" if folder_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/folders/{folderId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'folderId' + '}', folder_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(folders_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FoldersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#move_envelopes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of envelopes in folders matching the specified criteria.
    # Retrieves a list of envelopes that match the criteria specified in the query.  If the user ID of the user making the call is the same as the user ID for any returned recipient, then the userId property is added to the returned information for those recipients.
    # @param account_id The external account number (int) or account ID Guid.
    # @param search_folder_id Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature.
    # @param DocuSign_eSign::SearchOptions Options for modifying the behavior of the function.
    # @return [FolderItemResponse]
    def search(account_id, search_folder_id, options = DocuSign_eSign::SearchOptions.default)
      data, _status_code, _headers = search_with_http_info(account_id, search_folder_id, options)
      return data
    end

    # Gets a list of envelopes in folders matching the specified criteria.
    # Retrieves a list of envelopes that match the criteria specified in the query.  If the user ID of the user making the call is the same as the user ID for any returned recipient, then the userId property is added to the returned information for those recipients.
    # @param account_id The external account number (int) or account ID Guid.
    # @param search_folder_id Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature.
    # @param DocuSign_eSign::SearchOptions Options for modifying the behavior of the function.
    # @return [Array<(FolderItemResponse, Fixnum, Hash)>] FolderItemResponse data, response status code and response headers
    def search_with_http_info(account_id, search_folder_id, options = DocuSign_eSign::SearchOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FoldersApi.search ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling FoldersApi.search" if account_id.nil?
      # verify the required parameter 'search_folder_id' is set
      fail ArgumentError, "Missing the required parameter 'search_folder_id' when calling FoldersApi.search" if search_folder_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/search_folders/{searchFolderId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'searchFolderId' + '}', search_folder_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'all'] = options.all if !options.all.nil?
      query_params[:'count'] = options.count if !options.count.nil?
      query_params[:'from_date'] = options.from_date if !options.from_date.nil?
      query_params[:'include_recipients'] = options.include_recipients if !options.include_recipients.nil?
      query_params[:'order'] = options.order if !options.order.nil?
      query_params[:'order_by'] = options.order_by if !options.order_by.nil?
      query_params[:'start_position'] = options.start_position if !options.start_position.nil?
      query_params[:'to_date'] = options.to_date if !options.to_date.nil?

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
        :return_type => 'FolderItemResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end