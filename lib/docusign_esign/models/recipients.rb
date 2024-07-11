=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # Specifies the envelope recipients.
  class Recipients
    # A complex type defining the management and access rights of a recipient assigned assigned as an agent on the document.
    attr_accessor :agents

    # A complex type containing information about recipients who should receive a copy of the envelope, but does not need to sign it.
    attr_accessor :carbon_copies

    # A complex type containing information on a recipient the must receive the completed documents for the envelope to be completed, but the recipient does not need to sign, initial, date, or add information to any of the documents.
    attr_accessor :certified_deliveries

    # 
    attr_accessor :current_routing_order

    # A complex type defining the management and access rights of a recipient assigned assigned as an editor on the document.
    attr_accessor :editors

    # Array or errors.
    attr_accessor :error_details

    # Specifies a signer that is in the same physical location as a DocuSign user who will act as a Signing Host for the transaction. The recipient added is the Signing Host and new separate Signer Name field appears after Sign in person is selected.
    attr_accessor :in_person_signers

    # Identifies a recipient that can, but is not required to, add name and email information for recipients at the same or subsequent level in the routing order (until subsequent Agents, Editors or Intermediaries recipient types are added).
    attr_accessor :intermediaries

    # 
    attr_accessor :notaries

    # 
    attr_accessor :participants

    # 
    attr_accessor :recipient_count

    # 
    attr_accessor :seals

    # A complex type containing information about the Signer recipient.
    attr_accessor :signers

    # 
    attr_accessor :witnesses

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'agents' => :'agents',
        :'carbon_copies' => :'carbonCopies',
        :'certified_deliveries' => :'certifiedDeliveries',
        :'current_routing_order' => :'currentRoutingOrder',
        :'editors' => :'editors',
        :'error_details' => :'errorDetails',
        :'in_person_signers' => :'inPersonSigners',
        :'intermediaries' => :'intermediaries',
        :'notaries' => :'notaries',
        :'participants' => :'participants',
        :'recipient_count' => :'recipientCount',
        :'seals' => :'seals',
        :'signers' => :'signers',
        :'witnesses' => :'witnesses'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'agents' => :'Array<Agent>',
        :'carbon_copies' => :'Array<CarbonCopy>',
        :'certified_deliveries' => :'Array<CertifiedDelivery>',
        :'current_routing_order' => :'String',
        :'editors' => :'Array<Editor>',
        :'error_details' => :'ErrorDetails',
        :'in_person_signers' => :'Array<InPersonSigner>',
        :'intermediaries' => :'Array<Intermediary>',
        :'notaries' => :'Array<NotaryRecipient>',
        :'participants' => :'Array<Participant>',
        :'recipient_count' => :'String',
        :'seals' => :'Array<SealSign>',
        :'signers' => :'Array<Signer>',
        :'witnesses' => :'Array<Witness>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'agents')
        if (value = attributes[:'agents']).is_a?(Array)
          self.agents = value
        end
      end

      if attributes.has_key?(:'carbonCopies')
        if (value = attributes[:'carbonCopies']).is_a?(Array)
          self.carbon_copies = value
        end
      end

      if attributes.has_key?(:'certifiedDeliveries')
        if (value = attributes[:'certifiedDeliveries']).is_a?(Array)
          self.certified_deliveries = value
        end
      end

      if attributes.has_key?(:'currentRoutingOrder')
        self.current_routing_order = attributes[:'currentRoutingOrder']
      end

      if attributes.has_key?(:'editors')
        if (value = attributes[:'editors']).is_a?(Array)
          self.editors = value
        end
      end

      if attributes.has_key?(:'errorDetails')
        self.error_details = attributes[:'errorDetails']
      end

      if attributes.has_key?(:'inPersonSigners')
        if (value = attributes[:'inPersonSigners']).is_a?(Array)
          self.in_person_signers = value
        end
      end

      if attributes.has_key?(:'intermediaries')
        if (value = attributes[:'intermediaries']).is_a?(Array)
          self.intermediaries = value
        end
      end

      if attributes.has_key?(:'notaries')
        if (value = attributes[:'notaries']).is_a?(Array)
          self.notaries = value
        end
      end

      if attributes.has_key?(:'participants')
        if (value = attributes[:'participants']).is_a?(Array)
          self.participants = value
        end
      end

      if attributes.has_key?(:'recipientCount')
        self.recipient_count = attributes[:'recipientCount']
      end

      if attributes.has_key?(:'seals')
        if (value = attributes[:'seals']).is_a?(Array)
          self.seals = value
        end
      end

      if attributes.has_key?(:'signers')
        if (value = attributes[:'signers']).is_a?(Array)
          self.signers = value
        end
      end

      if attributes.has_key?(:'witnesses')
        if (value = attributes[:'witnesses']).is_a?(Array)
          self.witnesses = value
        end
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
          agents == o.agents &&
          carbon_copies == o.carbon_copies &&
          certified_deliveries == o.certified_deliveries &&
          current_routing_order == o.current_routing_order &&
          editors == o.editors &&
          error_details == o.error_details &&
          in_person_signers == o.in_person_signers &&
          intermediaries == o.intermediaries &&
          notaries == o.notaries &&
          participants == o.participants &&
          recipient_count == o.recipient_count &&
          seals == o.seals &&
          signers == o.signers &&
          witnesses == o.witnesses
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [agents, carbon_copies, certified_deliveries, current_routing_order, editors, error_details, in_person_signers, intermediaries, notaries, participants, recipient_count, seals, signers, witnesses].hash
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
