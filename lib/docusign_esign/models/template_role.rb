=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # Information about a specific role.
  class TemplateRole
    # If a value is provided, the recipient must enter the value as the access code to view and sign the envelope.   Maximum Length: 50 characters and it must conform to the account's access code format setting.  If blank, but the signer `accessCode` property is set in the envelope, then that value is used.  If blank and the signer `accessCode` property is not set, then the access code is not required.
    attr_accessor :access_code

    # 
    attr_accessor :additional_notifications

    # Specifies whether the recipient is embedded or remote.   If the `clientUserId` property is not null then the recipient is embedded. Note that if the `ClientUserId` property is set and either `SignerMustHaveAccount` or `SignerMustLoginToSign` property of the account settings is set to  **true**, an error is generated on sending.ng.   Maximum length: 100 characters. 
    attr_accessor :client_user_id

    # When set to **true**, this recipient is the default recipient and any tabs generated by the transformPdfFields option are mapped to this recipient.
    attr_accessor :default_recipient

    # Reserved: For DocuSign use only.
    attr_accessor :delivery_method

    # Specifies the email associated with a role name.
    attr_accessor :email

    # An optional complex type that sets a specific email subject and body for this recipient's notification email.   **Note:** You can set the `emailNotification` property separately for each recipient. If you set the value only for certain recipients, the other recipients will inherit the this value from the top-level `emailSubject` and `emailBlurb`. 
    attr_accessor :email_notification

    # Specifies a sender provided valid URL string for redirecting an embedded recipient. When using this option, the embedded recipient still receives an email from DocuSign, just as a remote recipient would. When the document link in the email is clicked the recipient is redirected, through DocuSign, to the supplied URL to complete their actions. When routing to the URL, the sender's system (the server responding to the URL) must request a recipient token to launch a signing session.   If set to `SIGN_AT_DOCUSIGN`, the recipient is directed to an embedded signing or viewing process directly at DocuSign. The signing or viewing action is initiated by the DocuSign system and the transaction activity and Certificate of Completion records will reflect this. In all other ways the process is identical to an embedded signing or viewing operation that is launched by any partner.  It is important to remember that in a typical embedded workflow the authentication of an embedded recipient is the responsibility of the sending application, DocuSign expects that senders will follow their own process for establishing the recipient's identity. In this workflow the recipient goes through the sending application before the embedded signing or viewing process in initiated. However, when the sending application sets `EmbeddedRecipientStartURL=SIGN_AT_DOCUSIGN`, the recipient goes directly to the embedded signing or viewing process bypassing the sending application and any authentication steps the sending application would use. In this case, DocuSign recommends that you use one of the normal DocuSign authentication features (Access Code, Phone Authentication, SMS Authentication, etc.) to verify the identity of the recipient.  If the `clientUserId` property is NOT set, and the `embeddedRecipientStartURL` is set, DocuSign will ignore the redirect URL and launch the standard signing process for the email recipient. Information can be appended to the embedded recipient start URL using merge fields. The available merge fields items are: envelopeId, recipientId, recipientName, recipientEmail, and customFields. The `customFields` property must be set fort the recipient or envelope. The merge fields are enclosed in double brackets.   *Example*:   `http://senderHost/[[mergeField1]]/ beginSigningSession? [[mergeField2]]&[[mergeField3]]` 
    attr_accessor :embedded_recipient_start_url

    # Specifies the full legal name of the signer in person signer template roles.  Maximum Length: 100 characters.
    attr_accessor :in_person_signer_name

    # Specifies the recipient's name.
    attr_accessor :name

    # Describes the recipient phone number.
    attr_accessor :phone_number

    # 
    attr_accessor :recipient_signature_providers

    # Optional element. Specifies the role name associated with the recipient.<br/><br/>This is required when working with template recipients.
    attr_accessor :role_name

    # Specifies the routing order of the recipient in the envelope. 
    attr_accessor :routing_order

    # When set to **true** and the feature is enabled in the sender's account, the signing recipient is required to draw signatures and initials at each signature/initial tab ( instead of adopting a signature/initial style or only drawing a signature/initial once).
    attr_accessor :signing_group_id

    # A list of tabs, which are represented graphically as symbols on documents at the time of signing. Tabs show recipients where to sign, initial, or enter data. They may also display data to the recipients.
    attr_accessor :tabs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'access_code' => :'accessCode',
        :'additional_notifications' => :'additionalNotifications',
        :'client_user_id' => :'clientUserId',
        :'default_recipient' => :'defaultRecipient',
        :'delivery_method' => :'deliveryMethod',
        :'email' => :'email',
        :'email_notification' => :'emailNotification',
        :'embedded_recipient_start_url' => :'embeddedRecipientStartURL',
        :'in_person_signer_name' => :'inPersonSignerName',
        :'name' => :'name',
        :'phone_number' => :'phoneNumber',
        :'recipient_signature_providers' => :'recipientSignatureProviders',
        :'role_name' => :'roleName',
        :'routing_order' => :'routingOrder',
        :'signing_group_id' => :'signingGroupId',
        :'tabs' => :'tabs'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'access_code' => :'String',
        :'additional_notifications' => :'Array<RecipientAdditionalNotification>',
        :'client_user_id' => :'String',
        :'default_recipient' => :'String',
        :'delivery_method' => :'String',
        :'email' => :'String',
        :'email_notification' => :'RecipientEmailNotification',
        :'embedded_recipient_start_url' => :'String',
        :'in_person_signer_name' => :'String',
        :'name' => :'String',
        :'phone_number' => :'RecipientPhoneNumber',
        :'recipient_signature_providers' => :'Array<RecipientSignatureProvider>',
        :'role_name' => :'String',
        :'routing_order' => :'String',
        :'signing_group_id' => :'String',
        :'tabs' => :'Tabs'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accessCode')
        self.access_code = attributes[:'accessCode']
      end

      if attributes.has_key?(:'additionalNotifications')
        if (value = attributes[:'additionalNotifications']).is_a?(Array)
          self.additional_notifications = value
        end
      end

      if attributes.has_key?(:'clientUserId')
        self.client_user_id = attributes[:'clientUserId']
      end

      if attributes.has_key?(:'defaultRecipient')
        self.default_recipient = attributes[:'defaultRecipient']
      end

      if attributes.has_key?(:'deliveryMethod')
        self.delivery_method = attributes[:'deliveryMethod']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'emailNotification')
        self.email_notification = attributes[:'emailNotification']
      end

      if attributes.has_key?(:'embeddedRecipientStartURL')
        self.embedded_recipient_start_url = attributes[:'embeddedRecipientStartURL']
      end

      if attributes.has_key?(:'inPersonSignerName')
        self.in_person_signer_name = attributes[:'inPersonSignerName']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'recipientSignatureProviders')
        if (value = attributes[:'recipientSignatureProviders']).is_a?(Array)
          self.recipient_signature_providers = value
        end
      end

      if attributes.has_key?(:'roleName')
        self.role_name = attributes[:'roleName']
      end

      if attributes.has_key?(:'routingOrder')
        self.routing_order = attributes[:'routingOrder']
      end

      if attributes.has_key?(:'signingGroupId')
        self.signing_group_id = attributes[:'signingGroupId']
      end

      if attributes.has_key?(:'tabs')
        self.tabs = attributes[:'tabs']
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
          access_code == o.access_code &&
          additional_notifications == o.additional_notifications &&
          client_user_id == o.client_user_id &&
          default_recipient == o.default_recipient &&
          delivery_method == o.delivery_method &&
          email == o.email &&
          email_notification == o.email_notification &&
          embedded_recipient_start_url == o.embedded_recipient_start_url &&
          in_person_signer_name == o.in_person_signer_name &&
          name == o.name &&
          phone_number == o.phone_number &&
          recipient_signature_providers == o.recipient_signature_providers &&
          role_name == o.role_name &&
          routing_order == o.routing_order &&
          signing_group_id == o.signing_group_id &&
          tabs == o.tabs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [access_code, additional_notifications, client_user_id, default_recipient, delivery_method, email, email_notification, embedded_recipient_start_url, in_person_signer_name, name, phone_number, recipient_signature_providers, role_name, routing_order, signing_group_id, tabs].hash
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
