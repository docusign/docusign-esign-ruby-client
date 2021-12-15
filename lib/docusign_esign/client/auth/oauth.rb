require 'date'

module DocuSign_eSign
  class OAuth
    #  create and send envelopes, and obtain links for starting signing sessions.
    SCOPE_SIGNATURE = "signature"
    #  obtain a refresh token with an extended lifetime.
    SCOPE_EXTENDED = "extended"
    #  obtain access to the user’s account when the user is not present.
    SCOPE_IMPERSONATION = "impersonation"

    #  OAuth Base path constants
    #  Demo server base path
    DEMO_OAUTH_BASE_PATH = "account-d.docusign.com"
    #  Production server base path
    PRODUCTION_OAUTH_BASE_PATH = "account.docusign.com"
    #  Stage server base path
    STAGE_OAUTH_BASE_PATH = "account-s.docusign.com"
    #   JWT Grant Type
    GRANT_TYPE_JWT = "urn:ietf:params:oauth:grant-type:jwt-bearer"

    # Contains account Information.
    class Account
      # The account ID.
      attr_accessor :account_id

      # The name of the current account.
      attr_accessor :account_name

      # either account is default or no.
      attr_accessor :is_default

      # Reserved: TBD
      attr_accessor :base_uri

      # Reserved: TBD
      attr_accessor :organization

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
            :'account_id' => :'account_id',
            :'account_name' => :'account_name',
            :'is_default' => :'is_default',
            :'base_uri' => :'base_uri',
            :'organization' => :'organization',
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
            :'account_id' => :'String',
            :'account_name' => :'String',
            :'is_default' => :'String',
            :'base_uri' => :'String',
            :'organization' => :'Organization'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

        if attributes.has_key?(:'account_id')
          self.account_id = attributes[:'account_id']
        end

        if attributes.has_key?(:'account_name')
          self.account_name = attributes[:'account_name']
        end

        if attributes.has_key?(:'is_default')
          self.is_default = attributes[:'is_default']
        end

        if attributes.has_key?(:'base_uri')
          self.base_uri = attributes[:'base_uri']
        end

        if attributes.has_key?(:'organization')
          self.organization = attributes['organization']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properies with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        return invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        return true
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            account_id == o.account_id &&
            account_name == o.account_name &&
            is_default == o.is_default &&
            base_uri == o.base_uri &&
            organization == o.organization
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [account_id, account_name, is_default, base_uri, organization].hash
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        self.class.swagger_types.each_pair do |key, type|
          if type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the the attribute
            # is documented as an array but the input is not
            if attributes[self.class.attribute_map[key]].is_a?(Array)
              self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
          #there is bug with ruby while searching for constraint which is under 2 modules
          temp_model = DocuSign_eSign.const_get('OAuth').const_get(type).new
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
          value.compact.map{ |v| _to_hash(v) }
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

    class Link
      # Link rel
      attr_accessor :rel

      # Link href
      attr_accessor :href

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
            :'rel' => :'rel',
            :'href' => :'href'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
            :'rel' => :'String',
            :'href' => :'String'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

        if attributes.has_key?(:'rel')
          self.rel = attributes[:'rel']
        end

        if attributes.has_key?(:'href')
          self.href = attributes[:'href']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properies with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        return invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        return true
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            rel == o.rel &&
            href == o.href
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [rel, href].hash
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        self.class.swagger_types.each_pair do |key, type|
          if type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the the attribute
            # is documented as an array but the input is not
            if attributes[self.class.attribute_map[key]].is_a?(Array)
              self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
          value.compact.map{ |v| _to_hash(v) }
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

    class OAuthToken
      # The account ID.
      attr_accessor :access_token

      #
      attr_accessor :data

      #
      attr_accessor :expires_in

      # Reserved: TBD
      attr_accessor :refresh_token

      # Reserved: TBD
      attr_accessor :scope

      # Reserved: TBD
      attr_accessor :token_type

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
            :'access_token' => :'access_token',
            :'data' => :'data',
            :'expires_in' => :'expires_in',
            :'refresh_token' => :'refresh_token',
            :'scope' => :'scope',
            :'token_type' => :'token_type'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
            :'access_token' => :'String',
            :'expires_in' => :'String',
            :'refresh_token' => :'String',
            :'scope' => :'String',
            :'data' => :'Array<NameValue>',
            :'token_type' => :'String'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

        if attributes.has_key?(:'accessToken')
          self.access_token = attributes[:'accessToken']
        end

        if attributes.has_key?(:'scope')
          self.scope = attributes[:'scope']
        end

        if attributes.has_key?(:'refreshToken')
          self.refresh_token = attributes[:'refreshToken']
        end

        if attributes.has_key?(:'expiresIn')
          self.expires_in = attributes[:'expiresIn']
        end

        if attributes.has_key?(:'tokenType')
          self.token_type = attributes[:'tokenType']
        end

        if attributes.has_key?(:'data')
          if (value = attributes[:'data']).is_a?(Array)
            self.data = value
          end
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properies with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        return invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        return true
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            access_token == o.access_token &&
            data == o.data &&
            expires_in == o.expires_in &&
            refresh_token == o.refresh_token &&
            token_type == o.token_type &&
            scope == o.scope
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [expires_in, data, access_token, refresh_token, scope, token_type].hash
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        self.class.swagger_types.each_pair do |key, type|
          if type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the the attribute
            # is documented as an array but the input is not
            if attributes[self.class.attribute_map[key]].is_a?(Array)
              self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
          value.compact.map{ |v| _to_hash(v) }
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

    class Organization
      # The account ID.
      attr_accessor :organization_id

      # The name of the current account.
      attr_accessor :links

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
            :'organization_id' => :'organization_id',
            :'links' => :'links'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
            :'organization_id' => :'String',
            :'links' => :'Array<OAuth::Link>'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

        if attributes.has_key?(:'organizationId')
          self.organization_id = attributes[:'organizationId']
        end

        if attributes.has_key?(:'links')
          if (value = attributes[:'links']).is_a?(Array)
            self.links = value
          end
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properies with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        return invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        return true
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            links == o.links &&
            organization_id == o.organization_id
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [links, organization_id].hash
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        self.class.swagger_types.each_pair do |key, type|
          if type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the the attribute
            # is documented as an array but the input is not
            if attributes[self.class.attribute_map[key]].is_a?(Array)
              self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
          value.compact.map{ |v| _to_hash(v) }
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

    class UserInfo
      #
      attr_accessor :sub

      #
      attr_accessor :email

      attr_accessor :error_details

      #
      attr_accessor :accounts

      #
      attr_accessor :name

      #
      attr_accessor :given_name

      #
      attr_accessor :family_name

      #
      attr_accessor :created


      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
            :'sub' => :'sub',
            :'email' => :'email',
            :'error_details' => :'error_details',
            :'accounts' => :'accounts',
            :'name' => :'name',
            :'given_name' => :'given_name',
            :'family_name' => :'family_name',
            :'created' => :'created'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
            :'sub' => :'String',
            :'email' => :'String',
            :'error_details' => :'ErrorDetails',
            :'accounts' => :'Array<OAuth::Account>',
            :'name' => :'String',
            :'given_name' => :'String',
            :'family_name' => :'String',
            :'created' => :'String'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

        if attributes.has_key?(:'sub')
          self.sub = attributes[:'sub']
        end

        if attributes.has_key?(:'email')
          self.email = attributes[:'email']
        end

        if attributes.has_key?(:'errorDetails')
          self.error_details = attributes[:'errorDetails']
        end

        if attributes.has_key?(:'accounts')
          if (value = attributes[:'accounts']).is_a?(Array)
            self.accounts = value
          end
        end

        if attributes.has_key?(:'name')
          self.name = attributes[:'name']
        end

        if attributes.has_key?(:'givenName')
          self.given_name = attributes[:'givenName']
        end

        if attributes.has_key?(:'familyName')
          self.family_name = attributes[:'familyName']
        end

        if attributes.has_key?(:'created')
          self.created = attributes[:'created']
        end

      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properies with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        return invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        return true
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            sub == o.sub &&
            email == o.email &&
            error_details == o.error_details &&
            accounts == o.accounts &&
            name == o.name &&
            family_name == o.family_name &&
            given_name == o.given_name &&
            created == o.created
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [sub, email, error_details, accounts, name, family_name, given_name, created].hash
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        self.class.swagger_types.each_pair do |key, type|
          if type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the the attribute
            # is documented as an array but the input is not
            if attributes[self.class.attribute_map[key]].is_a?(Array)
              self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
          value.compact.map{ |v| _to_hash(v) }
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
end