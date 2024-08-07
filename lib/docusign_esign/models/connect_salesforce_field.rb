=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # This object is used to match a DocuSign field to a Salesforce field so that Docusign can send information to your Salesforce account.
  class ConnectSalesforceField
    # 
    attr_accessor :ds_attribute

    # 
    attr_accessor :ds_link

    # 
    attr_accessor :ds_node

    # 
    attr_accessor :id

    # 
    attr_accessor :sf_field

    # 
    attr_accessor :sf_field_name

    # 
    attr_accessor :sf_folder

    # 
    attr_accessor :sf_locked_value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ds_attribute' => :'dsAttribute',
        :'ds_link' => :'dsLink',
        :'ds_node' => :'dsNode',
        :'id' => :'id',
        :'sf_field' => :'sfField',
        :'sf_field_name' => :'sfFieldName',
        :'sf_folder' => :'sfFolder',
        :'sf_locked_value' => :'sfLockedValue'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'ds_attribute' => :'String',
        :'ds_link' => :'String',
        :'ds_node' => :'String',
        :'id' => :'String',
        :'sf_field' => :'String',
        :'sf_field_name' => :'String',
        :'sf_folder' => :'String',
        :'sf_locked_value' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'dsAttribute')
        self.ds_attribute = attributes[:'dsAttribute']
      end

      if attributes.has_key?(:'dsLink')
        self.ds_link = attributes[:'dsLink']
      end

      if attributes.has_key?(:'dsNode')
        self.ds_node = attributes[:'dsNode']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'sfField')
        self.sf_field = attributes[:'sfField']
      end

      if attributes.has_key?(:'sfFieldName')
        self.sf_field_name = attributes[:'sfFieldName']
      end

      if attributes.has_key?(:'sfFolder')
        self.sf_folder = attributes[:'sfFolder']
      end

      if attributes.has_key?(:'sfLockedValue')
        self.sf_locked_value = attributes[:'sfLockedValue']
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
          ds_attribute == o.ds_attribute &&
          ds_link == o.ds_link &&
          ds_node == o.ds_node &&
          id == o.id &&
          sf_field == o.sf_field &&
          sf_field_name == o.sf_field_name &&
          sf_folder == o.sf_folder &&
          sf_locked_value == o.sf_locked_value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [ds_attribute, ds_link, ds_node, id, sf_field, sf_field_name, sf_folder, sf_locked_value].hash
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
