=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class DocGenFormField
    # 
    attr_accessor :description

    # 
    attr_accessor :label

    # 
    attr_accessor :name

    # 
    attr_accessor :options

    # 
    attr_accessor :predefined_validation

    # When set to **true**, the signer is required to fill out this tab
    attr_accessor :required

    # 
    attr_accessor :row_values

    # 
    attr_accessor :type

    # 
    attr_accessor :validation

    # Specifies the value of the tab. 
    attr_accessor :value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'description' => :'description',
        :'label' => :'label',
        :'name' => :'name',
        :'options' => :'options',
        :'predefined_validation' => :'predefinedValidation',
        :'required' => :'required',
        :'row_values' => :'rowValues',
        :'type' => :'type',
        :'validation' => :'validation',
        :'value' => :'value'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'description' => :'String',
        :'label' => :'String',
        :'name' => :'String',
        :'options' => :'Array<DocGenFormFieldOption>',
        :'predefined_validation' => :'String',
        :'required' => :'String',
        :'row_values' => :'Array<DocGenFormFieldRowValue>',
        :'type' => :'String',
        :'validation' => :'DocGenFormFieldValidation',
        :'value' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'options')
        if (value = attributes[:'options']).is_a?(Array)
          self.options = value
        end
      end

      if attributes.has_key?(:'predefinedValidation')
        self.predefined_validation = attributes[:'predefinedValidation']
      end

      if attributes.has_key?(:'required')
        self.required = attributes[:'required']
      end

      if attributes.has_key?(:'rowValues')
        if (value = attributes[:'rowValues']).is_a?(Array)
          self.row_values = value
        end
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'validation')
        self.validation = attributes[:'validation']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
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
          description == o.description &&
          label == o.label &&
          name == o.name &&
          options == o.options &&
          predefined_validation == o.predefined_validation &&
          required == o.required &&
          row_values == o.row_values &&
          type == o.type &&
          validation == o.validation &&
          value == o.value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [description, label, name, options, predefined_validation, required, row_values, type, validation, value].hash
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
