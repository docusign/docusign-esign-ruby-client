=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class LocalePolicy
    # 
    attr_accessor :address_format

    # 
    attr_accessor :address_format_metadata

    # 
    attr_accessor :allow_region

    # 
    attr_accessor :calendar_type

    # 
    attr_accessor :calendar_type_metadata

    # 
    attr_accessor :culture_name

    # 
    attr_accessor :culture_name_metadata

    # 
    attr_accessor :currency_code

    # Metadata that indicates whether the `currencyCode` property is editable.
    attr_accessor :currency_code_metadata

    # 
    attr_accessor :currency_negative_format

    # 
    attr_accessor :currency_negative_format_metadata

    # 
    attr_accessor :currency_positive_format

    # 
    attr_accessor :currency_positive_format_metadata

    # 
    attr_accessor :custom_date_format

    # 
    attr_accessor :custom_sign_date_format

    # 
    attr_accessor :custom_sign_time_format

    # 
    attr_accessor :custom_time_format

    # 
    attr_accessor :date_format

    # 
    attr_accessor :date_format_metadata

    # 
    attr_accessor :effective_address_format

    # 
    attr_accessor :effective_calendar_type

    # 
    attr_accessor :effective_currency_code

    # 
    attr_accessor :effective_currency_negative_format

    # 
    attr_accessor :effective_currency_positive_format

    # 
    attr_accessor :effective_custom_date_format

    # 
    attr_accessor :effective_custom_time_format

    # 
    attr_accessor :effective_date_format

    # 
    attr_accessor :effective_initial_format

    # 
    attr_accessor :effective_name_format

    # 
    attr_accessor :effective_time_format

    # 
    attr_accessor :effective_time_zone

    # 
    attr_accessor :initial_format

    # 
    attr_accessor :initial_format_metadata

    # 
    attr_accessor :name_format

    # 
    attr_accessor :name_format_metadata

    # 
    attr_accessor :sign_date_format

    # Metadata that indicates whether the `signDateFormat` property is editable. 
    attr_accessor :sign_date_format_metadata

    # 
    attr_accessor :sign_time_format

    # Metadata that indicates whether the `signTimeFormat` property is editable. 
    attr_accessor :sign_time_format_metadata

    # 
    attr_accessor :time_format

    # 
    attr_accessor :time_format_metadata

    # 
    attr_accessor :time_zone

    # 
    attr_accessor :time_zone_metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address_format' => :'addressFormat',
        :'address_format_metadata' => :'addressFormatMetadata',
        :'allow_region' => :'allowRegion',
        :'calendar_type' => :'calendarType',
        :'calendar_type_metadata' => :'calendarTypeMetadata',
        :'culture_name' => :'cultureName',
        :'culture_name_metadata' => :'cultureNameMetadata',
        :'currency_code' => :'currencyCode',
        :'currency_code_metadata' => :'currencyCodeMetadata',
        :'currency_negative_format' => :'currencyNegativeFormat',
        :'currency_negative_format_metadata' => :'currencyNegativeFormatMetadata',
        :'currency_positive_format' => :'currencyPositiveFormat',
        :'currency_positive_format_metadata' => :'currencyPositiveFormatMetadata',
        :'custom_date_format' => :'customDateFormat',
        :'custom_sign_date_format' => :'customSignDateFormat',
        :'custom_sign_time_format' => :'customSignTimeFormat',
        :'custom_time_format' => :'customTimeFormat',
        :'date_format' => :'dateFormat',
        :'date_format_metadata' => :'dateFormatMetadata',
        :'effective_address_format' => :'effectiveAddressFormat',
        :'effective_calendar_type' => :'effectiveCalendarType',
        :'effective_currency_code' => :'effectiveCurrencyCode',
        :'effective_currency_negative_format' => :'effectiveCurrencyNegativeFormat',
        :'effective_currency_positive_format' => :'effectiveCurrencyPositiveFormat',
        :'effective_custom_date_format' => :'effectiveCustomDateFormat',
        :'effective_custom_time_format' => :'effectiveCustomTimeFormat',
        :'effective_date_format' => :'effectiveDateFormat',
        :'effective_initial_format' => :'effectiveInitialFormat',
        :'effective_name_format' => :'effectiveNameFormat',
        :'effective_time_format' => :'effectiveTimeFormat',
        :'effective_time_zone' => :'effectiveTimeZone',
        :'initial_format' => :'initialFormat',
        :'initial_format_metadata' => :'initialFormatMetadata',
        :'name_format' => :'nameFormat',
        :'name_format_metadata' => :'nameFormatMetadata',
        :'sign_date_format' => :'signDateFormat',
        :'sign_date_format_metadata' => :'signDateFormatMetadata',
        :'sign_time_format' => :'signTimeFormat',
        :'sign_time_format_metadata' => :'signTimeFormatMetadata',
        :'time_format' => :'timeFormat',
        :'time_format_metadata' => :'timeFormatMetadata',
        :'time_zone' => :'timeZone',
        :'time_zone_metadata' => :'timeZoneMetadata'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address_format' => :'String',
        :'address_format_metadata' => :'SettingsMetadata',
        :'allow_region' => :'String',
        :'calendar_type' => :'String',
        :'calendar_type_metadata' => :'SettingsMetadata',
        :'culture_name' => :'String',
        :'culture_name_metadata' => :'SettingsMetadata',
        :'currency_code' => :'String',
        :'currency_code_metadata' => :'SettingsMetadata',
        :'currency_negative_format' => :'String',
        :'currency_negative_format_metadata' => :'SettingsMetadata',
        :'currency_positive_format' => :'String',
        :'currency_positive_format_metadata' => :'SettingsMetadata',
        :'custom_date_format' => :'String',
        :'custom_sign_date_format' => :'String',
        :'custom_sign_time_format' => :'String',
        :'custom_time_format' => :'String',
        :'date_format' => :'String',
        :'date_format_metadata' => :'SettingsMetadata',
        :'effective_address_format' => :'String',
        :'effective_calendar_type' => :'String',
        :'effective_currency_code' => :'String',
        :'effective_currency_negative_format' => :'String',
        :'effective_currency_positive_format' => :'String',
        :'effective_custom_date_format' => :'String',
        :'effective_custom_time_format' => :'String',
        :'effective_date_format' => :'String',
        :'effective_initial_format' => :'String',
        :'effective_name_format' => :'String',
        :'effective_time_format' => :'String',
        :'effective_time_zone' => :'String',
        :'initial_format' => :'String',
        :'initial_format_metadata' => :'SettingsMetadata',
        :'name_format' => :'String',
        :'name_format_metadata' => :'SettingsMetadata',
        :'sign_date_format' => :'String',
        :'sign_date_format_metadata' => :'SettingsMetadata',
        :'sign_time_format' => :'String',
        :'sign_time_format_metadata' => :'SettingsMetadata',
        :'time_format' => :'String',
        :'time_format_metadata' => :'SettingsMetadata',
        :'time_zone' => :'String',
        :'time_zone_metadata' => :'SettingsMetadata'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'addressFormat')
        self.address_format = attributes[:'addressFormat']
      end

      if attributes.has_key?(:'addressFormatMetadata')
        self.address_format_metadata = attributes[:'addressFormatMetadata']
      end

      if attributes.has_key?(:'allowRegion')
        self.allow_region = attributes[:'allowRegion']
      end

      if attributes.has_key?(:'calendarType')
        self.calendar_type = attributes[:'calendarType']
      end

      if attributes.has_key?(:'calendarTypeMetadata')
        self.calendar_type_metadata = attributes[:'calendarTypeMetadata']
      end

      if attributes.has_key?(:'cultureName')
        self.culture_name = attributes[:'cultureName']
      end

      if attributes.has_key?(:'cultureNameMetadata')
        self.culture_name_metadata = attributes[:'cultureNameMetadata']
      end

      if attributes.has_key?(:'currencyCode')
        self.currency_code = attributes[:'currencyCode']
      end

      if attributes.has_key?(:'currencyCodeMetadata')
        self.currency_code_metadata = attributes[:'currencyCodeMetadata']
      end

      if attributes.has_key?(:'currencyNegativeFormat')
        self.currency_negative_format = attributes[:'currencyNegativeFormat']
      end

      if attributes.has_key?(:'currencyNegativeFormatMetadata')
        self.currency_negative_format_metadata = attributes[:'currencyNegativeFormatMetadata']
      end

      if attributes.has_key?(:'currencyPositiveFormat')
        self.currency_positive_format = attributes[:'currencyPositiveFormat']
      end

      if attributes.has_key?(:'currencyPositiveFormatMetadata')
        self.currency_positive_format_metadata = attributes[:'currencyPositiveFormatMetadata']
      end

      if attributes.has_key?(:'customDateFormat')
        self.custom_date_format = attributes[:'customDateFormat']
      end

      if attributes.has_key?(:'customSignDateFormat')
        self.custom_sign_date_format = attributes[:'customSignDateFormat']
      end

      if attributes.has_key?(:'customSignTimeFormat')
        self.custom_sign_time_format = attributes[:'customSignTimeFormat']
      end

      if attributes.has_key?(:'customTimeFormat')
        self.custom_time_format = attributes[:'customTimeFormat']
      end

      if attributes.has_key?(:'dateFormat')
        self.date_format = attributes[:'dateFormat']
      end

      if attributes.has_key?(:'dateFormatMetadata')
        self.date_format_metadata = attributes[:'dateFormatMetadata']
      end

      if attributes.has_key?(:'effectiveAddressFormat')
        self.effective_address_format = attributes[:'effectiveAddressFormat']
      end

      if attributes.has_key?(:'effectiveCalendarType')
        self.effective_calendar_type = attributes[:'effectiveCalendarType']
      end

      if attributes.has_key?(:'effectiveCurrencyCode')
        self.effective_currency_code = attributes[:'effectiveCurrencyCode']
      end

      if attributes.has_key?(:'effectiveCurrencyNegativeFormat')
        self.effective_currency_negative_format = attributes[:'effectiveCurrencyNegativeFormat']
      end

      if attributes.has_key?(:'effectiveCurrencyPositiveFormat')
        self.effective_currency_positive_format = attributes[:'effectiveCurrencyPositiveFormat']
      end

      if attributes.has_key?(:'effectiveCustomDateFormat')
        self.effective_custom_date_format = attributes[:'effectiveCustomDateFormat']
      end

      if attributes.has_key?(:'effectiveCustomTimeFormat')
        self.effective_custom_time_format = attributes[:'effectiveCustomTimeFormat']
      end

      if attributes.has_key?(:'effectiveDateFormat')
        self.effective_date_format = attributes[:'effectiveDateFormat']
      end

      if attributes.has_key?(:'effectiveInitialFormat')
        self.effective_initial_format = attributes[:'effectiveInitialFormat']
      end

      if attributes.has_key?(:'effectiveNameFormat')
        self.effective_name_format = attributes[:'effectiveNameFormat']
      end

      if attributes.has_key?(:'effectiveTimeFormat')
        self.effective_time_format = attributes[:'effectiveTimeFormat']
      end

      if attributes.has_key?(:'effectiveTimeZone')
        self.effective_time_zone = attributes[:'effectiveTimeZone']
      end

      if attributes.has_key?(:'initialFormat')
        self.initial_format = attributes[:'initialFormat']
      end

      if attributes.has_key?(:'initialFormatMetadata')
        self.initial_format_metadata = attributes[:'initialFormatMetadata']
      end

      if attributes.has_key?(:'nameFormat')
        self.name_format = attributes[:'nameFormat']
      end

      if attributes.has_key?(:'nameFormatMetadata')
        self.name_format_metadata = attributes[:'nameFormatMetadata']
      end

      if attributes.has_key?(:'signDateFormat')
        self.sign_date_format = attributes[:'signDateFormat']
      end

      if attributes.has_key?(:'signDateFormatMetadata')
        self.sign_date_format_metadata = attributes[:'signDateFormatMetadata']
      end

      if attributes.has_key?(:'signTimeFormat')
        self.sign_time_format = attributes[:'signTimeFormat']
      end

      if attributes.has_key?(:'signTimeFormatMetadata')
        self.sign_time_format_metadata = attributes[:'signTimeFormatMetadata']
      end

      if attributes.has_key?(:'timeFormat')
        self.time_format = attributes[:'timeFormat']
      end

      if attributes.has_key?(:'timeFormatMetadata')
        self.time_format_metadata = attributes[:'timeFormatMetadata']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'timeZoneMetadata')
        self.time_zone_metadata = attributes[:'timeZoneMetadata']
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
          address_format == o.address_format &&
          address_format_metadata == o.address_format_metadata &&
          allow_region == o.allow_region &&
          calendar_type == o.calendar_type &&
          calendar_type_metadata == o.calendar_type_metadata &&
          culture_name == o.culture_name &&
          culture_name_metadata == o.culture_name_metadata &&
          currency_code == o.currency_code &&
          currency_code_metadata == o.currency_code_metadata &&
          currency_negative_format == o.currency_negative_format &&
          currency_negative_format_metadata == o.currency_negative_format_metadata &&
          currency_positive_format == o.currency_positive_format &&
          currency_positive_format_metadata == o.currency_positive_format_metadata &&
          custom_date_format == o.custom_date_format &&
          custom_sign_date_format == o.custom_sign_date_format &&
          custom_sign_time_format == o.custom_sign_time_format &&
          custom_time_format == o.custom_time_format &&
          date_format == o.date_format &&
          date_format_metadata == o.date_format_metadata &&
          effective_address_format == o.effective_address_format &&
          effective_calendar_type == o.effective_calendar_type &&
          effective_currency_code == o.effective_currency_code &&
          effective_currency_negative_format == o.effective_currency_negative_format &&
          effective_currency_positive_format == o.effective_currency_positive_format &&
          effective_custom_date_format == o.effective_custom_date_format &&
          effective_custom_time_format == o.effective_custom_time_format &&
          effective_date_format == o.effective_date_format &&
          effective_initial_format == o.effective_initial_format &&
          effective_name_format == o.effective_name_format &&
          effective_time_format == o.effective_time_format &&
          effective_time_zone == o.effective_time_zone &&
          initial_format == o.initial_format &&
          initial_format_metadata == o.initial_format_metadata &&
          name_format == o.name_format &&
          name_format_metadata == o.name_format_metadata &&
          sign_date_format == o.sign_date_format &&
          sign_date_format_metadata == o.sign_date_format_metadata &&
          sign_time_format == o.sign_time_format &&
          sign_time_format_metadata == o.sign_time_format_metadata &&
          time_format == o.time_format &&
          time_format_metadata == o.time_format_metadata &&
          time_zone == o.time_zone &&
          time_zone_metadata == o.time_zone_metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address_format, address_format_metadata, allow_region, calendar_type, calendar_type_metadata, culture_name, culture_name_metadata, currency_code, currency_code_metadata, currency_negative_format, currency_negative_format_metadata, currency_positive_format, currency_positive_format_metadata, custom_date_format, custom_sign_date_format, custom_sign_time_format, custom_time_format, date_format, date_format_metadata, effective_address_format, effective_calendar_type, effective_currency_code, effective_currency_negative_format, effective_currency_positive_format, effective_custom_date_format, effective_custom_time_format, effective_date_format, effective_initial_format, effective_name_format, effective_time_format, effective_time_zone, initial_format, initial_format_metadata, name_format, name_format_metadata, sign_date_format, sign_date_format_metadata, sign_time_format, sign_time_format_metadata, time_format, time_format_metadata, time_zone, time_zone_metadata].hash
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
