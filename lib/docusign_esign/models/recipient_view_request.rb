=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # The request body for the [EnvelopeViews: createRecipient](/docs/esign-rest-api/reference/envelopes/envelopeviews/createrecipient/) and [EnvelopeViews: createSharedRecipient](/docs/esign-rest-api/reference/envelopes/envelopeviews/createsharedrecipient/) methods.
  class RecipientViewRequest
    # A unique identifier of the authentication event executed by the client application.
    attr_accessor :assertion_id

    # A sender generated value that indicates the date/time that the signer was authenticated.
    attr_accessor :authentication_instant

    # A sender created value that indicates the convention used to authenticate the signer. This information is included in the Certificate of Completion.
    attr_accessor :authentication_method

    # 
    attr_accessor :client_ur_ls

    # A sender created value that shows the recipient is embedded (captive).   Maximum length: 100 characters.
    attr_accessor :client_user_id

    # 
    attr_accessor :display_format

    # Specifies the email of the recipient. You can use either email and userName or userId to identify the recipient.
    attr_accessor :email

    # 
    attr_accessor :frame_ancestors

    # 
    attr_accessor :message_origins

    # Only used if pingUrl is specified. This is the interval, in seconds, between pings on the pingUrl.  The default is 300 seconds. Valid values are 60-1200 seconds.
    attr_accessor :ping_frequency

    # A client Url to be pinged by the DocuSign Signing experience to indicate to the client that Signing is active. An HTTP Get is executed against the client. The response from the client is ignored. The intent is for the client to reset it's session timer when the request is received.
    attr_accessor :ping_url

    # Unique for the recipient. It is used by the tab element to indicate which recipient is to sign the Document.
    attr_accessor :recipient_id

    # The url the recipient is redirected to after the signing session has ended. DocuSign redirects to the url and includes an event parameter that can be used by your application. Possible event parameter values:   * cancel (recipient canceled the signing operation) * decline (recipient declined to sign) * exception (an exception occurred) * fax_pending (recipient has a fax pending) * session_timeout (session timed out) * signing_complete (signer completed the signing ceremony) * ttl_expired (the TTL, time to live, timer expired) * viewing_complete (recipient completed viewing the envelope)  ###### Note: Include https:// in the URL or the redirect might not succeed on some browsers. 
    attr_accessor :return_url

    # The domain in which the user authenticated.
    attr_accessor :security_domain

    # Specifies the user ID of the recipient. You can use with user ID or email and user name to identify the recipient. If user ID is used and a client user ID is provided, the value in the `userId` property must match a recipient ID (which can be retrieved with a GET recipients call) for the envelope. If a user ID is used and a clientUser ID is not provided, the user ID match the user ID of the authenticating user.
    attr_accessor :user_id

    # Specifies the username of the recipient. You can use either email and userName or userId to identify the recipient.
    attr_accessor :user_name

    # 
    attr_accessor :x_frame_options

    # 
    attr_accessor :x_frame_options_allow_from_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'assertion_id' => :'assertionId',
        :'authentication_instant' => :'authenticationInstant',
        :'authentication_method' => :'authenticationMethod',
        :'client_ur_ls' => :'clientURLs',
        :'client_user_id' => :'clientUserId',
        :'display_format' => :'displayFormat',
        :'email' => :'email',
        :'frame_ancestors' => :'frameAncestors',
        :'message_origins' => :'messageOrigins',
        :'ping_frequency' => :'pingFrequency',
        :'ping_url' => :'pingUrl',
        :'recipient_id' => :'recipientId',
        :'return_url' => :'returnUrl',
        :'security_domain' => :'securityDomain',
        :'user_id' => :'userId',
        :'user_name' => :'userName',
        :'x_frame_options' => :'xFrameOptions',
        :'x_frame_options_allow_from_url' => :'xFrameOptionsAllowFromUrl'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'assertion_id' => :'String',
        :'authentication_instant' => :'String',
        :'authentication_method' => :'String',
        :'client_ur_ls' => :'RecipientTokenClientURLs',
        :'client_user_id' => :'String',
        :'display_format' => :'String',
        :'email' => :'String',
        :'frame_ancestors' => :'Array<String>',
        :'message_origins' => :'Array<String>',
        :'ping_frequency' => :'String',
        :'ping_url' => :'String',
        :'recipient_id' => :'String',
        :'return_url' => :'String',
        :'security_domain' => :'String',
        :'user_id' => :'String',
        :'user_name' => :'String',
        :'x_frame_options' => :'String',
        :'x_frame_options_allow_from_url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'assertionId')
        self.assertion_id = attributes[:'assertionId']
      end

      if attributes.has_key?(:'authenticationInstant')
        self.authentication_instant = attributes[:'authenticationInstant']
      end

      if attributes.has_key?(:'authenticationMethod')
        self.authentication_method = attributes[:'authenticationMethod']
      end

      if attributes.has_key?(:'clientURLs')
        self.client_ur_ls = attributes[:'clientURLs']
      end

      if attributes.has_key?(:'clientUserId')
        self.client_user_id = attributes[:'clientUserId']
      end

      if attributes.has_key?(:'displayFormat')
        self.display_format = attributes[:'displayFormat']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'frameAncestors')
        if (value = attributes[:'frameAncestors']).is_a?(Array)
          self.frame_ancestors = value
        end
      end

      if attributes.has_key?(:'messageOrigins')
        if (value = attributes[:'messageOrigins']).is_a?(Array)
          self.message_origins = value
        end
      end

      if attributes.has_key?(:'pingFrequency')
        self.ping_frequency = attributes[:'pingFrequency']
      end

      if attributes.has_key?(:'pingUrl')
        self.ping_url = attributes[:'pingUrl']
      end

      if attributes.has_key?(:'recipientId')
        self.recipient_id = attributes[:'recipientId']
      end

      if attributes.has_key?(:'returnUrl')
        self.return_url = attributes[:'returnUrl']
      end

      if attributes.has_key?(:'securityDomain')
        self.security_domain = attributes[:'securityDomain']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'userName')
        self.user_name = attributes[:'userName']
      end

      if attributes.has_key?(:'xFrameOptions')
        self.x_frame_options = attributes[:'xFrameOptions']
      end

      if attributes.has_key?(:'xFrameOptionsAllowFromUrl')
        self.x_frame_options_allow_from_url = attributes[:'xFrameOptionsAllowFromUrl']
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
          assertion_id == o.assertion_id &&
          authentication_instant == o.authentication_instant &&
          authentication_method == o.authentication_method &&
          client_ur_ls == o.client_ur_ls &&
          client_user_id == o.client_user_id &&
          display_format == o.display_format &&
          email == o.email &&
          frame_ancestors == o.frame_ancestors &&
          message_origins == o.message_origins &&
          ping_frequency == o.ping_frequency &&
          ping_url == o.ping_url &&
          recipient_id == o.recipient_id &&
          return_url == o.return_url &&
          security_domain == o.security_domain &&
          user_id == o.user_id &&
          user_name == o.user_name &&
          x_frame_options == o.x_frame_options &&
          x_frame_options_allow_from_url == o.x_frame_options_allow_from_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [assertion_id, authentication_instant, authentication_method, client_ur_ls, client_user_id, display_format, email, frame_ancestors, message_origins, ping_frequency, ping_url, recipient_id, return_url, security_domain, user_id, user_name, x_frame_options, x_frame_options_allow_from_url].hash
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
