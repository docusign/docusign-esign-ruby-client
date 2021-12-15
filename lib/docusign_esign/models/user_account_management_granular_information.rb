=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class UserAccountManagementGranularInformation
    # 
    attr_accessor :can_manage_account_security_settings

    attr_accessor :can_manage_account_security_settings_metadata

    # 
    attr_accessor :can_manage_account_settings

    attr_accessor :can_manage_account_settings_metadata

    # 
    attr_accessor :can_manage_admins

    attr_accessor :can_manage_admins_metadata

    # 
    attr_accessor :can_manage_document_retention

    attr_accessor :can_manage_document_retention_metadata

    # 
    attr_accessor :can_manage_envelope_transfer

    attr_accessor :can_manage_envelope_transfer_metadata

    # 
    attr_accessor :can_manage_groups_but_not_users

    attr_accessor :can_manage_groups_but_not_users_metadata

    # 
    attr_accessor :can_manage_reporting

    attr_accessor :can_manage_reporting_metadata

    # 
    attr_accessor :can_manage_sharing

    attr_accessor :can_manage_sharing_metadata

    # 
    attr_accessor :can_manage_signing_groups

    attr_accessor :can_manage_signing_groups_metadata

    # 
    attr_accessor :can_manage_users

    attr_accessor :can_manage_users_metadata

    # 
    attr_accessor :can_view_users

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'can_manage_account_security_settings' => :'canManageAccountSecuritySettings',
        :'can_manage_account_security_settings_metadata' => :'canManageAccountSecuritySettingsMetadata',
        :'can_manage_account_settings' => :'canManageAccountSettings',
        :'can_manage_account_settings_metadata' => :'canManageAccountSettingsMetadata',
        :'can_manage_admins' => :'canManageAdmins',
        :'can_manage_admins_metadata' => :'canManageAdminsMetadata',
        :'can_manage_document_retention' => :'canManageDocumentRetention',
        :'can_manage_document_retention_metadata' => :'canManageDocumentRetentionMetadata',
        :'can_manage_envelope_transfer' => :'canManageEnvelopeTransfer',
        :'can_manage_envelope_transfer_metadata' => :'canManageEnvelopeTransferMetadata',
        :'can_manage_groups_but_not_users' => :'canManageGroupsButNotUsers',
        :'can_manage_groups_but_not_users_metadata' => :'canManageGroupsButNotUsersMetadata',
        :'can_manage_reporting' => :'canManageReporting',
        :'can_manage_reporting_metadata' => :'canManageReportingMetadata',
        :'can_manage_sharing' => :'canManageSharing',
        :'can_manage_sharing_metadata' => :'canManageSharingMetadata',
        :'can_manage_signing_groups' => :'canManageSigningGroups',
        :'can_manage_signing_groups_metadata' => :'canManageSigningGroupsMetadata',
        :'can_manage_users' => :'canManageUsers',
        :'can_manage_users_metadata' => :'canManageUsersMetadata',
        :'can_view_users' => :'canViewUsers'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'can_manage_account_security_settings' => :'String',
        :'can_manage_account_security_settings_metadata' => :'SettingsMetadata',
        :'can_manage_account_settings' => :'String',
        :'can_manage_account_settings_metadata' => :'SettingsMetadata',
        :'can_manage_admins' => :'String',
        :'can_manage_admins_metadata' => :'SettingsMetadata',
        :'can_manage_document_retention' => :'String',
        :'can_manage_document_retention_metadata' => :'SettingsMetadata',
        :'can_manage_envelope_transfer' => :'String',
        :'can_manage_envelope_transfer_metadata' => :'SettingsMetadata',
        :'can_manage_groups_but_not_users' => :'String',
        :'can_manage_groups_but_not_users_metadata' => :'SettingsMetadata',
        :'can_manage_reporting' => :'String',
        :'can_manage_reporting_metadata' => :'SettingsMetadata',
        :'can_manage_sharing' => :'String',
        :'can_manage_sharing_metadata' => :'SettingsMetadata',
        :'can_manage_signing_groups' => :'String',
        :'can_manage_signing_groups_metadata' => :'SettingsMetadata',
        :'can_manage_users' => :'String',
        :'can_manage_users_metadata' => :'SettingsMetadata',
        :'can_view_users' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'canManageAccountSecuritySettings')
        self.can_manage_account_security_settings = attributes[:'canManageAccountSecuritySettings']
      end

      if attributes.has_key?(:'canManageAccountSecuritySettingsMetadata')
        self.can_manage_account_security_settings_metadata = attributes[:'canManageAccountSecuritySettingsMetadata']
      end

      if attributes.has_key?(:'canManageAccountSettings')
        self.can_manage_account_settings = attributes[:'canManageAccountSettings']
      end

      if attributes.has_key?(:'canManageAccountSettingsMetadata')
        self.can_manage_account_settings_metadata = attributes[:'canManageAccountSettingsMetadata']
      end

      if attributes.has_key?(:'canManageAdmins')
        self.can_manage_admins = attributes[:'canManageAdmins']
      end

      if attributes.has_key?(:'canManageAdminsMetadata')
        self.can_manage_admins_metadata = attributes[:'canManageAdminsMetadata']
      end

      if attributes.has_key?(:'canManageDocumentRetention')
        self.can_manage_document_retention = attributes[:'canManageDocumentRetention']
      end

      if attributes.has_key?(:'canManageDocumentRetentionMetadata')
        self.can_manage_document_retention_metadata = attributes[:'canManageDocumentRetentionMetadata']
      end

      if attributes.has_key?(:'canManageEnvelopeTransfer')
        self.can_manage_envelope_transfer = attributes[:'canManageEnvelopeTransfer']
      end

      if attributes.has_key?(:'canManageEnvelopeTransferMetadata')
        self.can_manage_envelope_transfer_metadata = attributes[:'canManageEnvelopeTransferMetadata']
      end

      if attributes.has_key?(:'canManageGroupsButNotUsers')
        self.can_manage_groups_but_not_users = attributes[:'canManageGroupsButNotUsers']
      end

      if attributes.has_key?(:'canManageGroupsButNotUsersMetadata')
        self.can_manage_groups_but_not_users_metadata = attributes[:'canManageGroupsButNotUsersMetadata']
      end

      if attributes.has_key?(:'canManageReporting')
        self.can_manage_reporting = attributes[:'canManageReporting']
      end

      if attributes.has_key?(:'canManageReportingMetadata')
        self.can_manage_reporting_metadata = attributes[:'canManageReportingMetadata']
      end

      if attributes.has_key?(:'canManageSharing')
        self.can_manage_sharing = attributes[:'canManageSharing']
      end

      if attributes.has_key?(:'canManageSharingMetadata')
        self.can_manage_sharing_metadata = attributes[:'canManageSharingMetadata']
      end

      if attributes.has_key?(:'canManageSigningGroups')
        self.can_manage_signing_groups = attributes[:'canManageSigningGroups']
      end

      if attributes.has_key?(:'canManageSigningGroupsMetadata')
        self.can_manage_signing_groups_metadata = attributes[:'canManageSigningGroupsMetadata']
      end

      if attributes.has_key?(:'canManageUsers')
        self.can_manage_users = attributes[:'canManageUsers']
      end

      if attributes.has_key?(:'canManageUsersMetadata')
        self.can_manage_users_metadata = attributes[:'canManageUsersMetadata']
      end

      if attributes.has_key?(:'canViewUsers')
        self.can_view_users = attributes[:'canViewUsers']
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
          can_manage_account_security_settings == o.can_manage_account_security_settings &&
          can_manage_account_security_settings_metadata == o.can_manage_account_security_settings_metadata &&
          can_manage_account_settings == o.can_manage_account_settings &&
          can_manage_account_settings_metadata == o.can_manage_account_settings_metadata &&
          can_manage_admins == o.can_manage_admins &&
          can_manage_admins_metadata == o.can_manage_admins_metadata &&
          can_manage_document_retention == o.can_manage_document_retention &&
          can_manage_document_retention_metadata == o.can_manage_document_retention_metadata &&
          can_manage_envelope_transfer == o.can_manage_envelope_transfer &&
          can_manage_envelope_transfer_metadata == o.can_manage_envelope_transfer_metadata &&
          can_manage_groups_but_not_users == o.can_manage_groups_but_not_users &&
          can_manage_groups_but_not_users_metadata == o.can_manage_groups_but_not_users_metadata &&
          can_manage_reporting == o.can_manage_reporting &&
          can_manage_reporting_metadata == o.can_manage_reporting_metadata &&
          can_manage_sharing == o.can_manage_sharing &&
          can_manage_sharing_metadata == o.can_manage_sharing_metadata &&
          can_manage_signing_groups == o.can_manage_signing_groups &&
          can_manage_signing_groups_metadata == o.can_manage_signing_groups_metadata &&
          can_manage_users == o.can_manage_users &&
          can_manage_users_metadata == o.can_manage_users_metadata &&
          can_view_users == o.can_view_users
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [can_manage_account_security_settings, can_manage_account_security_settings_metadata, can_manage_account_settings, can_manage_account_settings_metadata, can_manage_admins, can_manage_admins_metadata, can_manage_document_retention, can_manage_document_retention_metadata, can_manage_envelope_transfer, can_manage_envelope_transfer_metadata, can_manage_groups_but_not_users, can_manage_groups_but_not_users_metadata, can_manage_reporting, can_manage_reporting_metadata, can_manage_sharing, can_manage_sharing_metadata, can_manage_signing_groups, can_manage_signing_groups_metadata, can_manage_users, can_manage_users_metadata, can_view_users].hash
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
