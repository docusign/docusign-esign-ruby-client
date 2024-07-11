=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_eSign

  class GetBCCEmailArchiveHistoryListOptions
    # 
    attr_accessor :count

    # 
    attr_accessor :start_position

    def self.default
      @@default ||= GetBCCEmailArchiveHistoryListOptions.new
    end
  end

  class GetBCCEmailArchiveListOptions
    # 
    attr_accessor :count

    # 
    attr_accessor :start_position

    def self.default
      @@default ||= GetBCCEmailArchiveListOptions.new
    end
  end


  class EmailArchiveApi
    attr_accessor :api_client

    def initialize(api_client = EmailArchiveApi.default)
      @api_client = api_client
    end

    # Creates a blind carbon copy email archive entry
    # This method creates a BCC email archive configuration for an account (adds a BCC email address to the account for archiving the emails that DocuSign generates).  The only property that you must set in the request body is the BCC email address that you want to use.  **Note:** An account can have up to five active and pending email archive addresses combined, but you must use this method to add them to the account one at a time. Each email address is considered a separate BCC email archive configuration. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bcc_email_archive  (optional parameter)
    # @return [BccEmailArchive]
    def create_bcc_email_archive(account_id, bcc_email_archive)
      data, _status_code, _headers = create_bcc_email_archive_with_http_info(account_id,  bcc_email_archive)
      return data
    end

    # Creates a blind carbon copy email archive entry
    # This method creates a BCC email archive configuration for an account (adds a BCC email address to the account for archiving the emails that DocuSign generates).  The only property that you must set in the request body is the BCC email address that you want to use.  **Note:** An account can have up to five active and pending email archive addresses combined, but you must use this method to add them to the account one at a time. Each email address is considered a separate BCC email archive configuration. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bcc_email_archive  (optional parameter)
    # @return [Array<(BccEmailArchive, Fixnum, Hash)>] BccEmailArchive data, response status code and response headers
    def create_bcc_email_archive_with_http_info(account_id, bcc_email_archive)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailArchiveApi.create_bcc_email_archive ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling EmailArchiveApi.create_bcc_email_archive" if account_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/settings/bcc_email_archives".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(bcc_email_archive)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BccEmailArchive')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailArchiveApi#create_bcc_email_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a blind carbon copy email archive for an account.
    # This method deletes a BCC email archive configuration from an account.  When you use this method, the status of the BCC email archive configuration switches to `closed` and the BCC email address is no longer used to archive DocuSign-generated email messages. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bcc_email_archive_id 
    # @return [nil]
    def delete_bcc_email_archive(account_id, bcc_email_archive_id)
      delete_bcc_email_archive_with_http_info(account_id, bcc_email_archive_id)
      return nil
    end

    # Delete a blind carbon copy email archive for an account.
    # This method deletes a BCC email archive configuration from an account.  When you use this method, the status of the BCC email archive configuration switches to &#x60;closed&#x60; and the BCC email address is no longer used to archive DocuSign-generated email messages. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param bcc_email_archive_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_bcc_email_archive_with_http_info(account_id, bcc_email_archive_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailArchiveApi.delete_bcc_email_archive ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling EmailArchiveApi.delete_bcc_email_archive" if account_id.nil?
      # verify the required parameter 'bcc_email_archive_id' is set
      fail ArgumentError, "Missing the required parameter 'bcc_email_archive_id' when calling EmailArchiveApi.delete_bcc_email_archive" if bcc_email_archive_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/settings/bcc_email_archives/{bccEmailArchiveId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'bccEmailArchiveId' + '}', bcc_email_archive_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailArchiveApi#delete_bcc_email_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the blind carbon copy email archive history entries for the specified archive
    # This method returns a specific BCC email archive configuration for an account, as well as the history of changes to the email address.
    # @param account_id The external account number (int) or account ID Guid.
    # @param bcc_email_archive_id 
    # @param DocuSign_eSign::GetBCCEmailArchiveHistoryListOptions Options for modifying the behavior of the function.
    # @return [BccEmailArchiveHistoryList]
    def get_bcc_email_archive_history_list(account_id, bcc_email_archive_id, options = DocuSign_eSign::GetBCCEmailArchiveHistoryListOptions.default)
      data, _status_code, _headers = get_bcc_email_archive_history_list_with_http_info(account_id, bcc_email_archive_id, options)
      return data
    end

    # Get the blind carbon copy email archive history entries for the specified archive
    # This method returns a specific BCC email archive configuration for an account, as well as the history of changes to the email address.
    # @param account_id The external account number (int) or account ID Guid.
    # @param bcc_email_archive_id 
    # @param DocuSign_eSign::GetBCCEmailArchiveHistoryListOptions Options for modifying the behavior of the function.
    # @return [Array<(BccEmailArchiveHistoryList, Fixnum, Hash)>] BccEmailArchiveHistoryList data, response status code and response headers
    def get_bcc_email_archive_history_list_with_http_info(account_id, bcc_email_archive_id, options = DocuSign_eSign::GetBCCEmailArchiveHistoryListOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailArchiveApi.get_bcc_email_archive_history_list ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling EmailArchiveApi.get_bcc_email_archive_history_list" if account_id.nil?
      # verify the required parameter 'bcc_email_archive_id' is set
      fail ArgumentError, "Missing the required parameter 'bcc_email_archive_id' when calling EmailArchiveApi.get_bcc_email_archive_history_list" if bcc_email_archive_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/settings/bcc_email_archives/{bccEmailArchiveId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'bccEmailArchiveId' + '}', bcc_email_archive_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'count'] = options.count if !options.count.nil?
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
        :return_type => 'BccEmailArchiveHistoryList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailArchiveApi#get_bcc_email_archive_history_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the blind carbon copy email archive entries owned by the specified account
    # This method retrieves all of the BCC email archive configurations associated with an account.
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::GetBCCEmailArchiveListOptions Options for modifying the behavior of the function.
    # @return [BccEmailArchiveList]
    def get_bcc_email_archive_list(account_id, options = DocuSign_eSign::GetBCCEmailArchiveListOptions.default)
      data, _status_code, _headers = get_bcc_email_archive_list_with_http_info(account_id, options)
      return data
    end

    # Get the blind carbon copy email archive entries owned by the specified account
    # This method retrieves all of the BCC email archive configurations associated with an account.
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::GetBCCEmailArchiveListOptions Options for modifying the behavior of the function.
    # @return [Array<(BccEmailArchiveList, Fixnum, Hash)>] BccEmailArchiveList data, response status code and response headers
    def get_bcc_email_archive_list_with_http_info(account_id, options = DocuSign_eSign::GetBCCEmailArchiveListOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailArchiveApi.get_bcc_email_archive_list ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling EmailArchiveApi.get_bcc_email_archive_list" if account_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/settings/bcc_email_archives".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'count'] = options.count if !options.count.nil?
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
        :return_type => 'BccEmailArchiveList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailArchiveApi#get_bcc_email_archive_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end