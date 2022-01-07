=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # Defines an account billing plan response object.
  class AccountBillingPlanResponse
    attr_accessor :billing_address

    # When set to **true**, the credit card address information is the same as that returned as the billing address. If false, then the billing address is considered a billing contact address, and the credit card address can be different.
    attr_accessor :billing_address_is_credit_card_address

    attr_accessor :billing_plan

    attr_accessor :credit_card_information

    attr_accessor :direct_debit_processor_information

    attr_accessor :downgrade_plan_information

    attr_accessor :downgrade_request_information

    attr_accessor :entity_information

    # 
    attr_accessor :payment_method

    attr_accessor :payment_processor_information

    attr_accessor :referral_information

    # 
    attr_accessor :successor_plans

    # 
    attr_accessor :tax_exempt_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billing_address' => :'billingAddress',
        :'billing_address_is_credit_card_address' => :'billingAddressIsCreditCardAddress',
        :'billing_plan' => :'billingPlan',
        :'credit_card_information' => :'creditCardInformation',
        :'direct_debit_processor_information' => :'directDebitProcessorInformation',
        :'downgrade_plan_information' => :'downgradePlanInformation',
        :'downgrade_request_information' => :'downgradeRequestInformation',
        :'entity_information' => :'entityInformation',
        :'payment_method' => :'paymentMethod',
        :'payment_processor_information' => :'paymentProcessorInformation',
        :'referral_information' => :'referralInformation',
        :'successor_plans' => :'successorPlans',
        :'tax_exempt_id' => :'taxExemptId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'billing_address' => :'AccountAddress',
        :'billing_address_is_credit_card_address' => :'String',
        :'billing_plan' => :'AccountBillingPlan',
        :'credit_card_information' => :'CreditCardInformation',
        :'direct_debit_processor_information' => :'DirectDebitProcessorInformation',
        :'downgrade_plan_information' => :'DowngradePlanUpdateResponse',
        :'downgrade_request_information' => :'DowngradeRequestInformation',
        :'entity_information' => :'BillingEntityInformationResponse',
        :'payment_method' => :'String',
        :'payment_processor_information' => :'PaymentProcessorInformation',
        :'referral_information' => :'ReferralInformation',
        :'successor_plans' => :'Array<BillingPlan>',
        :'tax_exempt_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'billingAddress')
        self.billing_address = attributes[:'billingAddress']
      end

      if attributes.has_key?(:'billingAddressIsCreditCardAddress')
        self.billing_address_is_credit_card_address = attributes[:'billingAddressIsCreditCardAddress']
      end

      if attributes.has_key?(:'billingPlan')
        self.billing_plan = attributes[:'billingPlan']
      end

      if attributes.has_key?(:'creditCardInformation')
        self.credit_card_information = attributes[:'creditCardInformation']
      end

      if attributes.has_key?(:'directDebitProcessorInformation')
        self.direct_debit_processor_information = attributes[:'directDebitProcessorInformation']
      end

      if attributes.has_key?(:'downgradePlanInformation')
        self.downgrade_plan_information = attributes[:'downgradePlanInformation']
      end

      if attributes.has_key?(:'downgradeRequestInformation')
        self.downgrade_request_information = attributes[:'downgradeRequestInformation']
      end

      if attributes.has_key?(:'entityInformation')
        self.entity_information = attributes[:'entityInformation']
      end

      if attributes.has_key?(:'paymentMethod')
        self.payment_method = attributes[:'paymentMethod']
      end

      if attributes.has_key?(:'paymentProcessorInformation')
        self.payment_processor_information = attributes[:'paymentProcessorInformation']
      end

      if attributes.has_key?(:'referralInformation')
        self.referral_information = attributes[:'referralInformation']
      end

      if attributes.has_key?(:'successorPlans')
        if (value = attributes[:'successorPlans']).is_a?(Array)
          self.successor_plans = value
        end
      end

      if attributes.has_key?(:'taxExemptId')
        self.tax_exempt_id = attributes[:'taxExemptId']
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
          billing_address == o.billing_address &&
          billing_address_is_credit_card_address == o.billing_address_is_credit_card_address &&
          billing_plan == o.billing_plan &&
          credit_card_information == o.credit_card_information &&
          direct_debit_processor_information == o.direct_debit_processor_information &&
          downgrade_plan_information == o.downgrade_plan_information &&
          downgrade_request_information == o.downgrade_request_information &&
          entity_information == o.entity_information &&
          payment_method == o.payment_method &&
          payment_processor_information == o.payment_processor_information &&
          referral_information == o.referral_information &&
          successor_plans == o.successor_plans &&
          tax_exempt_id == o.tax_exempt_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [billing_address, billing_address_is_credit_card_address, billing_plan, credit_card_information, direct_debit_processor_information, downgrade_plan_information, downgrade_request_information, entity_information, payment_method, payment_processor_information, referral_information, successor_plans, tax_exempt_id].hash
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
