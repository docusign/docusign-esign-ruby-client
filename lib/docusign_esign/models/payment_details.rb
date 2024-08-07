=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # When a formula tab has a `paymentDetails` property, the formula tab is a payment item. See [Requesting Payments Along with Signatures][paymentguide] in the DocuSign Support Center to learn more about payments.  [paymentguide]:     https://support.docusign.com/en/guides/requesting-payments-along-with-signatures 
  class PaymentDetails
    # 
    attr_accessor :allowed_payment_methods

    # 
    attr_accessor :charge_id

    # 
    attr_accessor :currency_code

    # Metadata that indicates whether the `currencyCode` property is editable.
    attr_accessor :currency_code_metadata

    # 
    attr_accessor :customer_id

    # 
    attr_accessor :custom_metadata

    # 
    attr_accessor :custom_metadata_required

    # 
    attr_accessor :gateway_account_id

    # Metadata that indicates whether the `gatewayAccountId` property is editable.
    attr_accessor :gateway_account_id_metadata

    # 
    attr_accessor :gateway_display_name

    # 
    attr_accessor :gateway_name

    # 
    attr_accessor :line_items

    # 
    attr_accessor :payment_option

    # 
    attr_accessor :payment_source_id

    # 
    attr_accessor :signer_values

    # Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later.
    attr_accessor :status

    # 
    attr_accessor :sub_gateway_name

    # This read-only property is a currency-formatted string that represents the total of all the line items. The total is available only after the document is completed, which is when all recipients have paid and have completed all required fields. 
    attr_accessor :total

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allowed_payment_methods' => :'allowedPaymentMethods',
        :'charge_id' => :'chargeId',
        :'currency_code' => :'currencyCode',
        :'currency_code_metadata' => :'currencyCodeMetadata',
        :'customer_id' => :'customerId',
        :'custom_metadata' => :'customMetadata',
        :'custom_metadata_required' => :'customMetadataRequired',
        :'gateway_account_id' => :'gatewayAccountId',
        :'gateway_account_id_metadata' => :'gatewayAccountIdMetadata',
        :'gateway_display_name' => :'gatewayDisplayName',
        :'gateway_name' => :'gatewayName',
        :'line_items' => :'lineItems',
        :'payment_option' => :'paymentOption',
        :'payment_source_id' => :'paymentSourceId',
        :'signer_values' => :'signerValues',
        :'status' => :'status',
        :'sub_gateway_name' => :'subGatewayName',
        :'total' => :'total'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allowed_payment_methods' => :'Array<String>',
        :'charge_id' => :'String',
        :'currency_code' => :'String',
        :'currency_code_metadata' => :'PropertyMetadata',
        :'customer_id' => :'String',
        :'custom_metadata' => :'String',
        :'custom_metadata_required' => :'BOOLEAN',
        :'gateway_account_id' => :'String',
        :'gateway_account_id_metadata' => :'PropertyMetadata',
        :'gateway_display_name' => :'String',
        :'gateway_name' => :'String',
        :'line_items' => :'Array<PaymentLineItem>',
        :'payment_option' => :'String',
        :'payment_source_id' => :'String',
        :'signer_values' => :'PaymentSignerValues',
        :'status' => :'String',
        :'sub_gateway_name' => :'String',
        :'total' => :'Money'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'allowedPaymentMethods')
        if (value = attributes[:'allowedPaymentMethods']).is_a?(Array)
          self.allowed_payment_methods = value
        end
      end

      if attributes.has_key?(:'chargeId')
        self.charge_id = attributes[:'chargeId']
      end

      if attributes.has_key?(:'currencyCode')
        self.currency_code = attributes[:'currencyCode']
      end

      if attributes.has_key?(:'currencyCodeMetadata')
        self.currency_code_metadata = attributes[:'currencyCodeMetadata']
      end

      if attributes.has_key?(:'customerId')
        self.customer_id = attributes[:'customerId']
      end

      if attributes.has_key?(:'customMetadata')
        self.custom_metadata = attributes[:'customMetadata']
      end

      if attributes.has_key?(:'customMetadataRequired')
        self.custom_metadata_required = attributes[:'customMetadataRequired']
      end

      if attributes.has_key?(:'gatewayAccountId')
        self.gateway_account_id = attributes[:'gatewayAccountId']
      end

      if attributes.has_key?(:'gatewayAccountIdMetadata')
        self.gateway_account_id_metadata = attributes[:'gatewayAccountIdMetadata']
      end

      if attributes.has_key?(:'gatewayDisplayName')
        self.gateway_display_name = attributes[:'gatewayDisplayName']
      end

      if attributes.has_key?(:'gatewayName')
        self.gateway_name = attributes[:'gatewayName']
      end

      if attributes.has_key?(:'lineItems')
        if (value = attributes[:'lineItems']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.has_key?(:'paymentOption')
        self.payment_option = attributes[:'paymentOption']
      end

      if attributes.has_key?(:'paymentSourceId')
        self.payment_source_id = attributes[:'paymentSourceId']
      end

      if attributes.has_key?(:'signerValues')
        self.signer_values = attributes[:'signerValues']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'subGatewayName')
        self.sub_gateway_name = attributes[:'subGatewayName']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allowed_payment_methods == o.allowed_payment_methods &&
          charge_id == o.charge_id &&
          currency_code == o.currency_code &&
          currency_code_metadata == o.currency_code_metadata &&
          customer_id == o.customer_id &&
          custom_metadata == o.custom_metadata &&
          custom_metadata_required == o.custom_metadata_required &&
          gateway_account_id == o.gateway_account_id &&
          gateway_account_id_metadata == o.gateway_account_id_metadata &&
          gateway_display_name == o.gateway_display_name &&
          gateway_name == o.gateway_name &&
          line_items == o.line_items &&
          payment_option == o.payment_option &&
          payment_source_id == o.payment_source_id &&
          signer_values == o.signer_values &&
          status == o.status &&
          sub_gateway_name == o.sub_gateway_name &&
          total == o.total
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allowed_payment_methods, charge_id, currency_code, currency_code_metadata, customer_id, custom_metadata, custom_metadata_required, gateway_account_id, gateway_account_id_metadata, gateway_display_name, gateway_name, line_items, payment_option, payment_source_id, signer_values, status, sub_gateway_name, total].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_eSign.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
