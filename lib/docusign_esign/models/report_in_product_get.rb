=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class ReportInProductGet
    # 
    attr_accessor :authentication_success_filter

    # 
    attr_accessor :custom_field_filter

    # 
    attr_accessor :date_range_custom_from_date

    # 
    attr_accessor :date_range_custom_to_date

    # 
    attr_accessor :date_range_filter

    # 
    attr_accessor :display_order

    # 
    attr_accessor :envelope_date_type_filter

    # 
    attr_accessor :envelope_recipient_name_contains_filter

    # 
    attr_accessor :envelope_status_filter

    # 
    attr_accessor :envelope_subject_contains_filter

    # 
    attr_accessor :fields

    # 
    attr_accessor :last_scheduled_execution_date

    # 
    attr_accessor :last_scheduled_execution_success_date

    # 
    attr_accessor :max_download_rows

    # 
    attr_accessor :max_grid_rows

    # 
    attr_accessor :max_scheduled_rows

    # 
    attr_accessor :period_length_filter

    # 
    attr_accessor :report_customized_id

    # 
    attr_accessor :report_description

    # 
    attr_accessor :report_id

    # 
    attr_accessor :report_name

    # 
    attr_accessor :report_type

    # 
    attr_accessor :run_uri

    # 
    attr_accessor :save_uri

    # 
    attr_accessor :schedule_id

    attr_accessor :sent_by_details

    # 
    attr_accessor :sent_by_filter

    # 
    attr_accessor :sent_by_ids

    # 
    attr_accessor :sort_field_direction

    # 
    attr_accessor :sort_field_name

    # 
    attr_accessor :verification_status_filter

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authentication_success_filter' => :'authenticationSuccessFilter',
        :'custom_field_filter' => :'customFieldFilter',
        :'date_range_custom_from_date' => :'dateRangeCustomFromDate',
        :'date_range_custom_to_date' => :'dateRangeCustomToDate',
        :'date_range_filter' => :'dateRangeFilter',
        :'display_order' => :'displayOrder',
        :'envelope_date_type_filter' => :'envelopeDateTypeFilter',
        :'envelope_recipient_name_contains_filter' => :'envelopeRecipientNameContainsFilter',
        :'envelope_status_filter' => :'envelopeStatusFilter',
        :'envelope_subject_contains_filter' => :'envelopeSubjectContainsFilter',
        :'fields' => :'fields',
        :'last_scheduled_execution_date' => :'lastScheduledExecutionDate',
        :'last_scheduled_execution_success_date' => :'lastScheduledExecutionSuccessDate',
        :'max_download_rows' => :'maxDownloadRows',
        :'max_grid_rows' => :'maxGridRows',
        :'max_scheduled_rows' => :'maxScheduledRows',
        :'period_length_filter' => :'periodLengthFilter',
        :'report_customized_id' => :'reportCustomizedId',
        :'report_description' => :'reportDescription',
        :'report_id' => :'reportId',
        :'report_name' => :'reportName',
        :'report_type' => :'reportType',
        :'run_uri' => :'runUri',
        :'save_uri' => :'saveUri',
        :'schedule_id' => :'scheduleId',
        :'sent_by_details' => :'sentByDetails',
        :'sent_by_filter' => :'sentByFilter',
        :'sent_by_ids' => :'sentByIds',
        :'sort_field_direction' => :'sortFieldDirection',
        :'sort_field_name' => :'sortFieldName',
        :'verification_status_filter' => :'verificationStatusFilter'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'authentication_success_filter' => :'String',
        :'custom_field_filter' => :'String',
        :'date_range_custom_from_date' => :'String',
        :'date_range_custom_to_date' => :'String',
        :'date_range_filter' => :'String',
        :'display_order' => :'String',
        :'envelope_date_type_filter' => :'String',
        :'envelope_recipient_name_contains_filter' => :'String',
        :'envelope_status_filter' => :'String',
        :'envelope_subject_contains_filter' => :'String',
        :'fields' => :'Array<ReportInProductField>',
        :'last_scheduled_execution_date' => :'String',
        :'last_scheduled_execution_success_date' => :'String',
        :'max_download_rows' => :'String',
        :'max_grid_rows' => :'String',
        :'max_scheduled_rows' => :'String',
        :'period_length_filter' => :'String',
        :'report_customized_id' => :'String',
        :'report_description' => :'String',
        :'report_id' => :'String',
        :'report_name' => :'String',
        :'report_type' => :'String',
        :'run_uri' => :'String',
        :'save_uri' => :'String',
        :'schedule_id' => :'String',
        :'sent_by_details' => :'ReportInProductSentByDetails',
        :'sent_by_filter' => :'String',
        :'sent_by_ids' => :'String',
        :'sort_field_direction' => :'String',
        :'sort_field_name' => :'String',
        :'verification_status_filter' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'authenticationSuccessFilter')
        self.authentication_success_filter = attributes[:'authenticationSuccessFilter']
      end

      if attributes.has_key?(:'customFieldFilter')
        self.custom_field_filter = attributes[:'customFieldFilter']
      end

      if attributes.has_key?(:'dateRangeCustomFromDate')
        self.date_range_custom_from_date = attributes[:'dateRangeCustomFromDate']
      end

      if attributes.has_key?(:'dateRangeCustomToDate')
        self.date_range_custom_to_date = attributes[:'dateRangeCustomToDate']
      end

      if attributes.has_key?(:'dateRangeFilter')
        self.date_range_filter = attributes[:'dateRangeFilter']
      end

      if attributes.has_key?(:'displayOrder')
        self.display_order = attributes[:'displayOrder']
      end

      if attributes.has_key?(:'envelopeDateTypeFilter')
        self.envelope_date_type_filter = attributes[:'envelopeDateTypeFilter']
      end

      if attributes.has_key?(:'envelopeRecipientNameContainsFilter')
        self.envelope_recipient_name_contains_filter = attributes[:'envelopeRecipientNameContainsFilter']
      end

      if attributes.has_key?(:'envelopeStatusFilter')
        self.envelope_status_filter = attributes[:'envelopeStatusFilter']
      end

      if attributes.has_key?(:'envelopeSubjectContainsFilter')
        self.envelope_subject_contains_filter = attributes[:'envelopeSubjectContainsFilter']
      end

      if attributes.has_key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end

      if attributes.has_key?(:'lastScheduledExecutionDate')
        self.last_scheduled_execution_date = attributes[:'lastScheduledExecutionDate']
      end

      if attributes.has_key?(:'lastScheduledExecutionSuccessDate')
        self.last_scheduled_execution_success_date = attributes[:'lastScheduledExecutionSuccessDate']
      end

      if attributes.has_key?(:'maxDownloadRows')
        self.max_download_rows = attributes[:'maxDownloadRows']
      end

      if attributes.has_key?(:'maxGridRows')
        self.max_grid_rows = attributes[:'maxGridRows']
      end

      if attributes.has_key?(:'maxScheduledRows')
        self.max_scheduled_rows = attributes[:'maxScheduledRows']
      end

      if attributes.has_key?(:'periodLengthFilter')
        self.period_length_filter = attributes[:'periodLengthFilter']
      end

      if attributes.has_key?(:'reportCustomizedId')
        self.report_customized_id = attributes[:'reportCustomizedId']
      end

      if attributes.has_key?(:'reportDescription')
        self.report_description = attributes[:'reportDescription']
      end

      if attributes.has_key?(:'reportId')
        self.report_id = attributes[:'reportId']
      end

      if attributes.has_key?(:'reportName')
        self.report_name = attributes[:'reportName']
      end

      if attributes.has_key?(:'reportType')
        self.report_type = attributes[:'reportType']
      end

      if attributes.has_key?(:'runUri')
        self.run_uri = attributes[:'runUri']
      end

      if attributes.has_key?(:'saveUri')
        self.save_uri = attributes[:'saveUri']
      end

      if attributes.has_key?(:'scheduleId')
        self.schedule_id = attributes[:'scheduleId']
      end

      if attributes.has_key?(:'sentByDetails')
        self.sent_by_details = attributes[:'sentByDetails']
      end

      if attributes.has_key?(:'sentByFilter')
        self.sent_by_filter = attributes[:'sentByFilter']
      end

      if attributes.has_key?(:'sentByIds')
        self.sent_by_ids = attributes[:'sentByIds']
      end

      if attributes.has_key?(:'sortFieldDirection')
        self.sort_field_direction = attributes[:'sortFieldDirection']
      end

      if attributes.has_key?(:'sortFieldName')
        self.sort_field_name = attributes[:'sortFieldName']
      end

      if attributes.has_key?(:'verificationStatusFilter')
        self.verification_status_filter = attributes[:'verificationStatusFilter']
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
          authentication_success_filter == o.authentication_success_filter &&
          custom_field_filter == o.custom_field_filter &&
          date_range_custom_from_date == o.date_range_custom_from_date &&
          date_range_custom_to_date == o.date_range_custom_to_date &&
          date_range_filter == o.date_range_filter &&
          display_order == o.display_order &&
          envelope_date_type_filter == o.envelope_date_type_filter &&
          envelope_recipient_name_contains_filter == o.envelope_recipient_name_contains_filter &&
          envelope_status_filter == o.envelope_status_filter &&
          envelope_subject_contains_filter == o.envelope_subject_contains_filter &&
          fields == o.fields &&
          last_scheduled_execution_date == o.last_scheduled_execution_date &&
          last_scheduled_execution_success_date == o.last_scheduled_execution_success_date &&
          max_download_rows == o.max_download_rows &&
          max_grid_rows == o.max_grid_rows &&
          max_scheduled_rows == o.max_scheduled_rows &&
          period_length_filter == o.period_length_filter &&
          report_customized_id == o.report_customized_id &&
          report_description == o.report_description &&
          report_id == o.report_id &&
          report_name == o.report_name &&
          report_type == o.report_type &&
          run_uri == o.run_uri &&
          save_uri == o.save_uri &&
          schedule_id == o.schedule_id &&
          sent_by_details == o.sent_by_details &&
          sent_by_filter == o.sent_by_filter &&
          sent_by_ids == o.sent_by_ids &&
          sort_field_direction == o.sort_field_direction &&
          sort_field_name == o.sort_field_name &&
          verification_status_filter == o.verification_status_filter
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [authentication_success_filter, custom_field_filter, date_range_custom_from_date, date_range_custom_to_date, date_range_filter, display_order, envelope_date_type_filter, envelope_recipient_name_contains_filter, envelope_status_filter, envelope_subject_contains_filter, fields, last_scheduled_execution_date, last_scheduled_execution_success_date, max_download_rows, max_grid_rows, max_scheduled_rows, period_length_filter, report_customized_id, report_description, report_id, report_name, report_type, run_uri, save_uri, schedule_id, sent_by_details, sent_by_filter, sent_by_ids, sort_field_direction, sort_field_name, verification_status_filter].hash
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