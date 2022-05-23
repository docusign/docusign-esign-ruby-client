=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class BulkSendBatchStatus
    # 
    attr_accessor :action

    # 
    attr_accessor :action_status

    # 
    attr_accessor :batch_id

    # 
    attr_accessor :batch_name

    # 
    attr_accessor :batch_size

    # 
    attr_accessor :bulk_errors

    # 
    attr_accessor :envelope_id_or_template_id

    attr_accessor :envelopes_info

    # 
    attr_accessor :envelopes_uri

    # 
    attr_accessor :failed

    # 
    attr_accessor :mailing_list_id

    # 
    attr_accessor :mailing_list_name

    # 
    attr_accessor :owner_user_id

    # 
    attr_accessor :queued

    # 
    attr_accessor :resends_remaining

    # 
    attr_accessor :sender_user_id

    # 
    attr_accessor :sent

    # 
    attr_accessor :submitted_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'action' => :'action',
        :'action_status' => :'actionStatus',
        :'batch_id' => :'batchId',
        :'batch_name' => :'batchName',
        :'batch_size' => :'batchSize',
        :'bulk_errors' => :'bulkErrors',
        :'envelope_id_or_template_id' => :'envelopeIdOrTemplateId',
        :'envelopes_info' => :'envelopesInfo',
        :'envelopes_uri' => :'envelopesUri',
        :'failed' => :'failed',
        :'mailing_list_id' => :'mailingListId',
        :'mailing_list_name' => :'mailingListName',
        :'owner_user_id' => :'ownerUserId',
        :'queued' => :'queued',
        :'resends_remaining' => :'resendsRemaining',
        :'sender_user_id' => :'senderUserId',
        :'sent' => :'sent',
        :'submitted_date' => :'submittedDate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'action' => :'String',
        :'action_status' => :'String',
        :'batch_id' => :'String',
        :'batch_name' => :'String',
        :'batch_size' => :'String',
        :'bulk_errors' => :'Array<BulkSendErrorStatus>',
        :'envelope_id_or_template_id' => :'String',
        :'envelopes_info' => :'BulkSendEnvelopesInfo',
        :'envelopes_uri' => :'String',
        :'failed' => :'String',
        :'mailing_list_id' => :'String',
        :'mailing_list_name' => :'String',
        :'owner_user_id' => :'String',
        :'queued' => :'String',
        :'resends_remaining' => :'String',
        :'sender_user_id' => :'String',
        :'sent' => :'String',
        :'submitted_date' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.has_key?(:'actionStatus')
        self.action_status = attributes[:'actionStatus']
      end

      if attributes.has_key?(:'batchId')
        self.batch_id = attributes[:'batchId']
      end

      if attributes.has_key?(:'batchName')
        self.batch_name = attributes[:'batchName']
      end

      if attributes.has_key?(:'batchSize')
        self.batch_size = attributes[:'batchSize']
      end

      if attributes.has_key?(:'bulkErrors')
        if (value = attributes[:'bulkErrors']).is_a?(Array)
          self.bulk_errors = value
        end
      end

      if attributes.has_key?(:'envelopeIdOrTemplateId')
        self.envelope_id_or_template_id = attributes[:'envelopeIdOrTemplateId']
      end

      if attributes.has_key?(:'envelopesInfo')
        self.envelopes_info = attributes[:'envelopesInfo']
      end

      if attributes.has_key?(:'envelopesUri')
        self.envelopes_uri = attributes[:'envelopesUri']
      end

      if attributes.has_key?(:'failed')
        self.failed = attributes[:'failed']
      end

      if attributes.has_key?(:'mailingListId')
        self.mailing_list_id = attributes[:'mailingListId']
      end

      if attributes.has_key?(:'mailingListName')
        self.mailing_list_name = attributes[:'mailingListName']
      end

      if attributes.has_key?(:'ownerUserId')
        self.owner_user_id = attributes[:'ownerUserId']
      end

      if attributes.has_key?(:'queued')
        self.queued = attributes[:'queued']
      end

      if attributes.has_key?(:'resendsRemaining')
        self.resends_remaining = attributes[:'resendsRemaining']
      end

      if attributes.has_key?(:'senderUserId')
        self.sender_user_id = attributes[:'senderUserId']
      end

      if attributes.has_key?(:'sent')
        self.sent = attributes[:'sent']
      end

      if attributes.has_key?(:'submittedDate')
        self.submitted_date = attributes[:'submittedDate']
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
          action == o.action &&
          action_status == o.action_status &&
          batch_id == o.batch_id &&
          batch_name == o.batch_name &&
          batch_size == o.batch_size &&
          bulk_errors == o.bulk_errors &&
          envelope_id_or_template_id == o.envelope_id_or_template_id &&
          envelopes_info == o.envelopes_info &&
          envelopes_uri == o.envelopes_uri &&
          failed == o.failed &&
          mailing_list_id == o.mailing_list_id &&
          mailing_list_name == o.mailing_list_name &&
          owner_user_id == o.owner_user_id &&
          queued == o.queued &&
          resends_remaining == o.resends_remaining &&
          sender_user_id == o.sender_user_id &&
          sent == o.sent &&
          submitted_date == o.submitted_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [action, action_status, batch_id, batch_name, batch_size, bulk_errors, envelope_id_or_template_id, envelopes_info, envelopes_uri, failed, mailing_list_id, mailing_list_name, owner_user_id, queued, resends_remaining, sender_user_id, sent, submitted_date].hash
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
