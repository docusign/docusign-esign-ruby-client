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

  class GetPowerFormDataOptions
    # 
    attr_accessor :data_layout

    # 
    attr_accessor :from_date

    # 
    attr_accessor :to_date

    def self.default
      @@default ||= GetPowerFormDataOptions.new
    end
  end

  class ListPowerFormSendersOptions
    # 
    attr_accessor :start_position

    def self.default
      @@default ||= ListPowerFormSendersOptions.new
    end
  end

  class ListPowerFormsOptions
    # 
    attr_accessor :from_date

    # 
    attr_accessor :order

    # 
    attr_accessor :order_by

    # 
    attr_accessor :to_date

    def self.default
      @@default ||= ListPowerFormsOptions.new
    end
  end


  class PowerFormsApi
    attr_accessor :api_client

    def initialize(api_client = PowerFormsApi.default)
      @api_client = api_client
    end

    # Creates a new PowerForm.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_form  (optional parameter)
    # @return [PowerForm]
    def create_power_form(account_id, power_form)
      data, _status_code, _headers = create_power_form_with_http_info(account_id,  power_form)
      return data
    end

    # Creates a new PowerForm.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_form  (optional parameter)
    # @return [Array<(PowerForm, Fixnum, Hash)>] PowerForm data, response status code and response headers
    def create_power_form_with_http_info(account_id, power_form)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerFormsApi.create_power_form ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerFormsApi.create_power_form" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/powerforms".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(power_form)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PowerForm')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerFormsApi#create_power_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a PowerForm.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_form_id 
    # @return [nil]
    def delete_power_form(account_id, power_form_id)
      delete_power_form_with_http_info(account_id, power_form_id)
      return nil
    end

    # Delete a PowerForm.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_form_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_power_form_with_http_info(account_id, power_form_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerFormsApi.delete_power_form ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerFormsApi.delete_power_form" if account_id.nil?
      # verify the required parameter 'power_form_id' is set
      fail ArgumentError, "Missing the required parameter 'power_form_id' when calling PowerFormsApi.delete_power_form" if power_form_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/powerforms/{powerFormId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'powerFormId' + '}', power_form_id.to_s)

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
        @api_client.config.logger.debug "API called: PowerFormsApi#delete_power_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes one or more PowerForms
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_forms_request  (optional parameter)
    # @return [PowerFormsResponse]
    def delete_power_forms(account_id, power_forms_request)
      data, _status_code, _headers = delete_power_forms_with_http_info(account_id,  power_forms_request)
      return data
    end

    # Deletes one or more PowerForms
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_forms_request  (optional parameter)
    # @return [Array<(PowerFormsResponse, Fixnum, Hash)>] PowerFormsResponse data, response status code and response headers
    def delete_power_forms_with_http_info(account_id, power_forms_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerFormsApi.delete_power_forms ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerFormsApi.delete_power_forms" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/powerforms".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(power_forms_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PowerFormsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerFormsApi#delete_power_forms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single PowerForm.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_form_id 
    # @return [PowerForm]
    def get_power_form(account_id, power_form_id)
      data, _status_code, _headers = get_power_form_with_http_info(account_id, power_form_id)
      return data
    end

    # Returns a single PowerForm.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_form_id 
    # @return [Array<(PowerForm, Fixnum, Hash)>] PowerForm data, response status code and response headers
    def get_power_form_with_http_info(account_id, power_form_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerFormsApi.get_power_form ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerFormsApi.get_power_form" if account_id.nil?
      # verify the required parameter 'power_form_id' is set
      fail ArgumentError, "Missing the required parameter 'power_form_id' when calling PowerFormsApi.get_power_form" if power_form_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/powerforms/{powerFormId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'powerFormId' + '}', power_form_id.to_s)

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
        :return_type => 'PowerForm')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerFormsApi#get_power_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the form data associated with the usage of a PowerForm.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_form_id 
    # @param DocuSign_eSign::GetPowerFormDataOptions Options for modifying the behavior of the function.
    # @return [PowerFormsFormDataResponse]
    def get_power_form_data(account_id, power_form_id, options = DocuSign_eSign::GetPowerFormDataOptions.default)
      data, _status_code, _headers = get_power_form_data_with_http_info(account_id, power_form_id, options)
      return data
    end

    # Returns the form data associated with the usage of a PowerForm.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_form_id 
    # @param DocuSign_eSign::GetPowerFormDataOptions Options for modifying the behavior of the function.
    # @return [Array<(PowerFormsFormDataResponse, Fixnum, Hash)>] PowerFormsFormDataResponse data, response status code and response headers
    def get_power_form_data_with_http_info(account_id, power_form_id, options = DocuSign_eSign::GetPowerFormDataOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerFormsApi.get_power_form_data ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerFormsApi.get_power_form_data" if account_id.nil?
      # verify the required parameter 'power_form_id' is set
      fail ArgumentError, "Missing the required parameter 'power_form_id' when calling PowerFormsApi.get_power_form_data" if power_form_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/powerforms/{powerFormId}/form_data".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'powerFormId' + '}', power_form_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'data_layout'] = options.data_layout if !options.data_layout.nil?
      query_params[:'from_date'] = options.from_date if !options.from_date.nil?
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
        :return_type => 'PowerFormsFormDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerFormsApi#get_power_form_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the list of PowerForms available to the user.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListPowerFormSendersOptions Options for modifying the behavior of the function.
    # @return [PowerFormSendersResponse]
    def list_power_form_senders(account_id, options = DocuSign_eSign::ListPowerFormSendersOptions.default)
      data, _status_code, _headers = list_power_form_senders_with_http_info(account_id, options)
      return data
    end

    # Returns the list of PowerForms available to the user.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListPowerFormSendersOptions Options for modifying the behavior of the function.
    # @return [Array<(PowerFormSendersResponse, Fixnum, Hash)>] PowerFormSendersResponse data, response status code and response headers
    def list_power_form_senders_with_http_info(account_id, options = DocuSign_eSign::ListPowerFormSendersOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerFormsApi.list_power_form_senders ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerFormsApi.list_power_form_senders" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/powerforms/senders".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'PowerFormSendersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerFormsApi#list_power_form_senders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the list of PowerForms available to the user.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListPowerFormsOptions Options for modifying the behavior of the function.
    # @return [PowerFormsResponse]
    def list_power_forms(account_id, options = DocuSign_eSign::ListPowerFormsOptions.default)
      data, _status_code, _headers = list_power_forms_with_http_info(account_id, options)
      return data
    end

    # Returns the list of PowerForms available to the user.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListPowerFormsOptions Options for modifying the behavior of the function.
    # @return [Array<(PowerFormsResponse, Fixnum, Hash)>] PowerFormsResponse data, response status code and response headers
    def list_power_forms_with_http_info(account_id, options = DocuSign_eSign::ListPowerFormsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerFormsApi.list_power_forms ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerFormsApi.list_power_forms" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/powerforms".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'from_date'] = options.from_date if !options.from_date.nil?
      query_params[:'order'] = options.order if !options.order.nil?
      query_params[:'order_by'] = options.order_by if !options.order_by.nil?
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
        :return_type => 'PowerFormsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerFormsApi#list_power_forms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new PowerForm.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_form_id 
    # @param power_form  (optional parameter)
    # @return [PowerForm]
    def update_power_form(account_id, power_form_id, power_form)
      data, _status_code, _headers = update_power_form_with_http_info(account_id, power_form_id,  power_form)
      return data
    end

    # Creates a new PowerForm.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @param power_form_id 
    # @param power_form  (optional parameter)
    # @return [Array<(PowerForm, Fixnum, Hash)>] PowerForm data, response status code and response headers
    def update_power_form_with_http_info(account_id, power_form_id, power_form)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerFormsApi.update_power_form ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerFormsApi.update_power_form" if account_id.nil?
      # verify the required parameter 'power_form_id' is set
      fail ArgumentError, "Missing the required parameter 'power_form_id' when calling PowerFormsApi.update_power_form" if power_form_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/powerforms/{powerFormId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'powerFormId' + '}', power_form_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(power_form)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PowerForm')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerFormsApi#update_power_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end