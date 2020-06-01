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

  class GetPlanOptions
    # When set to **true**, excludes credit card information from the response.
    attr_accessor :include_credit_card_information

    # When set to **true**, the `canUpgrade` and `renewalStatus` properities are included the response and an array of `supportedCountries` property is added to the `billingAddress` information. 
    attr_accessor :include_metadata

    # When set to **true**, excludes successor information from the response.
    attr_accessor :include_successor_plans

    def self.default
      @@default ||= GetPlanOptions.new
    end
  end

  class ListInvoicesOptions
    # Specifies the date/time of the earliest invoice in the account to retrieve.
    attr_accessor :from_date

    # Specifies the date/time of the latest invoice in the account to retrieve.
    attr_accessor :to_date

    def self.default
      @@default ||= ListInvoicesOptions.new
    end
  end

  class ListPaymentsOptions
    # Specifies the date/time of the earliest payment in the account to retrieve.
    attr_accessor :from_date

    # Specifies the date/time of the latest payment in the account to retrieve.
    attr_accessor :to_date

    def self.default
      @@default ||= ListPaymentsOptions.new
    end
  end

  class UpdatePlanOptions
    # When set to **true**, updates the account using a preview billing plan.
    attr_accessor :preview_billing_plan

    def self.default
      @@default ||= UpdatePlanOptions.new
    end
  end


  class BillingApi
    attr_accessor :api_client

    def initialize(api_client = BillingApi.default)
      @api_client = api_client
    end

    # Get the billing plan details.
    # Retrieves the billing plan details for the specified billing plan ID.
    # @param billing_plan_id The ID of the billing plan being accessed.
    # @return [BillingPlanResponse]
    def get_billing_plan(billing_plan_id)
      data, _status_code, _headers = get_billing_plan_with_http_info(billing_plan_id)
      return data
    end

    # Get the billing plan details.
    # Retrieves the billing plan details for the specified billing plan ID.
    # @param billing_plan_id The ID of the billing plan being accessed.
    # @return [Array<(BillingPlanResponse, Fixnum, Hash)>] BillingPlanResponse data, response status code and response headers
    def get_billing_plan_with_http_info(billing_plan_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.get_billing_plan ..."
      end
      # verify the required parameter 'billing_plan_id' is set
      fail ArgumentError, "Missing the required parameter 'billing_plan_id' when calling BillingApi.get_billing_plan" if billing_plan_id.nil?
      # resource path
      local_var_path = "/v2/billing_plans/{billingPlanId}".sub('{format}','json').sub('{' + 'billingPlanId' + '}', billing_plan_id.to_s)

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
        :return_type => 'BillingPlanResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#get_billing_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get metadata for a given credit card.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @return [CreditCardInformation]
    def get_credit_card_info(account_id)
      data, _status_code, _headers = get_credit_card_info_with_http_info(account_id)
      return data
    end

    # Get metadata for a given credit card.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @return [Array<(CreditCardInformation, Fixnum, Hash)>] CreditCardInformation data, response status code and response headers
    def get_credit_card_info_with_http_info(account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.get_credit_card_info ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BillingApi.get_credit_card_info" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/billing_plan/credit_card".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

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
        :return_type => 'CreditCardInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#get_credit_card_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a billing invoice.
    # Retrieves the specified invoice.   ###### Note: If the `pdfAvailable` property in the response is set to *true*, you can download a PDF version of the invoice. To download the PDF, make the call again and change the value of the `Accept` property in the header to `Accept: application/pdf`.  Privileges required: account administrator  The response returns a list of charges and information about the charges. Quantities are usually shown as 'unlimited' or an integer. Amounts are shown in the currency set for the account.  **Response** The following table provides a description of the different `chargeName` property values. The information will grow as more chargeable items are added to the system.  | chargeName | Description | | --- | --- | | id_check | IDÃÂÃÂÃÂÃÂ Check Charge | | in_person_signing | In Person Signing charge | | envelopes Included | Sent Envelopes for the account | | age_verify | Age verification check | | ofac | OFAC Check | | id_confirm | ID confirmation check | | student_authentication | STAN PIN authentication check | | wet_sign_fax | Pages for returning signed documents by fax | | attachment_fax | Pages for returning attachments by fax | | phone_authentication | Phone authentication charge | | powerforms | PowerForm envelopes sent | | signer_payments | Payment processing charge | | outbound_fax | Send by fax charge | | bulk_recipient_envelopes | Bulk Recipient Envelopes sent | | sms_authentications | SMS authentication charge | | saml_authentications | SAML authentication charge | | express_signer_certificate | DocuSign Express Certificate charge | | personal_signer_certificate | Personal Signer Certificate charge | | safe_certificate | SAFE BioPharma Signer Certificate charge | | seats | Included active seats charge | | open_trust_certificate | OpenTrust Signer Certificate charge | 
    # @param account_id The external account number (int) or account ID Guid.
    # @param invoice_id 
    # @return [BillingInvoice]
    def get_invoice(account_id, invoice_id)
      data, _status_code, _headers = get_invoice_with_http_info(account_id, invoice_id)
      return data
    end

    # Retrieves a billing invoice.
    # Retrieves the specified invoice.   ###### Note: If the &#x60;pdfAvailable&#x60; property in the response is set to *true*, you can download a PDF version of the invoice. To download the PDF, make the call again and change the value of the &#x60;Accept&#x60; property in the header to &#x60;Accept: application/pdf&#x60;.  Privileges required: account administrator  The response returns a list of charges and information about the charges. Quantities are usually shown as &#39;unlimited&#39; or an integer. Amounts are shown in the currency set for the account.  **Response** The following table provides a description of the different &#x60;chargeName&#x60; property values. The information will grow as more chargeable items are added to the system.  | chargeName | Description | | --- | --- | | id_check | IDÃÂÃÂÃÂÃÂ Check Charge | | in_person_signing | In Person Signing charge | | envelopes Included | Sent Envelopes for the account | | age_verify | Age verification check | | ofac | OFAC Check | | id_confirm | ID confirmation check | | student_authentication | STAN PIN authentication check | | wet_sign_fax | Pages for returning signed documents by fax | | attachment_fax | Pages for returning attachments by fax | | phone_authentication | Phone authentication charge | | powerforms | PowerForm envelopes sent | | signer_payments | Payment processing charge | | outbound_fax | Send by fax charge | | bulk_recipient_envelopes | Bulk Recipient Envelopes sent | | sms_authentications | SMS authentication charge | | saml_authentications | SAML authentication charge | | express_signer_certificate | DocuSign Express Certificate charge | | personal_signer_certificate | Personal Signer Certificate charge | | safe_certificate | SAFE BioPharma Signer Certificate charge | | seats | Included active seats charge | | open_trust_certificate | OpenTrust Signer Certificate charge | 
    # @param account_id The external account number (int) or account ID Guid.
    # @param invoice_id 
    # @return [Array<(BillingInvoice, Fixnum, Hash)>] BillingInvoice data, response status code and response headers
    def get_invoice_with_http_info(account_id, invoice_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.get_invoice ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BillingApi.get_invoice" if account_id.nil?
      # verify the required parameter 'invoice_id' is set
      fail ArgumentError, "Missing the required parameter 'invoice_id' when calling BillingApi.get_invoice" if invoice_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/billing_invoices/{invoiceId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'invoiceId' + '}', invoice_id.to_s)

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
        :return_type => 'BillingInvoice')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#get_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets billing payment information for a specific payment.
    # Retrieves the information for a specified payment.   Privileges required: account administrator 
    # @param account_id The external account number (int) or account ID Guid.
    # @param payment_id 
    # @return [BillingPaymentItem]
    def get_payment(account_id, payment_id)
      data, _status_code, _headers = get_payment_with_http_info(account_id, payment_id)
      return data
    end

    # Gets billing payment information for a specific payment.
    # Retrieves the information for a specified payment.   Privileges required: account administrator 
    # @param account_id The external account number (int) or account ID Guid.
    # @param payment_id 
    # @return [Array<(BillingPaymentItem, Fixnum, Hash)>] BillingPaymentItem data, response status code and response headers
    def get_payment_with_http_info(account_id, payment_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.get_payment ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BillingApi.get_payment" if account_id.nil?
      # verify the required parameter 'payment_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_id' when calling BillingApi.get_payment" if payment_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/billing_payments/{paymentId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        :return_type => 'BillingPaymentItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#get_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Account Billing Plan
    # Retrieves the billing plan information for the specified account, including the current billing plan, successor plans, billing address, and billing credit card.  By default the successor plan and credit card information is included in the response. This information can be excluded from the response by adding the appropriate optional query string with the `setting` set to **false**.   Response  The response returns the billing plan information, including the currency code, for the plan. The `billingPlan` and `succesorPlans` property values are the same as those shown in the [ML:Get Billing Plan Details] reference. the `billingAddress` and `creditCardInformation` property values are the same as those shown in the [ML:Update Billing Plan] reference.  ###### Note: When credit card number information is shown, a mask is applied to the response so that only the last 4 digits of the card number are visible. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::GetPlanOptions Options for modifying the behavior of the function.
    # @return [AccountBillingPlanResponse]
    def get_plan(account_id, options = DocuSign_eSign::GetPlanOptions.default)
      data, _status_code, _headers = get_plan_with_http_info(account_id, options)
      return data
    end

    # Get Account Billing Plan
    # Retrieves the billing plan information for the specified account, including the current billing plan, successor plans, billing address, and billing credit card.  By default the successor plan and credit card information is included in the response. This information can be excluded from the response by adding the appropriate optional query string with the &#x60;setting&#x60; set to **false**.   Response  The response returns the billing plan information, including the currency code, for the plan. The &#x60;billingPlan&#x60; and &#x60;succesorPlans&#x60; property values are the same as those shown in the [ML:Get Billing Plan Details] reference. the &#x60;billingAddress&#x60; and &#x60;creditCardInformation&#x60; property values are the same as those shown in the [ML:Update Billing Plan] reference.  ###### Note: When credit card number information is shown, a mask is applied to the response so that only the last 4 digits of the card number are visible. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::GetPlanOptions Options for modifying the behavior of the function.
    # @return [Array<(AccountBillingPlanResponse, Fixnum, Hash)>] AccountBillingPlanResponse data, response status code and response headers
    def get_plan_with_http_info(account_id, options = DocuSign_eSign::GetPlanOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.get_plan ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BillingApi.get_plan" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/billing_plan".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include_credit_card_information'] = options.include_credit_card_information if !options.include_credit_card_information.nil?
      query_params[:'include_metadata'] = options.include_metadata if !options.include_metadata.nil?
      query_params[:'include_successor_plans'] = options.include_successor_plans if !options.include_successor_plans.nil?

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
        :return_type => 'AccountBillingPlanResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#get_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the list of available billing plans.
    # Retrieves a list of the billing plans associated with a distributor.
    # @return [BillingPlansResponse]
    def list_billing_plans()
      data, _status_code, _headers = list_billing_plans_with_http_info()
      return data
    end

    # Gets the list of available billing plans.
    # Retrieves a list of the billing plans associated with a distributor.
    # @return [Array<(BillingPlansResponse, Fixnum, Hash)>] BillingPlansResponse data, response status code and response headers
    def list_billing_plans_with_http_info()
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.list_billing_plans ..."
      end
      # resource path
      local_var_path = "/v2/billing_plans".sub('{format}','json')

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
        :return_type => 'BillingPlansResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#list_billing_plans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a List of Billing Invoices
    # Retrieves a list of invoices for the account. If the from date or to date queries are not specified, the response returns invoices for the last 365 days.  Privileges required: account administrator 
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListInvoicesOptions Options for modifying the behavior of the function.
    # @return [BillingInvoicesResponse]
    def list_invoices(account_id, options = DocuSign_eSign::ListInvoicesOptions.default)
      data, _status_code, _headers = list_invoices_with_http_info(account_id, options)
      return data
    end

    # Get a List of Billing Invoices
    # Retrieves a list of invoices for the account. If the from date or to date queries are not specified, the response returns invoices for the last 365 days.  Privileges required: account administrator 
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListInvoicesOptions Options for modifying the behavior of the function.
    # @return [Array<(BillingInvoicesResponse, Fixnum, Hash)>] BillingInvoicesResponse data, response status code and response headers
    def list_invoices_with_http_info(account_id, options = DocuSign_eSign::ListInvoicesOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.list_invoices ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BillingApi.list_invoices" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/billing_invoices".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'BillingInvoicesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#list_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of past due invoices.
    # Returns a list past due invoices for the account and notes if payment can be made through the REST API.   Privileges Required: account administrator
    # @param account_id The external account number (int) or account ID Guid.
    # @return [BillingInvoicesSummary]
    def list_invoices_past_due(account_id)
      data, _status_code, _headers = list_invoices_past_due_with_http_info(account_id)
      return data
    end

    # Get a list of past due invoices.
    # Returns a list past due invoices for the account and notes if payment can be made through the REST API.   Privileges Required: account administrator
    # @param account_id The external account number (int) or account ID Guid.
    # @return [Array<(BillingInvoicesSummary, Fixnum, Hash)>] BillingInvoicesSummary data, response status code and response headers
    def list_invoices_past_due_with_http_info(account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.list_invoices_past_due ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BillingApi.list_invoices_past_due" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/billing_invoices_past_due".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

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
        :return_type => 'BillingInvoicesSummary')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#list_invoices_past_due\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets payment information for one or more payments.
    # Retrieves a list containing information about one or more payments. If the from date or to date queries are not used, the response returns payment information for the last 365 days.   Privileges required: account administrator 
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListPaymentsOptions Options for modifying the behavior of the function.
    # @return [BillingPaymentsResponse]
    def list_payments(account_id, options = DocuSign_eSign::ListPaymentsOptions.default)
      data, _status_code, _headers = list_payments_with_http_info(account_id, options)
      return data
    end

    # Gets payment information for one or more payments.
    # Retrieves a list containing information about one or more payments. If the from date or to date queries are not used, the response returns payment information for the last 365 days.   Privileges required: account administrator 
    # @param account_id The external account number (int) or account ID Guid.
    # @param DocuSign_eSign::ListPaymentsOptions Options for modifying the behavior of the function.
    # @return [Array<(BillingPaymentsResponse, Fixnum, Hash)>] BillingPaymentsResponse data, response status code and response headers
    def list_payments_with_http_info(account_id, options = DocuSign_eSign::ListPaymentsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.list_payments ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BillingApi.list_payments" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/billing_payments".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'BillingPaymentsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#list_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Posts a payment to a past due invoice.
    # Posts a payment to a past due invoice.   ###### Note: This can only be used if the `paymentAllowed` value for a past due invoice is true. This can be determined calling [ML:GetBillingInvoicesPastDue].  The response returns information for a single payment, if a payment ID was used in the endpoint, or a list of payments. If the from date or to date queries or payment ID are not used, the response returns payment information for the last 365 days. If the request was for a single payment ID, the `nextUri` and `previousUri` properties are not returned.  Privileges required: account administrator
    # @param account_id The external account number (int) or account ID Guid.
    # @param billing_payment_request  (optional parameter)
    # @return [BillingPaymentResponse]
    def make_payment(account_id, billing_payment_request)
      data, _status_code, _headers = make_payment_with_http_info(account_id,  billing_payment_request)
      return data
    end

    # Posts a payment to a past due invoice.
    # Posts a payment to a past due invoice.   ###### Note: This can only be used if the &#x60;paymentAllowed&#x60; value for a past due invoice is true. This can be determined calling [ML:GetBillingInvoicesPastDue].  The response returns information for a single payment, if a payment ID was used in the endpoint, or a list of payments. If the from date or to date queries or payment ID are not used, the response returns payment information for the last 365 days. If the request was for a single payment ID, the &#x60;nextUri&#x60; and &#x60;previousUri&#x60; properties are not returned.  Privileges required: account administrator
    # @param account_id The external account number (int) or account ID Guid.
    # @param billing_payment_request  (optional parameter)
    # @return [Array<(BillingPaymentResponse, Fixnum, Hash)>] BillingPaymentResponse data, response status code and response headers
    def make_payment_with_http_info(account_id, billing_payment_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.make_payment ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BillingApi.make_payment" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/billing_payments".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(billing_payment_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BillingPaymentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#make_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reserverd: Purchase additional envelopes.
    # Reserved: At this time, this endpoint is limited to DocuSign internal use only. Completes the purchase of envelopes for your account. The actual purchase is done as part of an internal workflow interaction with an envelope vendor.
    # @param account_id The external account number (int) or account ID Guid.
    # @param purchased_envelopes_information  (optional parameter)
    # @return [nil]
    def purchase_envelopes(account_id, purchased_envelopes_information)
      purchase_envelopes_with_http_info(account_id,  purchased_envelopes_information)
      return nil
    end

    # Reserverd: Purchase additional envelopes.
    # Reserved: At this time, this endpoint is limited to DocuSign internal use only. Completes the purchase of envelopes for your account. The actual purchase is done as part of an internal workflow interaction with an envelope vendor.
    # @param account_id The external account number (int) or account ID Guid.
    # @param purchased_envelopes_information  (optional parameter)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def purchase_envelopes_with_http_info(account_id, purchased_envelopes_information)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.purchase_envelopes ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BillingApi.purchase_envelopes" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/billing_plan/purchased_envelopes".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(purchased_envelopes_information)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#purchase_envelopes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates the account billing plan.
    # Updates the billing plan information, billing address, and credit card information for the specified account.
    # @param account_id The external account number (int) or account ID Guid.
    # @param billing_plan_information  (optional parameter)
    # @param DocuSign_eSign::UpdatePlanOptions Options for modifying the behavior of the function.
    # @return [BillingPlanUpdateResponse]
    def update_plan(account_id, billing_plan_information, options = DocuSign_eSign::UpdatePlanOptions.default)
      data, _status_code, _headers = update_plan_with_http_info(account_id,  billing_plan_information, options)
      return data
    end

    # Updates the account billing plan.
    # Updates the billing plan information, billing address, and credit card information for the specified account.
    # @param account_id The external account number (int) or account ID Guid.
    # @param billing_plan_information  (optional parameter)
    # @param DocuSign_eSign::UpdatePlanOptions Options for modifying the behavior of the function.
    # @return [Array<(BillingPlanUpdateResponse, Fixnum, Hash)>] BillingPlanUpdateResponse data, response status code and response headers
    def update_plan_with_http_info(account_id, billing_plan_information, options = DocuSign_eSign::UpdatePlanOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.update_plan ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling BillingApi.update_plan" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/billing_plan".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'preview_billing_plan'] = options.preview_billing_plan if !options.preview_billing_plan.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(billing_plan_information)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BillingPlanUpdateResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#update_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end