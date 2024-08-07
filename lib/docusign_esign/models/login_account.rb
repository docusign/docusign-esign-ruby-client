=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class LoginAccount
    # The account ID associated with the envelope.
    attr_accessor :account_id

    # The GUID associated with the account ID.
    attr_accessor :account_id_guid

    # The URL that should be used for successive calls to this account. It includes the protocal (https), the DocuSign server where the account is located, and the account number. Use this Url to make API calls against this account. Many of the API calls provide Uri's that are relative to this baseUrl.
    attr_accessor :base_url

    # The email address for the user.
    attr_accessor :email

    # This value is true if this is the default account for the user, otherwise false is returned.
    attr_accessor :is_default

    # A list of settings on the acccount that indicate what features are available.
    attr_accessor :login_account_settings

    # A list of user-level settings that indicate what user-specific features are available.
    attr_accessor :login_user_settings

    # The name associated with the account.
    attr_accessor :name

    # An optional descirption of the site that hosts the account.
    attr_accessor :site_description

    # 
    attr_accessor :user_id

    # The name of this user as defined by the account.
    attr_accessor :user_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'accountId',
        :'account_id_guid' => :'accountIdGuid',
        :'base_url' => :'baseUrl',
        :'email' => :'email',
        :'is_default' => :'isDefault',
        :'login_account_settings' => :'loginAccountSettings',
        :'login_user_settings' => :'loginUserSettings',
        :'name' => :'name',
        :'site_description' => :'siteDescription',
        :'user_id' => :'userId',
        :'user_name' => :'userName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'String',
        :'account_id_guid' => :'String',
        :'base_url' => :'String',
        :'email' => :'String',
        :'is_default' => :'String',
        :'login_account_settings' => :'Array<NameValue>',
        :'login_user_settings' => :'Array<NameValue>',
        :'name' => :'String',
        :'site_description' => :'String',
        :'user_id' => :'String',
        :'user_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'accountIdGuid')
        self.account_id_guid = attributes[:'accountIdGuid']
      end

      if attributes.has_key?(:'baseUrl')
        self.base_url = attributes[:'baseUrl']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'isDefault')
        self.is_default = attributes[:'isDefault']
      end

      if attributes.has_key?(:'loginAccountSettings')
        if (value = attributes[:'loginAccountSettings']).is_a?(Array)
          self.login_account_settings = value
        end
      end

      if attributes.has_key?(:'loginUserSettings')
        if (value = attributes[:'loginUserSettings']).is_a?(Array)
          self.login_user_settings = value
        end
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'siteDescription')
        self.site_description = attributes[:'siteDescription']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'userName')
        self.user_name = attributes[:'userName']
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
          account_id == o.account_id &&
          account_id_guid == o.account_id_guid &&
          base_url == o.base_url &&
          email == o.email &&
          is_default == o.is_default &&
          login_account_settings == o.login_account_settings &&
          login_user_settings == o.login_user_settings &&
          name == o.name &&
          site_description == o.site_description &&
          user_id == o.user_id &&
          user_name == o.user_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_id, account_id_guid, base_url, email, is_default, login_account_settings, login_user_settings, name, site_description, user_id, user_name].hash
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
