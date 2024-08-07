=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # Display settings for collapsible section.
  class DocumentHtmlCollapsibleDisplaySettings
    # 
    attr_accessor :arrow_closed

    # 
    attr_accessor :arrow_color

    # 
    attr_accessor :arrow_location

    # 
    attr_accessor :arrow_open

    # 
    attr_accessor :arrow_size

    # 
    attr_accessor :arrow_style

    # 
    attr_accessor :container_style

    # 
    attr_accessor :label_style

    # 
    attr_accessor :only_arrow_is_clickable

    # 
    attr_accessor :outer_label_and_arrow_style

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'arrow_closed' => :'arrowClosed',
        :'arrow_color' => :'arrowColor',
        :'arrow_location' => :'arrowLocation',
        :'arrow_open' => :'arrowOpen',
        :'arrow_size' => :'arrowSize',
        :'arrow_style' => :'arrowStyle',
        :'container_style' => :'containerStyle',
        :'label_style' => :'labelStyle',
        :'only_arrow_is_clickable' => :'onlyArrowIsClickable',
        :'outer_label_and_arrow_style' => :'outerLabelAndArrowStyle'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'arrow_closed' => :'String',
        :'arrow_color' => :'String',
        :'arrow_location' => :'String',
        :'arrow_open' => :'String',
        :'arrow_size' => :'String',
        :'arrow_style' => :'String',
        :'container_style' => :'String',
        :'label_style' => :'String',
        :'only_arrow_is_clickable' => :'BOOLEAN',
        :'outer_label_and_arrow_style' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'arrowClosed')
        self.arrow_closed = attributes[:'arrowClosed']
      end

      if attributes.has_key?(:'arrowColor')
        self.arrow_color = attributes[:'arrowColor']
      end

      if attributes.has_key?(:'arrowLocation')
        self.arrow_location = attributes[:'arrowLocation']
      end

      if attributes.has_key?(:'arrowOpen')
        self.arrow_open = attributes[:'arrowOpen']
      end

      if attributes.has_key?(:'arrowSize')
        self.arrow_size = attributes[:'arrowSize']
      end

      if attributes.has_key?(:'arrowStyle')
        self.arrow_style = attributes[:'arrowStyle']
      end

      if attributes.has_key?(:'containerStyle')
        self.container_style = attributes[:'containerStyle']
      end

      if attributes.has_key?(:'labelStyle')
        self.label_style = attributes[:'labelStyle']
      end

      if attributes.has_key?(:'onlyArrowIsClickable')
        self.only_arrow_is_clickable = attributes[:'onlyArrowIsClickable']
      end

      if attributes.has_key?(:'outerLabelAndArrowStyle')
        self.outer_label_and_arrow_style = attributes[:'outerLabelAndArrowStyle']
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
          arrow_closed == o.arrow_closed &&
          arrow_color == o.arrow_color &&
          arrow_location == o.arrow_location &&
          arrow_open == o.arrow_open &&
          arrow_size == o.arrow_size &&
          arrow_style == o.arrow_style &&
          container_style == o.container_style &&
          label_style == o.label_style &&
          only_arrow_is_clickable == o.only_arrow_is_clickable &&
          outer_label_and_arrow_style == o.outer_label_and_arrow_style
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [arrow_closed, arrow_color, arrow_location, arrow_open, arrow_size, arrow_style, container_style, label_style, only_arrow_is_clickable, outer_label_and_arrow_style].hash
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
