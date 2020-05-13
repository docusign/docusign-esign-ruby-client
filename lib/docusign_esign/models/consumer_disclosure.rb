=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13-SNAPSHOT

=end

require 'date'

module DocuSign_eSign
  class ConsumerDisclosure
    # A GUID identifying the account associated with the consumer disclosure
    attr_accessor :account_esign_id

    # Indicates whether the customer can withdraw their acceptance of the consumer disclosure.
    attr_accessor :allow_cd_withdraw

    attr_accessor :allow_cd_withdraw_metadata

    # 
    attr_accessor :change_email

    # 
    attr_accessor :change_email_other

    # The name of the company associated with the consumer disclosure.
    attr_accessor :company_name

    # The phone number of the company associated with the consumer disclosure.
    attr_accessor :company_phone

    # 
    attr_accessor :copy_cost_per_page

    # Specifies the fee collection method for cases in which the customer requires paper copies of the document.  Maximum Length: 255 characters
    attr_accessor :copy_fee_collection_method

    # 
    attr_accessor :copy_request_email

    # 
    attr_accessor :custom

    # 
    attr_accessor :enable_esign

    # The Electronic Record and Signature Disclosure text. The disclosure text includes the html formatting.
    attr_accessor :esign_agreement

    # 
    attr_accessor :esign_text

    # 
    attr_accessor :language_code

    # 
    attr_accessor :must_agree_to_esign

    # 
    attr_accessor :pdf_id

    # 
    attr_accessor :use_brand

    # 
    attr_accessor :use_consumer_disclosure_within_account

    attr_accessor :use_consumer_disclosure_within_account_metadata

    # Contains the first address line of the postal address to which a customer can send a consent withdrawal notification.  Maximum length: 100 characters. 
    attr_accessor :withdraw_address_line1

    # Contains the second address line of the postal address to which a customer can send a consent withdrawal notification.  Maximum length: 100 characters. 
    attr_accessor :withdraw_address_line2

    # Indicates whether the customer can withdraw consent by email.
    attr_accessor :withdraw_by_email

    # Indicates whether the customer can withdraw consent by postal mail.
    attr_accessor :withdraw_by_mail

    # Indicates whether the customer can withdraw consent by phone.
    attr_accessor :withdraw_by_phone

    # Contains the city of the postal address to which a customer can send a consent withdrawal notification.  Maximum length: 50 characters. 
    attr_accessor :withdraw_city

    # Indicates the consequences of withdrawing consent.
    attr_accessor :withdraw_consequences

    # Contains the email address to which a customer can send a consent withdrawal notification.  Maximum length: 100 characters. 
    attr_accessor :withdraw_email

    # Indicates other information need to withdraw consent.  Maximum length: 255 characters.
    attr_accessor :withdraw_other

    # Contains the phone number which a customer can call to register consent withdrawal notification.  Maximum length: 20 characters. 
    attr_accessor :withdraw_phone

    # Contains the postal code of the postal address to which a customer can send a consent withdrawal notification.  Maximum length: 20 characters. 
    attr_accessor :withdraw_postal_code

    # Contains the state of the postal address to which a customer can send a consent withdrawal notification.
    attr_accessor :withdraw_state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_esign_id' => :'accountEsignId',
        :'allow_cd_withdraw' => :'allowCDWithdraw',
        :'allow_cd_withdraw_metadata' => :'allowCDWithdrawMetadata',
        :'change_email' => :'changeEmail',
        :'change_email_other' => :'changeEmailOther',
        :'company_name' => :'companyName',
        :'company_phone' => :'companyPhone',
        :'copy_cost_per_page' => :'copyCostPerPage',
        :'copy_fee_collection_method' => :'copyFeeCollectionMethod',
        :'copy_request_email' => :'copyRequestEmail',
        :'custom' => :'custom',
        :'enable_esign' => :'enableEsign',
        :'esign_agreement' => :'esignAgreement',
        :'esign_text' => :'esignText',
        :'language_code' => :'languageCode',
        :'must_agree_to_esign' => :'mustAgreeToEsign',
        :'pdf_id' => :'pdfId',
        :'use_brand' => :'useBrand',
        :'use_consumer_disclosure_within_account' => :'useConsumerDisclosureWithinAccount',
        :'use_consumer_disclosure_within_account_metadata' => :'useConsumerDisclosureWithinAccountMetadata',
        :'withdraw_address_line1' => :'withdrawAddressLine1',
        :'withdraw_address_line2' => :'withdrawAddressLine2',
        :'withdraw_by_email' => :'withdrawByEmail',
        :'withdraw_by_mail' => :'withdrawByMail',
        :'withdraw_by_phone' => :'withdrawByPhone',
        :'withdraw_city' => :'withdrawCity',
        :'withdraw_consequences' => :'withdrawConsequences',
        :'withdraw_email' => :'withdrawEmail',
        :'withdraw_other' => :'withdrawOther',
        :'withdraw_phone' => :'withdrawPhone',
        :'withdraw_postal_code' => :'withdrawPostalCode',
        :'withdraw_state' => :'withdrawState'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_esign_id' => :'String',
        :'allow_cd_withdraw' => :'String',
        :'allow_cd_withdraw_metadata' => :'SettingsMetadata',
        :'change_email' => :'String',
        :'change_email_other' => :'String',
        :'company_name' => :'String',
        :'company_phone' => :'String',
        :'copy_cost_per_page' => :'String',
        :'copy_fee_collection_method' => :'String',
        :'copy_request_email' => :'String',
        :'custom' => :'String',
        :'enable_esign' => :'String',
        :'esign_agreement' => :'String',
        :'esign_text' => :'String',
        :'language_code' => :'String',
        :'must_agree_to_esign' => :'String',
        :'pdf_id' => :'String',
        :'use_brand' => :'String',
        :'use_consumer_disclosure_within_account' => :'String',
        :'use_consumer_disclosure_within_account_metadata' => :'SettingsMetadata',
        :'withdraw_address_line1' => :'String',
        :'withdraw_address_line2' => :'String',
        :'withdraw_by_email' => :'String',
        :'withdraw_by_mail' => :'String',
        :'withdraw_by_phone' => :'String',
        :'withdraw_city' => :'String',
        :'withdraw_consequences' => :'String',
        :'withdraw_email' => :'String',
        :'withdraw_other' => :'String',
        :'withdraw_phone' => :'String',
        :'withdraw_postal_code' => :'String',
        :'withdraw_state' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accountEsignId')
        self.account_esign_id = attributes[:'accountEsignId']
      end

      if attributes.has_key?(:'allowCDWithdraw')
        self.allow_cd_withdraw = attributes[:'allowCDWithdraw']
      end

      if attributes.has_key?(:'allowCDWithdrawMetadata')
        self.allow_cd_withdraw_metadata = attributes[:'allowCDWithdrawMetadata']
      end

      if attributes.has_key?(:'changeEmail')
        self.change_email = attributes[:'changeEmail']
      end

      if attributes.has_key?(:'changeEmailOther')
        self.change_email_other = attributes[:'changeEmailOther']
      end

      if attributes.has_key?(:'companyName')
        self.company_name = attributes[:'companyName']
      end

      if attributes.has_key?(:'companyPhone')
        self.company_phone = attributes[:'companyPhone']
      end

      if attributes.has_key?(:'copyCostPerPage')
        self.copy_cost_per_page = attributes[:'copyCostPerPage']
      end

      if attributes.has_key?(:'copyFeeCollectionMethod')
        self.copy_fee_collection_method = attributes[:'copyFeeCollectionMethod']
      end

      if attributes.has_key?(:'copyRequestEmail')
        self.copy_request_email = attributes[:'copyRequestEmail']
      end

      if attributes.has_key?(:'custom')
        self.custom = attributes[:'custom']
      end

      if attributes.has_key?(:'enableEsign')
        self.enable_esign = attributes[:'enableEsign']
      end

      if attributes.has_key?(:'esignAgreement')
        self.esign_agreement = attributes[:'esignAgreement']
      end

      if attributes.has_key?(:'esignText')
        self.esign_text = attributes[:'esignText']
      end

      if attributes.has_key?(:'languageCode')
        self.language_code = attributes[:'languageCode']
      end

      if attributes.has_key?(:'mustAgreeToEsign')
        self.must_agree_to_esign = attributes[:'mustAgreeToEsign']
      end

      if attributes.has_key?(:'pdfId')
        self.pdf_id = attributes[:'pdfId']
      end

      if attributes.has_key?(:'useBrand')
        self.use_brand = attributes[:'useBrand']
      end

      if attributes.has_key?(:'useConsumerDisclosureWithinAccount')
        self.use_consumer_disclosure_within_account = attributes[:'useConsumerDisclosureWithinAccount']
      end

      if attributes.has_key?(:'useConsumerDisclosureWithinAccountMetadata')
        self.use_consumer_disclosure_within_account_metadata = attributes[:'useConsumerDisclosureWithinAccountMetadata']
      end

      if attributes.has_key?(:'withdrawAddressLine1')
        self.withdraw_address_line1 = attributes[:'withdrawAddressLine1']
      end

      if attributes.has_key?(:'withdrawAddressLine2')
        self.withdraw_address_line2 = attributes[:'withdrawAddressLine2']
      end

      if attributes.has_key?(:'withdrawByEmail')
        self.withdraw_by_email = attributes[:'withdrawByEmail']
      end

      if attributes.has_key?(:'withdrawByMail')
        self.withdraw_by_mail = attributes[:'withdrawByMail']
      end

      if attributes.has_key?(:'withdrawByPhone')
        self.withdraw_by_phone = attributes[:'withdrawByPhone']
      end

      if attributes.has_key?(:'withdrawCity')
        self.withdraw_city = attributes[:'withdrawCity']
      end

      if attributes.has_key?(:'withdrawConsequences')
        self.withdraw_consequences = attributes[:'withdrawConsequences']
      end

      if attributes.has_key?(:'withdrawEmail')
        self.withdraw_email = attributes[:'withdrawEmail']
      end

      if attributes.has_key?(:'withdrawOther')
        self.withdraw_other = attributes[:'withdrawOther']
      end

      if attributes.has_key?(:'withdrawPhone')
        self.withdraw_phone = attributes[:'withdrawPhone']
      end

      if attributes.has_key?(:'withdrawPostalCode')
        self.withdraw_postal_code = attributes[:'withdrawPostalCode']
      end

      if attributes.has_key?(:'withdrawState')
        self.withdraw_state = attributes[:'withdrawState']
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
          account_esign_id == o.account_esign_id &&
          allow_cd_withdraw == o.allow_cd_withdraw &&
          allow_cd_withdraw_metadata == o.allow_cd_withdraw_metadata &&
          change_email == o.change_email &&
          change_email_other == o.change_email_other &&
          company_name == o.company_name &&
          company_phone == o.company_phone &&
          copy_cost_per_page == o.copy_cost_per_page &&
          copy_fee_collection_method == o.copy_fee_collection_method &&
          copy_request_email == o.copy_request_email &&
          custom == o.custom &&
          enable_esign == o.enable_esign &&
          esign_agreement == o.esign_agreement &&
          esign_text == o.esign_text &&
          language_code == o.language_code &&
          must_agree_to_esign == o.must_agree_to_esign &&
          pdf_id == o.pdf_id &&
          use_brand == o.use_brand &&
          use_consumer_disclosure_within_account == o.use_consumer_disclosure_within_account &&
          use_consumer_disclosure_within_account_metadata == o.use_consumer_disclosure_within_account_metadata &&
          withdraw_address_line1 == o.withdraw_address_line1 &&
          withdraw_address_line2 == o.withdraw_address_line2 &&
          withdraw_by_email == o.withdraw_by_email &&
          withdraw_by_mail == o.withdraw_by_mail &&
          withdraw_by_phone == o.withdraw_by_phone &&
          withdraw_city == o.withdraw_city &&
          withdraw_consequences == o.withdraw_consequences &&
          withdraw_email == o.withdraw_email &&
          withdraw_other == o.withdraw_other &&
          withdraw_phone == o.withdraw_phone &&
          withdraw_postal_code == o.withdraw_postal_code &&
          withdraw_state == o.withdraw_state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_esign_id, allow_cd_withdraw, allow_cd_withdraw_metadata, change_email, change_email_other, company_name, company_phone, copy_cost_per_page, copy_fee_collection_method, copy_request_email, custom, enable_esign, esign_agreement, esign_text, language_code, must_agree_to_esign, pdf_id, use_brand, use_consumer_disclosure_within_account, use_consumer_disclosure_within_account_metadata, withdraw_address_line1, withdraw_address_line2, withdraw_by_email, withdraw_by_mail, withdraw_by_phone, withdraw_city, withdraw_consequences, withdraw_email, withdraw_other, withdraw_phone, withdraw_postal_code, withdraw_state].hash
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
