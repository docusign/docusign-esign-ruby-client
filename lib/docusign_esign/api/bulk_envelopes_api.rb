=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13-SNAPSHOT

=end

require "uri"

module DocuSign_eSign

  class GetOptions
    # Specifies the number of entries to return.
    attr_accessor :count

    # Specifies which entries are included in the response. Multiple entries can be included by using commas in the query string (example: ?include=\"failed,queued\")   Valid values are:   * all - Returns all entries. If present, overrides all other query settings. This is the default if no query string is provided. * failed - This only returns entries with a failed status. * queued - This only returns entries with a queued status. * sent - This only returns entries with a sent status.  
    attr_accessor :include

    # Specifies the location in the list of envelopes from which to start.
    attr_accessor :start_position

    def self.default
      @@default ||= GetOptions.new
    end
  end

  class GetRecipientsOptions
    # 
    attr_accessor :include_tabs

    # 
    attr_accessor :start_position

    def self.default
      @@default ||= GetRecipientsOptions.new
    end
  end

  class ListOptions
    # The number of results to return. This can be 1 to 20.
    attr_accessor :count

    # The position of the bulk envelope items in the response. This is used for repeated calls, when the number of bulk envelopes returned is too large for one return. The default value is 0.
    attr_accessor :start_position

    def self.default
      @@default ||= ListOptions.new
    end
  end


  class BulkEnvelopesApi
    attr_accessor :api_client

    def initialize(api_client = BulkEnvelopesApi.default)
      @api_client = api_client
    end

    # Deletes the bulk recipient file from an envelope.
    # Deletes the bulk recipient file from an envelope. This cannot be used if the envelope has been sent.  After using this, the `bulkRecipientsUri` property is not returned in subsequent GET calls for the envelope, but the recipient will remain as a bulk recipient.
    # @param account_id The external account number (int) or account ID Guid.
    # @param envelope_id The envelopeId Guid of the envelope being accessed.
    # @param recipient_id The ID of the recipient being accessed.
    # @return [BulkRecipientsUpdateResponse]
    def delete_recipients(account_id, envelope_id, recipient_id)
      data, _status_code, _headers = delete_recipients_with_http_info(account_id, envelope_id, recipient_id)
      return data
    end

    # Deletes the bulk recipient file from an envelope.
    # Deletes the bulk recipient file from an envelope. This cannot be used if the envelope has been sent.  After using this, the &#x60;bulkRecipientsUri&#x60; property is not returned in subsequent GET calls for the envelope, but the recipient will remain as a bulk recipient.
    # @param account_id The external account number (int) or account ID Guid.
    # @param envelope_id The envelopeId Guid of the envelope being accessed.
    # @param recipient_id The ID of the recipient being accessed.
    # @return [Array<(BulkRecipientsUpdateResponse, Fixnum, Hash)>] BulkRecipientsUpdateResponse data, response status code and response headers
    def delete_recipients_with_http_info(account_id, envelope_id, recipient_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkEnvelopesApi.delete_recipients ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkEnvelopesApi.delete_recipients" if account_id.nil?
      # verify the required parameter 'envelope_id' is set
      fail ArgumentError, "Missing the required parameter 'envelope_id' when calling BulkEnvelopesApi.delete_recipients" if envelope_id.nil?
      # verify the required parameter 'recipient_id' is set
      fail ArgumentError, "Missing the required parameter 'recipient_id' when calling BulkEnvelopesApi.delete_recipients" if recipient_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'envelopeId' + '}', envelope_id.to_s).sub('{' + 'recipientId' + '}', recipient_id.to_s)

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
        :return_type => 'BulkRecipientsUpdateResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkEnvelopesApi#delete_recipients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the status of a specified bulk send operation.
    # Retrieves the status information of a single bulk recipient batch. A bulk recipient batch is the set of envelopes sent from a single bulk recipient file. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param batch_id 
    # @param DocuSign_eSign::GetOptions Options for modifying the behavior of the function.
    # @return [BulkEnvelopeStatus]
    def get(account_id, batch_id, options = DocuSign_eSign::GetOptions.default)
      data, _status_code, _headers = get_with_http_info(account_id, batch_id, options)
      return data
    end

    # Gets the status of a specified bulk send operation.
    # Retrieves the status information of a single bulk recipient batch. A bulk recipient batch is the set of envelopes sent from a single bulk recipient file. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param batch_id 
    # @param DocuSign_eSign::GetOptions Options for modifying the behavior of the function.
    # @return [Array<(BulkEnvelopeStatus, Fixnum, Hash)>] BulkEnvelopeStatus data, response status code and response headers
    def get_with_http_info(account_id, batch_id, options = DocuSign_eSign::GetOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkEnvelopesApi.get ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkEnvelopesApi.get" if account_id.nil?
      # verify the required parameter 'batch_id' is set
      fail ArgumentError, "Missing the required parameter 'batch_id' when calling BulkEnvelopesApi.get" if batch_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/bulk_envelopes/{batchId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'batchId' + '}', batch_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'count'] = options.count if !options.count.nil?
      query_params[:'include'] = options.include if !options.include.nil?
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
        :return_type => 'BulkEnvelopeStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkEnvelopesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the bulk recipient file from an envelope.
    # Retrieves the bulk recipient file information from an envelope that has a bulk recipient.
    # @param account_id The external account number (int) or account ID Guid.
    # @param envelope_id The envelopeId Guid of the envelope being accessed.
    # @param recipient_id The ID of the recipient being accessed.
    # @param DocuSign_eSign::GetRecipientsOptions Options for modifying the behavior of the function.
    # @return [BulkRecipientsResponse]
    def get_recipients(account_id, envelope_id, recipient_id, options = DocuSign_eSign::GetRecipientsOptions.default)
      data, _status_code, _headers = get_recipients_with_http_info(account_id, envelope_id, recipient_id, options)
      return data
    end

    # Gets the bulk recipient file from an envelope.
    # Retrieves the bulk recipient file information from an envelope that has a bulk recipient.
    # @param account_id The external account number (int) or account ID Guid.
    # @param envelope_id The envelopeId Guid of the envelope being accessed.
    # @param recipient_id The ID of the recipient being accessed.
    # @param DocuSign_eSign::GetRecipientsOptions Options for modifying the behavior of the function.
    # @return [Array<(BulkRecipientsResponse, Fixnum, Hash)>] BulkRecipientsResponse data, response status code and response headers
    def get_recipients_with_http_info(account_id, envelope_id, recipient_id, options = DocuSign_eSign::GetRecipientsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkEnvelopesApi.get_recipients ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkEnvelopesApi.get_recipients" if account_id.nil?
      # verify the required parameter 'envelope_id' is set
      fail ArgumentError, "Missing the required parameter 'envelope_id' when calling BulkEnvelopesApi.get_recipients" if envelope_id.nil?
      # verify the required parameter 'recipient_id' is set
      fail ArgumentError, "Missing the required parameter 'recipient_id' when calling BulkEnvelopesApi.get_recipients" if recipient_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'envelopeId' + '}', envelope_id.to_s).sub('{' + 'recipientId' + '}', recipient_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include_tabs'] = options.include_tabs if !options.include_tabs.nil?
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
        :return_type => 'BulkRecipientsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkEnvelopesApi#get_recipients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets status information about bulk recipient batches.
    # Retrieves status information about all the bulk recipient batches. A bulk recipient batch is the set of envelopes sent from a single bulk recipient file. The response includes general information about each bulk recipient batch.   The response returns information about the envelopes sent with bulk recipient batches, including the `batchId` property, which can be used to retrieve a more detailed status of individual bulk recipient batches.
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListOptions Options for modifying the behavior of the function.
    # @return [BulkEnvelopesResponse]
    def list(account_id, options = DocuSign_eSign::ListOptions.default)
      data, _status_code, _headers = list_with_http_info(account_id, options)
      return data
    end

    # Gets status information about bulk recipient batches.
    # Retrieves status information about all the bulk recipient batches. A bulk recipient batch is the set of envelopes sent from a single bulk recipient file. The response includes general information about each bulk recipient batch.   The response returns information about the envelopes sent with bulk recipient batches, including the &#x60;batchId&#x60; property, which can be used to retrieve a more detailed status of individual bulk recipient batches.
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListOptions Options for modifying the behavior of the function.
    # @return [Array<(BulkEnvelopesResponse, Fixnum, Hash)>] BulkEnvelopesResponse data, response status code and response headers
    def list_with_http_info(account_id, options = DocuSign_eSign::ListOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkEnvelopesApi.list ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkEnvelopesApi.list" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/bulk_envelopes".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

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
        :return_type => 'BulkEnvelopesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkEnvelopesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds or replaces envelope bulk recipients.
    # Updates the bulk recipients in a draft envelope using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.
    # @param account_id The external account number (int) or account id GUID.
    # @param envelope_id The envelope's GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
    # @param recipient_id A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
    # @param bulk_recipients_request  
    # @return [BulkRecipientsSummaryResponse]
    def update_recipients(account_id, envelope_id, recipient_id, bulk_recipients_request)
      data, _status_code, _headers = update_recipients_with_http_info(account_id, envelope_id, recipient_id,  bulk_recipients_request)
      return data
    end

    # Adds or replaces envelope bulk recipients.
    # Updates the bulk recipients in a draft envelope using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.
    # @param account_id The external account number (int) or account id GUID.
    # @param envelope_id The envelope's GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
    # @param recipient_id A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
    # @param bulk_recipients_request  
    # @return [Array<(BulkRecipientsSummaryResponse, Fixnum, Hash)>] BulkRecipientsSummaryResponse data, response status code and response headers
    def update_recipients_with_http_info(account_id, envelope_id, recipient_id, bulk_recipients_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkEnvelopesApi.update_recipients ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BulkEnvelopesApi.update_recipients" if account_id.nil?
      # verify the required parameter 'envelope_id' is set
      fail ArgumentError, "Missing the required parameter 'envelope_id' when calling BulkEnvelopesApi.update_recipients" if envelope_id.nil?
      # verify the required parameter 'recipient_id' is set
      fail ArgumentError, "Missing the required parameter 'recipient_id' when calling BulkEnvelopesApi.update_recipients" if recipient_id.nil?
      # verify the required parameter 'bulk_recipients_request' is set
      fail ArgumentError, "Missing the required parameter 'bulk_recipients_request' when calling BulkEnvelopesApi.update_recipients" if bulk_recipients_request.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'envelopeId' + '}', envelope_id.to_s).sub('{' + 'recipientId' + '}', recipient_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/csv'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(bulk_recipients_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BulkRecipientsSummaryResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkEnvelopesApi#update_recipients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end