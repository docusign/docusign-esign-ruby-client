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
  # An array of email notifications that specifies the email the user receives when they are a sender. When the specific email notification is set to true, the user receives those types of email notifications from DocuSign. The user inherits the default account sender email notification settings when the user is created.
  class SignerEmailNotifications
    # When set to **true**, the user receives agent notification emails.
    attr_accessor :agent_notification

    # When set to **true**, the user receives notifications of carbon copy deliveries.
    attr_accessor :carbon_copy_notification

    # When set to **true**, the user receives notifications of certified deliveries.
    attr_accessor :certified_delivery_notification

    # 
    attr_accessor :comments_only_private_and_mention

    # 
    attr_accessor :comments_receive_all

    # When set to **true**, the user receives notification that document markup has been activated.
    attr_accessor :document_markup_activation

    # When set to **true**, the user receives notification that the envelope has been activated.
    attr_accessor :envelope_activation

    # When set to **true**, the user receives notification that the envelope has been completed.
    attr_accessor :envelope_complete

    # When set to **true**, the user receives notification that the envelope has been corrected.
    attr_accessor :envelope_corrected

    # When set to **true**, the user receives notification that the envelope has been declined.
    attr_accessor :envelope_declined

    # When set to **true**, the user receives notification that the envelope has been voided.
    attr_accessor :envelope_voided

    # Reserved:
    attr_accessor :fax_received

    # When set to **true**, the user receives notification if the offline signing failed.
    attr_accessor :offline_signing_failed

    # When set to **true**, the user receives notification of document purges.
    attr_accessor :purge_documents

    # When set to **true**, the user receives notification that the envelope has been reassigned.
    attr_accessor :reassigned_signer

    # 
    attr_accessor :when_signing_group_member

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'agent_notification' => :'agentNotification',
        :'carbon_copy_notification' => :'carbonCopyNotification',
        :'certified_delivery_notification' => :'certifiedDeliveryNotification',
        :'comments_only_private_and_mention' => :'commentsOnlyPrivateAndMention',
        :'comments_receive_all' => :'commentsReceiveAll',
        :'document_markup_activation' => :'documentMarkupActivation',
        :'envelope_activation' => :'envelopeActivation',
        :'envelope_complete' => :'envelopeComplete',
        :'envelope_corrected' => :'envelopeCorrected',
        :'envelope_declined' => :'envelopeDeclined',
        :'envelope_voided' => :'envelopeVoided',
        :'fax_received' => :'faxReceived',
        :'offline_signing_failed' => :'offlineSigningFailed',
        :'purge_documents' => :'purgeDocuments',
        :'reassigned_signer' => :'reassignedSigner',
        :'when_signing_group_member' => :'whenSigningGroupMember'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'agent_notification' => :'String',
        :'carbon_copy_notification' => :'String',
        :'certified_delivery_notification' => :'String',
        :'comments_only_private_and_mention' => :'String',
        :'comments_receive_all' => :'String',
        :'document_markup_activation' => :'String',
        :'envelope_activation' => :'String',
        :'envelope_complete' => :'String',
        :'envelope_corrected' => :'String',
        :'envelope_declined' => :'String',
        :'envelope_voided' => :'String',
        :'fax_received' => :'String',
        :'offline_signing_failed' => :'String',
        :'purge_documents' => :'String',
        :'reassigned_signer' => :'String',
        :'when_signing_group_member' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'agentNotification')
        self.agent_notification = attributes[:'agentNotification']
      end

      if attributes.has_key?(:'carbonCopyNotification')
        self.carbon_copy_notification = attributes[:'carbonCopyNotification']
      end

      if attributes.has_key?(:'certifiedDeliveryNotification')
        self.certified_delivery_notification = attributes[:'certifiedDeliveryNotification']
      end

      if attributes.has_key?(:'commentsOnlyPrivateAndMention')
        self.comments_only_private_and_mention = attributes[:'commentsOnlyPrivateAndMention']
      end

      if attributes.has_key?(:'commentsReceiveAll')
        self.comments_receive_all = attributes[:'commentsReceiveAll']
      end

      if attributes.has_key?(:'documentMarkupActivation')
        self.document_markup_activation = attributes[:'documentMarkupActivation']
      end

      if attributes.has_key?(:'envelopeActivation')
        self.envelope_activation = attributes[:'envelopeActivation']
      end

      if attributes.has_key?(:'envelopeComplete')
        self.envelope_complete = attributes[:'envelopeComplete']
      end

      if attributes.has_key?(:'envelopeCorrected')
        self.envelope_corrected = attributes[:'envelopeCorrected']
      end

      if attributes.has_key?(:'envelopeDeclined')
        self.envelope_declined = attributes[:'envelopeDeclined']
      end

      if attributes.has_key?(:'envelopeVoided')
        self.envelope_voided = attributes[:'envelopeVoided']
      end

      if attributes.has_key?(:'faxReceived')
        self.fax_received = attributes[:'faxReceived']
      end

      if attributes.has_key?(:'offlineSigningFailed')
        self.offline_signing_failed = attributes[:'offlineSigningFailed']
      end

      if attributes.has_key?(:'purgeDocuments')
        self.purge_documents = attributes[:'purgeDocuments']
      end

      if attributes.has_key?(:'reassignedSigner')
        self.reassigned_signer = attributes[:'reassignedSigner']
      end

      if attributes.has_key?(:'whenSigningGroupMember')
        self.when_signing_group_member = attributes[:'whenSigningGroupMember']
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
          agent_notification == o.agent_notification &&
          carbon_copy_notification == o.carbon_copy_notification &&
          certified_delivery_notification == o.certified_delivery_notification &&
          comments_only_private_and_mention == o.comments_only_private_and_mention &&
          comments_receive_all == o.comments_receive_all &&
          document_markup_activation == o.document_markup_activation &&
          envelope_activation == o.envelope_activation &&
          envelope_complete == o.envelope_complete &&
          envelope_corrected == o.envelope_corrected &&
          envelope_declined == o.envelope_declined &&
          envelope_voided == o.envelope_voided &&
          fax_received == o.fax_received &&
          offline_signing_failed == o.offline_signing_failed &&
          purge_documents == o.purge_documents &&
          reassigned_signer == o.reassigned_signer &&
          when_signing_group_member == o.when_signing_group_member
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [agent_notification, carbon_copy_notification, certified_delivery_notification, comments_only_private_and_mention, comments_receive_all, document_markup_activation, envelope_activation, envelope_complete, envelope_corrected, envelope_declined, envelope_voided, fax_received, offline_signing_failed, purge_documents, reassigned_signer, when_signing_group_member].hash
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
