=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

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
    # Registers the current user as a notary.
    # @param notary  (optional parameter)
    # @return [Notary]
    def create_notary(notary)
      data, _status_code, _headers = create_notary_with_http_info( notary)
      return data
    end

    # Add a notary to the system
    # Registers the current user as a notary.
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
    # Creates a jurisdiction object.
    # @param notary_jurisdiction  (optional parameter)
    # @return [NotaryJurisdiction]
    def create_notary_jurisdictions(notary_jurisdiction)
      data, _status_code, _headers = create_notary_jurisdictions_with_http_info( notary_jurisdiction)
      return data
    end

    # Add a notary jurisdiction to the system
    # Creates a jurisdiction object.
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
    # Deletes the specified jurisdiction.
    # @param jurisdiction_id 
    # @return [nil]
    def delete_notary_jurisdiction(jurisdiction_id)
      delete_notary_jurisdiction_with_http_info(jurisdiction_id)
      return nil
    end

    # Delete a notary jurisdiction a specified user.
    # Deletes the specified jurisdiction.
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
    # Gets settings for a notary user. The current user must be a notary.
    # @param DocuSign_eSign::GetNotaryOptions Options for modifying the behavior of the function.
    # @return [NotaryResult]
    def get_notary(options = DocuSign_eSign::GetNotaryOptions.default)
      data, _status_code, _headers = get_notary_with_http_info(options)
      return data
    end

    # Get notary settings for a user
    # Gets settings for a notary user. The current user must be a notary.
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
    # Gets a jurisdiction object for the current user.  The following restrictions apply:  - The current user must be a notary. - The `jurisdictionId` must be a jurisdiction that the notary is registered for. 
    # @param jurisdiction_id 
    # @return [NotaryJurisdiction]
    def get_notary_jurisdiction(jurisdiction_id)
      data, _status_code, _headers = get_notary_jurisdiction_with_http_info(jurisdiction_id)
      return data
    end

    # Get notary a jurisdiction for a user
    # Gets a jurisdiction object for the current user.  The following restrictions apply:  - The current user must be a notary. - The &#x60;jurisdictionId&#x60; must be a jurisdiction that the notary is registered for. 
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
    # Returns a list of jurisdictions that the notary is registered in. The current user must be a notary.
    # @return [NotaryJurisdictionList]
    def get_notary_jurisdictions()
      data, _status_code, _headers = get_notary_jurisdictions_with_http_info()
      return data
    end

    # Get notary jurisdictions for a user
    # Returns a list of jurisdictions that the notary is registered in. The current user must be a notary.
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
    # Updates notary information for the current user.
    # @param notary  (optional parameter)
    # @return [Notary]
    def update_notary(notary)
      data, _status_code, _headers = update_notary_with_http_info( notary)
      return data
    end

    # Update a notary
    # Updates notary information for the current user.
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
    # Updates the jurisdiction information about a notary.  The following restrictions apply:  - The current user must be a notary. - The `jurisdictionId` path parameter must be a jurisdiction that the notary is registered for. - The `jurisdictionId` path parameter must match the request body's `jurisdiction.jurisdictionId`.  The request body must have a full `jurisdiction` object for the jurisdiction property. The best way to do this is to use `getNotaryJurisdiction` to obtain the current values and update the properties you want to change.  For example, assume `getNotaryJurisdiction` returns this:  ``` {     \"jurisdiction\": {         \"jurisdictionId\": \"15\",         \"name\": \"Iowa\",         \"county\": \"\",         \"enabled\": \"true\",         \"countyInSeal\": \"false\",         \"commissionIdInSeal\": \"true\",         \"stateNameInSeal\": \"true\",         \"notaryPublicInSeal\": \"true\",         \"allowSystemCreatedSeal\": \"true\",         \"allowUserUploadedSeal\": \"false\"     },     \"commissionId\": \"123456\",     \"commissionExpiration\": \"2020-08-31T07:00:00.0000000Z\",     \"registeredName\": \"Bob Notary\",     \"county\": \"Adams\",     \"sealType\": \"system_created\" } ```  If you want to change the name of the notary from \"Bob Notary\" to \"Robert Notary\", your request body would be:  ``` {     \"jurisdiction\": {         \"jurisdictionId\": \"15\",         \"name\": \"Iowa\",         \"county\": \"\",         \"enabled\": \"true\",         \"countyInSeal\": \"false\",         \"commissionIdInSeal\": \"true\",         \"stateNameInSeal\": \"true\",         \"notaryPublicInSeal\": \"true\",         \"allowSystemCreatedSeal\": \"true\",         \"allowUserUploadedSeal\": \"false\"     },     \"commissionId\": \"123456\",     \"commissionExpiration\": \"2020-08-31T07:00:00.0000000Z\",     \"registeredName\": \"Robert Notary\",     \"county\": \"Adams\",     \"sealType\": \"system_created\" } ``` 
    # @param jurisdiction_id 
    # @param notary_jurisdiction  (optional parameter)
    # @return [NotaryJurisdiction]
    def update_notary_jurisdiction(jurisdiction_id, notary_jurisdiction)
      data, _status_code, _headers = update_notary_jurisdiction_with_http_info(jurisdiction_id,  notary_jurisdiction)
      return data
    end

    # Update a notary jurisdiction
    # Updates the jurisdiction information about a notary.  The following restrictions apply:  - The current user must be a notary. - The &#x60;jurisdictionId&#x60; path parameter must be a jurisdiction that the notary is registered for. - The &#x60;jurisdictionId&#x60; path parameter must match the request body&#39;s &#x60;jurisdiction.jurisdictionId&#x60;.  The request body must have a full &#x60;jurisdiction&#x60; object for the jurisdiction property. The best way to do this is to use &#x60;getNotaryJurisdiction&#x60; to obtain the current values and update the properties you want to change.  For example, assume &#x60;getNotaryJurisdiction&#x60; returns this:  &#x60;&#x60;&#x60; {     \&quot;jurisdiction\&quot;: {         \&quot;jurisdictionId\&quot;: \&quot;15\&quot;,         \&quot;name\&quot;: \&quot;Iowa\&quot;,         \&quot;county\&quot;: \&quot;\&quot;,         \&quot;enabled\&quot;: \&quot;true\&quot;,         \&quot;countyInSeal\&quot;: \&quot;false\&quot;,         \&quot;commissionIdInSeal\&quot;: \&quot;true\&quot;,         \&quot;stateNameInSeal\&quot;: \&quot;true\&quot;,         \&quot;notaryPublicInSeal\&quot;: \&quot;true\&quot;,         \&quot;allowSystemCreatedSeal\&quot;: \&quot;true\&quot;,         \&quot;allowUserUploadedSeal\&quot;: \&quot;false\&quot;     },     \&quot;commissionId\&quot;: \&quot;123456\&quot;,     \&quot;commissionExpiration\&quot;: \&quot;2020-08-31T07:00:00.0000000Z\&quot;,     \&quot;registeredName\&quot;: \&quot;Bob Notary\&quot;,     \&quot;county\&quot;: \&quot;Adams\&quot;,     \&quot;sealType\&quot;: \&quot;system_created\&quot; } &#x60;&#x60;&#x60;  If you want to change the name of the notary from \&quot;Bob Notary\&quot; to \&quot;Robert Notary\&quot;, your request body would be:  &#x60;&#x60;&#x60; {     \&quot;jurisdiction\&quot;: {         \&quot;jurisdictionId\&quot;: \&quot;15\&quot;,         \&quot;name\&quot;: \&quot;Iowa\&quot;,         \&quot;county\&quot;: \&quot;\&quot;,         \&quot;enabled\&quot;: \&quot;true\&quot;,         \&quot;countyInSeal\&quot;: \&quot;false\&quot;,         \&quot;commissionIdInSeal\&quot;: \&quot;true\&quot;,         \&quot;stateNameInSeal\&quot;: \&quot;true\&quot;,         \&quot;notaryPublicInSeal\&quot;: \&quot;true\&quot;,         \&quot;allowSystemCreatedSeal\&quot;: \&quot;true\&quot;,         \&quot;allowUserUploadedSeal\&quot;: \&quot;false\&quot;     },     \&quot;commissionId\&quot;: \&quot;123456\&quot;,     \&quot;commissionExpiration\&quot;: \&quot;2020-08-31T07:00:00.0000000Z\&quot;,     \&quot;registeredName\&quot;: \&quot;Robert Notary\&quot;,     \&quot;county\&quot;: \&quot;Adams\&quot;,     \&quot;sealType\&quot;: \&quot;system_created\&quot; } &#x60;&#x60;&#x60; 
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