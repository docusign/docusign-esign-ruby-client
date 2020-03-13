=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign

  class TabAccountSettings
    # 
    attr_accessor :allow_tab_order

    attr_accessor :allow_tab_order_metadata

    # 
    attr_accessor :approve_decline_tabs_enabled

    attr_accessor :approve_decline_tabs_metadata

    # 
    attr_accessor :calculated_fields_enabled

    attr_accessor :calculated_fields_metadata

    # 
    attr_accessor :checkbox_tabs_enabled

    attr_accessor :check_box_tabs_metadata

    # 
    attr_accessor :data_field_regex_enabled

    attr_accessor :data_field_regex_metadata

    # 
    attr_accessor :data_field_size_enabled

    attr_accessor :data_field_size_metadata

    # 
    attr_accessor :draw_tabs_enabled

    attr_accessor :draw_tabs_metadata

    # 
    attr_accessor :first_last_email_tabs_enabled

    attr_accessor :first_last_email_tabs_metadata

    # 
    attr_accessor :list_tabs_enabled

    attr_accessor :list_tabs_metadata

    # 
    attr_accessor :note_tabs_enabled

    attr_accessor :note_tabs_metadata

    # 
    attr_accessor :radio_tabs_enabled

    attr_accessor :radio_tabs_metadata

    # 
    attr_accessor :saving_custom_tabs_enabled

    attr_accessor :saving_custom_tabs_metadata

    # 
    attr_accessor :sender_to_change_tab_assignments_enabled

    attr_accessor :sender_to_change_tab_assignments_metadata

    # 
    attr_accessor :shared_custom_tabs_enabled

    attr_accessor :shared_custom_tabs_metadata

    # 
    attr_accessor :tab_data_label_enabled

    attr_accessor :tab_data_label_metadata

    # 
    attr_accessor :tab_location_enabled

    attr_accessor :tab_location_metadata

    # 
    attr_accessor :tab_locking_enabled

    attr_accessor :tab_locking_metadata

    # 
    attr_accessor :tab_scale_enabled

    attr_accessor :tab_scale_metadata

    # 
    attr_accessor :tab_text_formatting_enabled

    attr_accessor :tab_text_formatting_metadata

    # 
    attr_accessor :text_tabs_enabled

    attr_accessor :text_tabs_metadata


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_tab_order' => :'allowTabOrder',
        :'allow_tab_order_metadata' => :'allowTabOrderMetadata',
        :'approve_decline_tabs_enabled' => :'approveDeclineTabsEnabled',
        :'approve_decline_tabs_metadata' => :'approveDeclineTabsMetadata',
        :'calculated_fields_enabled' => :'calculatedFieldsEnabled',
        :'calculated_fields_metadata' => :'calculatedFieldsMetadata',
        :'checkbox_tabs_enabled' => :'checkboxTabsEnabled',
        :'check_box_tabs_metadata' => :'checkBoxTabsMetadata',
        :'data_field_regex_enabled' => :'dataFieldRegexEnabled',
        :'data_field_regex_metadata' => :'dataFieldRegexMetadata',
        :'data_field_size_enabled' => :'dataFieldSizeEnabled',
        :'data_field_size_metadata' => :'dataFieldSizeMetadata',
        :'draw_tabs_enabled' => :'drawTabsEnabled',
        :'draw_tabs_metadata' => :'drawTabsMetadata',
        :'first_last_email_tabs_enabled' => :'firstLastEmailTabsEnabled',
        :'first_last_email_tabs_metadata' => :'firstLastEmailTabsMetadata',
        :'list_tabs_enabled' => :'listTabsEnabled',
        :'list_tabs_metadata' => :'listTabsMetadata',
        :'note_tabs_enabled' => :'noteTabsEnabled',
        :'note_tabs_metadata' => :'noteTabsMetadata',
        :'radio_tabs_enabled' => :'radioTabsEnabled',
        :'radio_tabs_metadata' => :'radioTabsMetadata',
        :'saving_custom_tabs_enabled' => :'savingCustomTabsEnabled',
        :'saving_custom_tabs_metadata' => :'savingCustomTabsMetadata',
        :'sender_to_change_tab_assignments_enabled' => :'senderToChangeTabAssignmentsEnabled',
        :'sender_to_change_tab_assignments_metadata' => :'senderToChangeTabAssignmentsMetadata',
        :'shared_custom_tabs_enabled' => :'sharedCustomTabsEnabled',
        :'shared_custom_tabs_metadata' => :'sharedCustomTabsMetadata',
        :'tab_data_label_enabled' => :'tabDataLabelEnabled',
        :'tab_data_label_metadata' => :'tabDataLabelMetadata',
        :'tab_location_enabled' => :'tabLocationEnabled',
        :'tab_location_metadata' => :'tabLocationMetadata',
        :'tab_locking_enabled' => :'tabLockingEnabled',
        :'tab_locking_metadata' => :'tabLockingMetadata',
        :'tab_scale_enabled' => :'tabScaleEnabled',
        :'tab_scale_metadata' => :'tabScaleMetadata',
        :'tab_text_formatting_enabled' => :'tabTextFormattingEnabled',
        :'tab_text_formatting_metadata' => :'tabTextFormattingMetadata',
        :'text_tabs_enabled' => :'textTabsEnabled',
        :'text_tabs_metadata' => :'textTabsMetadata'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allow_tab_order' => :'String',
        :'allow_tab_order_metadata' => :'SettingsMetadata',
        :'approve_decline_tabs_enabled' => :'String',
        :'approve_decline_tabs_metadata' => :'SettingsMetadata',
        :'calculated_fields_enabled' => :'String',
        :'calculated_fields_metadata' => :'SettingsMetadata',
        :'checkbox_tabs_enabled' => :'String',
        :'check_box_tabs_metadata' => :'SettingsMetadata',
        :'data_field_regex_enabled' => :'String',
        :'data_field_regex_metadata' => :'SettingsMetadata',
        :'data_field_size_enabled' => :'String',
        :'data_field_size_metadata' => :'SettingsMetadata',
        :'draw_tabs_enabled' => :'String',
        :'draw_tabs_metadata' => :'SettingsMetadata',
        :'first_last_email_tabs_enabled' => :'String',
        :'first_last_email_tabs_metadata' => :'SettingsMetadata',
        :'list_tabs_enabled' => :'String',
        :'list_tabs_metadata' => :'SettingsMetadata',
        :'note_tabs_enabled' => :'String',
        :'note_tabs_metadata' => :'SettingsMetadata',
        :'radio_tabs_enabled' => :'String',
        :'radio_tabs_metadata' => :'SettingsMetadata',
        :'saving_custom_tabs_enabled' => :'String',
        :'saving_custom_tabs_metadata' => :'SettingsMetadata',
        :'sender_to_change_tab_assignments_enabled' => :'String',
        :'sender_to_change_tab_assignments_metadata' => :'SettingsMetadata',
        :'shared_custom_tabs_enabled' => :'String',
        :'shared_custom_tabs_metadata' => :'SettingsMetadata',
        :'tab_data_label_enabled' => :'String',
        :'tab_data_label_metadata' => :'SettingsMetadata',
        :'tab_location_enabled' => :'String',
        :'tab_location_metadata' => :'SettingsMetadata',
        :'tab_locking_enabled' => :'String',
        :'tab_locking_metadata' => :'SettingsMetadata',
        :'tab_scale_enabled' => :'String',
        :'tab_scale_metadata' => :'SettingsMetadata',
        :'tab_text_formatting_enabled' => :'String',
        :'tab_text_formatting_metadata' => :'SettingsMetadata',
        :'text_tabs_enabled' => :'String',
        :'text_tabs_metadata' => :'SettingsMetadata'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'allowTabOrder')
        self.allow_tab_order = attributes[:'allowTabOrder']
      end

      if attributes.has_key?(:'allowTabOrderMetadata')
        self.allow_tab_order_metadata = attributes[:'allowTabOrderMetadata']
      end

      if attributes.has_key?(:'approveDeclineTabsEnabled')
        self.approve_decline_tabs_enabled = attributes[:'approveDeclineTabsEnabled']
      end

      if attributes.has_key?(:'approveDeclineTabsMetadata')
        self.approve_decline_tabs_metadata = attributes[:'approveDeclineTabsMetadata']
      end

      if attributes.has_key?(:'calculatedFieldsEnabled')
        self.calculated_fields_enabled = attributes[:'calculatedFieldsEnabled']
      end

      if attributes.has_key?(:'calculatedFieldsMetadata')
        self.calculated_fields_metadata = attributes[:'calculatedFieldsMetadata']
      end

      if attributes.has_key?(:'checkboxTabsEnabled')
        self.checkbox_tabs_enabled = attributes[:'checkboxTabsEnabled']
      end

      if attributes.has_key?(:'checkBoxTabsMetadata')
        self.check_box_tabs_metadata = attributes[:'checkBoxTabsMetadata']
      end

      if attributes.has_key?(:'dataFieldRegexEnabled')
        self.data_field_regex_enabled = attributes[:'dataFieldRegexEnabled']
      end

      if attributes.has_key?(:'dataFieldRegexMetadata')
        self.data_field_regex_metadata = attributes[:'dataFieldRegexMetadata']
      end

      if attributes.has_key?(:'dataFieldSizeEnabled')
        self.data_field_size_enabled = attributes[:'dataFieldSizeEnabled']
      end

      if attributes.has_key?(:'dataFieldSizeMetadata')
        self.data_field_size_metadata = attributes[:'dataFieldSizeMetadata']
      end

      if attributes.has_key?(:'drawTabsEnabled')
        self.draw_tabs_enabled = attributes[:'drawTabsEnabled']
      end

      if attributes.has_key?(:'drawTabsMetadata')
        self.draw_tabs_metadata = attributes[:'drawTabsMetadata']
      end

      if attributes.has_key?(:'firstLastEmailTabsEnabled')
        self.first_last_email_tabs_enabled = attributes[:'firstLastEmailTabsEnabled']
      end

      if attributes.has_key?(:'firstLastEmailTabsMetadata')
        self.first_last_email_tabs_metadata = attributes[:'firstLastEmailTabsMetadata']
      end

      if attributes.has_key?(:'listTabsEnabled')
        self.list_tabs_enabled = attributes[:'listTabsEnabled']
      end

      if attributes.has_key?(:'listTabsMetadata')
        self.list_tabs_metadata = attributes[:'listTabsMetadata']
      end

      if attributes.has_key?(:'noteTabsEnabled')
        self.note_tabs_enabled = attributes[:'noteTabsEnabled']
      end

      if attributes.has_key?(:'noteTabsMetadata')
        self.note_tabs_metadata = attributes[:'noteTabsMetadata']
      end

      if attributes.has_key?(:'radioTabsEnabled')
        self.radio_tabs_enabled = attributes[:'radioTabsEnabled']
      end

      if attributes.has_key?(:'radioTabsMetadata')
        self.radio_tabs_metadata = attributes[:'radioTabsMetadata']
      end

      if attributes.has_key?(:'savingCustomTabsEnabled')
        self.saving_custom_tabs_enabled = attributes[:'savingCustomTabsEnabled']
      end

      if attributes.has_key?(:'savingCustomTabsMetadata')
        self.saving_custom_tabs_metadata = attributes[:'savingCustomTabsMetadata']
      end

      if attributes.has_key?(:'senderToChangeTabAssignmentsEnabled')
        self.sender_to_change_tab_assignments_enabled = attributes[:'senderToChangeTabAssignmentsEnabled']
      end

      if attributes.has_key?(:'senderToChangeTabAssignmentsMetadata')
        self.sender_to_change_tab_assignments_metadata = attributes[:'senderToChangeTabAssignmentsMetadata']
      end

      if attributes.has_key?(:'sharedCustomTabsEnabled')
        self.shared_custom_tabs_enabled = attributes[:'sharedCustomTabsEnabled']
      end

      if attributes.has_key?(:'sharedCustomTabsMetadata')
        self.shared_custom_tabs_metadata = attributes[:'sharedCustomTabsMetadata']
      end

      if attributes.has_key?(:'tabDataLabelEnabled')
        self.tab_data_label_enabled = attributes[:'tabDataLabelEnabled']
      end

      if attributes.has_key?(:'tabDataLabelMetadata')
        self.tab_data_label_metadata = attributes[:'tabDataLabelMetadata']
      end

      if attributes.has_key?(:'tabLocationEnabled')
        self.tab_location_enabled = attributes[:'tabLocationEnabled']
      end

      if attributes.has_key?(:'tabLocationMetadata')
        self.tab_location_metadata = attributes[:'tabLocationMetadata']
      end

      if attributes.has_key?(:'tabLockingEnabled')
        self.tab_locking_enabled = attributes[:'tabLockingEnabled']
      end

      if attributes.has_key?(:'tabLockingMetadata')
        self.tab_locking_metadata = attributes[:'tabLockingMetadata']
      end

      if attributes.has_key?(:'tabScaleEnabled')
        self.tab_scale_enabled = attributes[:'tabScaleEnabled']
      end

      if attributes.has_key?(:'tabScaleMetadata')
        self.tab_scale_metadata = attributes[:'tabScaleMetadata']
      end

      if attributes.has_key?(:'tabTextFormattingEnabled')
        self.tab_text_formatting_enabled = attributes[:'tabTextFormattingEnabled']
      end

      if attributes.has_key?(:'tabTextFormattingMetadata')
        self.tab_text_formatting_metadata = attributes[:'tabTextFormattingMetadata']
      end

      if attributes.has_key?(:'textTabsEnabled')
        self.text_tabs_enabled = attributes[:'textTabsEnabled']
      end

      if attributes.has_key?(:'textTabsMetadata')
        self.text_tabs_metadata = attributes[:'textTabsMetadata']
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
          allow_tab_order == o.allow_tab_order &&
          allow_tab_order_metadata == o.allow_tab_order_metadata &&
          approve_decline_tabs_enabled == o.approve_decline_tabs_enabled &&
          approve_decline_tabs_metadata == o.approve_decline_tabs_metadata &&
          calculated_fields_enabled == o.calculated_fields_enabled &&
          calculated_fields_metadata == o.calculated_fields_metadata &&
          checkbox_tabs_enabled == o.checkbox_tabs_enabled &&
          check_box_tabs_metadata == o.check_box_tabs_metadata &&
          data_field_regex_enabled == o.data_field_regex_enabled &&
          data_field_regex_metadata == o.data_field_regex_metadata &&
          data_field_size_enabled == o.data_field_size_enabled &&
          data_field_size_metadata == o.data_field_size_metadata &&
          draw_tabs_enabled == o.draw_tabs_enabled &&
          draw_tabs_metadata == o.draw_tabs_metadata &&
          first_last_email_tabs_enabled == o.first_last_email_tabs_enabled &&
          first_last_email_tabs_metadata == o.first_last_email_tabs_metadata &&
          list_tabs_enabled == o.list_tabs_enabled &&
          list_tabs_metadata == o.list_tabs_metadata &&
          note_tabs_enabled == o.note_tabs_enabled &&
          note_tabs_metadata == o.note_tabs_metadata &&
          radio_tabs_enabled == o.radio_tabs_enabled &&
          radio_tabs_metadata == o.radio_tabs_metadata &&
          saving_custom_tabs_enabled == o.saving_custom_tabs_enabled &&
          saving_custom_tabs_metadata == o.saving_custom_tabs_metadata &&
          sender_to_change_tab_assignments_enabled == o.sender_to_change_tab_assignments_enabled &&
          sender_to_change_tab_assignments_metadata == o.sender_to_change_tab_assignments_metadata &&
          shared_custom_tabs_enabled == o.shared_custom_tabs_enabled &&
          shared_custom_tabs_metadata == o.shared_custom_tabs_metadata &&
          tab_data_label_enabled == o.tab_data_label_enabled &&
          tab_data_label_metadata == o.tab_data_label_metadata &&
          tab_location_enabled == o.tab_location_enabled &&
          tab_location_metadata == o.tab_location_metadata &&
          tab_locking_enabled == o.tab_locking_enabled &&
          tab_locking_metadata == o.tab_locking_metadata &&
          tab_scale_enabled == o.tab_scale_enabled &&
          tab_scale_metadata == o.tab_scale_metadata &&
          tab_text_formatting_enabled == o.tab_text_formatting_enabled &&
          tab_text_formatting_metadata == o.tab_text_formatting_metadata &&
          text_tabs_enabled == o.text_tabs_enabled &&
          text_tabs_metadata == o.text_tabs_metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allow_tab_order, allow_tab_order_metadata, approve_decline_tabs_enabled, approve_decline_tabs_metadata, calculated_fields_enabled, calculated_fields_metadata, checkbox_tabs_enabled, check_box_tabs_metadata, data_field_regex_enabled, data_field_regex_metadata, data_field_size_enabled, data_field_size_metadata, draw_tabs_enabled, draw_tabs_metadata, first_last_email_tabs_enabled, first_last_email_tabs_metadata, list_tabs_enabled, list_tabs_metadata, note_tabs_enabled, note_tabs_metadata, radio_tabs_enabled, radio_tabs_metadata, saving_custom_tabs_enabled, saving_custom_tabs_metadata, sender_to_change_tab_assignments_enabled, sender_to_change_tab_assignments_metadata, shared_custom_tabs_enabled, shared_custom_tabs_metadata, tab_data_label_enabled, tab_data_label_metadata, tab_location_enabled, tab_location_metadata, tab_locking_enabled, tab_locking_metadata, tab_scale_enabled, tab_scale_metadata, tab_text_formatting_enabled, tab_text_formatting_metadata, text_tabs_enabled, text_tabs_metadata].hash
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
