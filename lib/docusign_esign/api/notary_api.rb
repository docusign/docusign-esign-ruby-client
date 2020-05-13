=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13-SNAPSHOT

=end

require "uri"

module DocuSign_eSign

  class GetNotaryOptions
    # 
    attr_accessor :include_jurisdictions

    def self.default
      @@default ||= GetNotaryOptions.new
    end
  end

  class ListNotaryJournalsOptions
    # 
    attr_accessor :count

    # 
    attr_accessor :search_text

    # 
    attr_accessor :start_position

    def self.default
      @@default ||= ListNotaryJournalsOptions.new
    end
  end


  class NotaryApi
    attr_accessor :api_client

    def initialize(api_client = NotaryApi.default)
      @api_client = api_client
    end

    # Add a notary to the system
    # 
    # @param notary  (optional parameter)
    # @return [Notary]
    def create_notary(notary)
      data, _status_code, _headers = create_notary_with_http_info( notary)
      return data
    end

    # Add a notary to the system
    # 
    # @param notary  (optional parameter)
    # @return [Array<(Notary, Fixnum, Hash)>] Notary data, response status code and response headers
    def create_notary_with_http_info(notary)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotaryApi.create_notary ..."
      end
      # resource path
      local_var_path = "/v2.1/current_user/notary".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(notary)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Notary')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotaryApi#create_notary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a notary jurisdiction to the system
    # 
    # @param notary_jurisdiction  (optional parameter)
    # @return [NotaryJurisdiction]
    def create_notary_jurisdictions(notary_jurisdiction)
      data, _status_code, _headers = create_notary_jurisdictions_with_http_info( notary_jurisdiction)
      return data
    end

    # Add a notary jurisdiction to the system
    # 
    # @param notary_jurisdiction  (optional parameter)
    # @return [Array<(NotaryJurisdiction, Fixnum, Hash)>] NotaryJurisdiction data, response status code and response headers
    def create_notary_jurisdictions_with_http_info(notary_jurisdiction)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotaryApi.create_notary_jurisdictions ..."
      end
      # resource path
      local_var_path = "/v2.1/current_user/notary/jurisdictions".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(notary_jurisdiction)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NotaryJurisdiction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotaryApi#create_notary_jurisdictions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a notary jurisdiction a specified user.
    # 
    # @param jurisdiction_id 
    # @return [nil]
    def delete_notary_jurisdiction(jurisdiction_id)
      delete_notary_jurisdiction_with_http_info(jurisdiction_id)
      return nil
    end

    # Delete a notary jurisdiction a specified user.
    # 
    # @param jurisdiction_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_notary_jurisdiction_with_http_info(jurisdiction_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotaryApi.delete_notary_jurisdiction ..."
      end
      # verify the required parameter 'jurisdiction_id' is set
      fail ArgumentError, "Missing the required parameter 'jurisdiction_id' when calling NotaryApi.delete_notary_jurisdiction" if jurisdiction_id.nil?
      # resource path
      local_var_path = "/v2.1/current_user/notary/jurisdictions/{jurisdictionId}".sub('{format}','json').sub('{' + 'jurisdictionId' + '}', jurisdiction_id.to_s)

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
        @api_client.config.logger.debug "API called: NotaryApi#delete_notary_jurisdiction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get notary settings for a user
    # 
    # @param DocuSign_eSign::GetNotaryOptions Options for modifying the behavior of the function.
    # @return [NotaryResult]
    def get_notary(options = DocuSign_eSign::GetNotaryOptions.default)
      data, _status_code, _headers = get_notary_with_http_info(options)
      return data
    end

    # Get notary settings for a user
    # 
    # @param DocuSign_eSign::GetNotaryOptions Options for modifying the behavior of the function.
    # @return [Array<(NotaryResult, Fixnum, Hash)>] NotaryResult data, response status code and response headers
    def get_notary_with_http_info(options = DocuSign_eSign::GetNotaryOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotaryApi.get_notary ..."
      end
      # resource path
      local_var_path = "/v2.1/current_user/notary".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'include_jurisdictions'] = options.include_jurisdictions if !options.include_jurisdictions.nil?

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
        :return_type => 'NotaryResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotaryApi#get_notary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get notary a jurisdiction for a user
    # 
    # @param jurisdiction_id 
    # @return [NotaryJurisdiction]
    def get_notary_jurisdiction(jurisdiction_id)
      data, _status_code, _headers = get_notary_jurisdiction_with_http_info(jurisdiction_id)
      return data
    end

    # Get notary a jurisdiction for a user
    # 
    # @param jurisdiction_id 
    # @return [Array<(NotaryJurisdiction, Fixnum, Hash)>] NotaryJurisdiction data, response status code and response headers
    def get_notary_jurisdiction_with_http_info(jurisdiction_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotaryApi.get_notary_jurisdiction ..."
      end
      # verify the required parameter 'jurisdiction_id' is set
      fail ArgumentError, "Missing the required parameter 'jurisdiction_id' when calling NotaryApi.get_notary_jurisdiction" if jurisdiction_id.nil?
      # resource path
      local_var_path = "/v2.1/current_user/notary/jurisdictions/{jurisdictionId}".sub('{format}','json').sub('{' + 'jurisdictionId' + '}', jurisdiction_id.to_s)

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
        :return_type => 'NotaryJurisdiction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotaryApi#get_notary_jurisdiction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get notary seal for a jurisdiction
    # 
    # @param jurisdiction_id 
    # @return [nil]
    def get_notary_jurisdiction_seal(jurisdiction_id)
      get_notary_jurisdiction_seal_with_http_info(jurisdiction_id)
      return nil
    end

    # Get notary seal for a jurisdiction
    # 
    # @param jurisdiction_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_notary_jurisdiction_seal_with_http_info(jurisdiction_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotaryApi.get_notary_jurisdiction_seal ..."
      end
      # verify the required parameter 'jurisdiction_id' is set
      fail ArgumentError, "Missing the required parameter 'jurisdiction_id' when calling NotaryApi.get_notary_jurisdiction_seal" if jurisdiction_id.nil?
      # resource path
      local_var_path = "/v2.1/current_user/notary/jurisdictions/{jurisdictionId}/seal".sub('{format}','json').sub('{' + 'jurisdictionId' + '}', jurisdiction_id.to_s)

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
        @api_client.config.logger.debug "API called: NotaryApi#get_notary_jurisdiction_seal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get notary jurisdictions for a user
    # 
    # @return [NotaryJurisdictionList]
    def get_notary_jurisdictions()
      data, _status_code, _headers = get_notary_jurisdictions_with_http_info()
      return data
    end

    # Get notary jurisdictions for a user
    # 
    # @return [Array<(NotaryJurisdictionList, Fixnum, Hash)>] NotaryJurisdictionList data, response status code and response headers
    def get_notary_jurisdictions_with_http_info()
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotaryApi.get_notary_jurisdictions ..."
      end
      # resource path
      local_var_path = "/v2.1/current_user/notary/jurisdictions".sub('{format}','json')

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
        :return_type => 'NotaryJurisdictionList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotaryApi#get_notary_jurisdictions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get notary jurisdictions for a user
    # 
    # @param DocuSign_eSign::ListNotaryJournalsOptions Options for modifying the behavior of the function.
    # @return [NotaryJournalList]
    def list_notary_journals(options = DocuSign_eSign::ListNotaryJournalsOptions.default)
      data, _status_code, _headers = list_notary_journals_with_http_info(options)
      return data
    end

    # Get notary jurisdictions for a user
    # 
    # @param DocuSign_eSign::ListNotaryJournalsOptions Options for modifying the behavior of the function.
    # @return [Array<(NotaryJournalList, Fixnum, Hash)>] NotaryJournalList data, response status code and response headers
    def list_notary_journals_with_http_info(options = DocuSign_eSign::ListNotaryJournalsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotaryApi.list_notary_journals ..."
      end
      # resource path
      local_var_path = "/v2.1/current_user/notary/journals".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'count'] = options.count if !options.count.nil?
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
        :return_type => 'NotaryJournalList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotaryApi#list_notary_journals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a notary
    # 
    # @param notary  (optional parameter)
    # @return [Notary]
    def update_notary(notary)
      data, _status_code, _headers = update_notary_with_http_info( notary)
      return data
    end

    # Update a notary
    # 
    # @param notary  (optional parameter)
    # @return [Array<(Notary, Fixnum, Hash)>] Notary data, response status code and response headers
    def update_notary_with_http_info(notary)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotaryApi.update_notary ..."
      end
      # resource path
      local_var_path = "/v2.1/current_user/notary".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(notary)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Notary')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotaryApi#update_notary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a notary jurisdiction
    # 
    # @param jurisdiction_id 
    # @param notary_jurisdiction  (optional parameter)
    # @return [NotaryJurisdiction]
    def update_notary_jurisdiction(jurisdiction_id, notary_jurisdiction)
      data, _status_code, _headers = update_notary_jurisdiction_with_http_info(jurisdiction_id,  notary_jurisdiction)
      return data
    end

    # Update a notary jurisdiction
    # 
    # @param jurisdiction_id 
    # @param notary_jurisdiction  (optional parameter)
    # @return [Array<(NotaryJurisdiction, Fixnum, Hash)>] NotaryJurisdiction data, response status code and response headers
    def update_notary_jurisdiction_with_http_info(jurisdiction_id, notary_jurisdiction)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotaryApi.update_notary_jurisdiction ..."
      end
      # verify the required parameter 'jurisdiction_id' is set
      fail ArgumentError, "Missing the required parameter 'jurisdiction_id' when calling NotaryApi.update_notary_jurisdiction" if jurisdiction_id.nil?
      # resource path
      local_var_path = "/v2.1/current_user/notary/jurisdictions/{jurisdictionId}".sub('{format}','json').sub('{' + 'jurisdictionId' + '}', jurisdiction_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(notary_jurisdiction)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NotaryJurisdiction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotaryApi#update_notary_jurisdiction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end