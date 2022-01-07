=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_eSign


  class BulkProcessDataApi
    attr_accessor :api_client

    def initialize(api_client = BulkProcessDataApi.default)
      @api_client = api_client
    end

    # Uses the specified bulk envelopes list to update the envelopes specified in the payload
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param process_action 
    # @return [nil]
    def create_bulk_process_request(account_id, process_action)
      create_bulk_process_request_with_http_info(account_id, process_action)
      return nil
    end

    # Uses the specified bulk envelopes list to update the envelopes specified in the payload
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param process_action 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_bulk_process_request_with_http_info(account_id, process_action)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkProcessDataApi.create_bulk_process_request ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkProcessDataApi.create_bulk_process_request" if account_id.nil?
      # verify the required parameter 'process_action' is set
      fail ArgumentError, "Missing the required parameter 'process_action' when calling BulkProcessDataApi.create_bulk_process_request" if process_action.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/bulk_process_data/actions/{processAction}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'processAction' + '}', process_action.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkProcessDataApi#create_bulk_process_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Uses the specified bulk envelopes list to update the envelopes specified in the payload
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bulk_process_list_id 
    # @param process_action 
    # @param bulk_process_request  (optional parameter)
    # @return [BulkProcessResponse]
    def create_bulk_process_request_to_queue(account_id, bulk_process_list_id, process_action, bulk_process_request)
      data, _status_code, _headers = create_bulk_process_request_to_queue_with_http_info(account_id, bulk_process_list_id, process_action,  bulk_process_request)
      return data
    end

    # Uses the specified bulk envelopes list to update the envelopes specified in the payload
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bulk_process_list_id 
    # @param process_action 
    # @param bulk_process_request  (optional parameter)
    # @return [Array<(BulkProcessResponse, Fixnum, Hash)>] BulkProcessResponse data, response status code and response headers
    def create_bulk_process_request_to_queue_with_http_info(account_id, bulk_process_list_id, process_action, bulk_process_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkProcessDataApi.create_bulk_process_request_to_queue ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkProcessDataApi.create_bulk_process_request_to_queue" if account_id.nil?
      # verify the required parameter 'bulk_process_list_id' is set
      fail ArgumentError, "Missing the required parameter 'bulk_process_list_id' when calling BulkProcessDataApi.create_bulk_process_request_to_queue" if bulk_process_list_id.nil?
      # verify the required parameter 'process_action' is set
      fail ArgumentError, "Missing the required parameter 'process_action' when calling BulkProcessDataApi.create_bulk_process_request_to_queue" if process_action.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/bulk_process_data/actions/{processAction}/{bulkProcessListId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'bulkProcessListId' + '}', bulk_process_list_id.to_s).sub('{' + 'processAction' + '}', process_action.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(bulk_process_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BulkProcessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkProcessDataApi#create_bulk_process_request_to_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a specific bulk process list
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bulk_process_list_id 
    # @param process_action 
    # @return [BulkProcessResult]
    def delete_bulk_process_list(account_id, bulk_process_list_id, process_action)
      data, _status_code, _headers = delete_bulk_process_list_with_http_info(account_id, bulk_process_list_id, process_action)
      return data
    end

    # Deletes a specific bulk process list
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bulk_process_list_id 
    # @param process_action 
    # @return [Array<(BulkProcessResult, Fixnum, Hash)>] BulkProcessResult data, response status code and response headers
    def delete_bulk_process_list_with_http_info(account_id, bulk_process_list_id, process_action)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkProcessDataApi.delete_bulk_process_list ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkProcessDataApi.delete_bulk_process_list" if account_id.nil?
      # verify the required parameter 'bulk_process_list_id' is set
      fail ArgumentError, "Missing the required parameter 'bulk_process_list_id' when calling BulkProcessDataApi.delete_bulk_process_list" if bulk_process_list_id.nil?
      # verify the required parameter 'process_action' is set
      fail ArgumentError, "Missing the required parameter 'process_action' when calling BulkProcessDataApi.delete_bulk_process_list" if process_action.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/bulk_process_data/actions/{processAction}/{bulkProcessListId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'bulkProcessListId' + '}', bulk_process_list_id.to_s).sub('{' + 'processAction' + '}', process_action.to_s)

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
        :return_type => 'BulkProcessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkProcessDataApi#delete_bulk_process_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a specific bulk process list
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param process_action 
    # @param bulk_processing_lists  (optional parameter)
    # @return [BulkProcessResult]
    def delete_bulk_process_lists(account_id, process_action, bulk_processing_lists)
      data, _status_code, _headers = delete_bulk_process_lists_with_http_info(account_id, process_action,  bulk_processing_lists)
      return data
    end

    # Deletes a specific bulk process list
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param process_action 
    # @param bulk_processing_lists  (optional parameter)
    # @return [Array<(BulkProcessResult, Fixnum, Hash)>] BulkProcessResult data, response status code and response headers
    def delete_bulk_process_lists_with_http_info(account_id, process_action, bulk_processing_lists)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkProcessDataApi.delete_bulk_process_lists ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkProcessDataApi.delete_bulk_process_lists" if account_id.nil?
      # verify the required parameter 'process_action' is set
      fail ArgumentError, "Missing the required parameter 'process_action' when calling BulkProcessDataApi.delete_bulk_process_lists" if process_action.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/bulk_process_data/actions/{processAction}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'processAction' + '}', process_action.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(bulk_processing_lists)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BulkProcessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkProcessDataApi#delete_bulk_process_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a specific bulk process list
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bulk_process_list_id 
    # @param process_action 
    # @return [nil]
    def get_bulk_process_list(account_id, bulk_process_list_id, process_action)
      get_bulk_process_list_with_http_info(account_id, bulk_process_list_id, process_action)
      return nil
    end

    # Gets a specific bulk process list
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bulk_process_list_id 
    # @param process_action 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_bulk_process_list_with_http_info(account_id, bulk_process_list_id, process_action)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkProcessDataApi.get_bulk_process_list ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkProcessDataApi.get_bulk_process_list" if account_id.nil?
      # verify the required parameter 'bulk_process_list_id' is set
      fail ArgumentError, "Missing the required parameter 'bulk_process_list_id' when calling BulkProcessDataApi.get_bulk_process_list" if bulk_process_list_id.nil?
      # verify the required parameter 'process_action' is set
      fail ArgumentError, "Missing the required parameter 'process_action' when calling BulkProcessDataApi.get_bulk_process_list" if process_action.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/bulk_process_data/actions/{processAction}/{bulkProcessListId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'bulkProcessListId' + '}', bulk_process_list_id.to_s).sub('{' + 'processAction' + '}', process_action.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkProcessDataApi#get_bulk_process_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists top-level details for all bulk process lists visible to the current user
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param process_action 
    # @return [BulkProcessingListSummaries]
    def get_bulk_process_lists(account_id, process_action)
      data, _status_code, _headers = get_bulk_process_lists_with_http_info(account_id, process_action)
      return data
    end

    # Lists top-level details for all bulk process lists visible to the current user
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param process_action 
    # @return [Array<(BulkProcessingListSummaries, Fixnum, Hash)>] BulkProcessingListSummaries data, response status code and response headers
    def get_bulk_process_lists_with_http_info(account_id, process_action)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkProcessDataApi.get_bulk_process_lists ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkProcessDataApi.get_bulk_process_lists" if account_id.nil?
      # verify the required parameter 'process_action' is set
      fail ArgumentError, "Missing the required parameter 'process_action' when calling BulkProcessDataApi.get_bulk_process_lists" if process_action.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/bulk_process_data/actions/{processAction}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'processAction' + '}', process_action.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BulkProcessingListSummaries')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkProcessDataApi#get_bulk_process_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a specific bulk process list
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bulk_process_list_id 
    # @param process_action 
    # @return [nil]
    def update_bulk_process_list(account_id, bulk_process_list_id, process_action)
      update_bulk_process_list_with_http_info(account_id, bulk_process_list_id, process_action)
      return nil
    end

    # Updates a specific bulk process list
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bulk_process_list_id 
    # @param process_action 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_bulk_process_list_with_http_info(account_id, bulk_process_list_id, process_action)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkProcessDataApi.update_bulk_process_list ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkProcessDataApi.update_bulk_process_list" if account_id.nil?
      # verify the required parameter 'bulk_process_list_id' is set
      fail ArgumentError, "Missing the required parameter 'bulk_process_list_id' when calling BulkProcessDataApi.update_bulk_process_list" if bulk_process_list_id.nil?
      # verify the required parameter 'process_action' is set
      fail ArgumentError, "Missing the required parameter 'process_action' when calling BulkProcessDataApi.update_bulk_process_list" if process_action.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/bulk_process_data/actions/{processAction}/{bulkProcessListId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'bulkProcessListId' + '}', bulk_process_list_id.to_s).sub('{' + 'processAction' + '}', process_action.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkProcessDataApi#update_bulk_process_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end