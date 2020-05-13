=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13-SNAPSHOT

=end

require 'date'

module DocuSign_eSign
  class UserInformation
    # The activation code the new user must enter when activating their account.
    attr_accessor :activation_access_code

    # 
    attr_accessor :company

    # 
    attr_accessor :connect_configurations

    # 
    attr_accessor :country_code

    # Indicates the date and time the item was created.
    attr_accessor :created_date_time

    # The name/value pair information for the user custom setting.
    attr_accessor :custom_settings

    # 
    attr_accessor :default_account_id

    # 
    attr_accessor :email

    # Specifies whether the user is enabled for updates from DocuSign Connect. Valid values: true or false.
    attr_accessor :enable_connect_for_user

    attr_accessor :error_details

    # The user's first name.  Maximum Length: 50 characters.
    attr_accessor :first_name

    attr_accessor :forgotten_password_info

    # A list of the group information for groups to add the user to. Group information can be found by calling [ML:GET group information]. The only required parameter is groupId.   The parameters are:  * groupId - The DocuSign group ID for the group. * groupName - The name of the group * permissionProfileId - The ID of the permission profile associated with the group. * groupType - The group type. 
    attr_accessor :group_list

    attr_accessor :home_address

    # Contains the URI for an endpoint that you can use to retrieve the initials image.
    attr_accessor :initials_image_uri

    # Determines if the feature set is actively set as part of the plan.
    attr_accessor :is_admin

    # 
    attr_accessor :is_nar_enabled

    # 
    attr_accessor :job_title

    # Shows the date-time when the user last logged on to the system.
    attr_accessor :last_login

    # The user's last name.  Maximum Length: 50 characters.
    attr_accessor :last_name

    # Shows the current status of the user's password. Possible values are:   * password_reset * password_active * password_expired * password_locked * password_reset_failed  
    attr_accessor :login_status

    # The user's middle name.  Maximum Length: 50 characters.
    attr_accessor :middle_name

    # 
    attr_accessor :password

    # 
    attr_accessor :password_expiration

    # 
    attr_accessor :permission_profile_id

    # 
    attr_accessor :permission_profile_name

    # 
    attr_accessor :profile_image_uri

    # 
    attr_accessor :send_activation_email

    # When set to **true**, specifies that an additional activation email is sent to the user if they fail a log on before activating their account. 
    attr_accessor :send_activation_on_invalid_login

    # Contains the URI for an endpoint that you can use to retrieve the signature image.
    attr_accessor :signature_image_uri

    # 
    attr_accessor :subscribe

    # The suffix for the user's name.   Maximum Length: 50 characters. 
    attr_accessor :suffix_name

    # The title of the user.
    attr_accessor :title

    # 
    attr_accessor :uri

    # 
    attr_accessor :user_added_to_account_date_time

    # 
    attr_accessor :user_id

    # 
    attr_accessor :user_name

    # 
    attr_accessor :user_profile_last_modified_date

    attr_accessor :user_settings

    # 
    attr_accessor :user_status

    # 
    attr_accessor :user_type

    attr_accessor :work_address

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'activation_access_code' => :'activationAccessCode',
        :'company' => :'company',
        :'connect_configurations' => :'connectConfigurations',
        :'country_code' => :'countryCode',
        :'created_date_time' => :'createdDateTime',
        :'custom_settings' => :'customSettings',
        :'default_account_id' => :'defaultAccountId',
        :'email' => :'email',
        :'enable_connect_for_user' => :'enableConnectForUser',
        :'error_details' => :'errorDetails',
        :'first_name' => :'firstName',
        :'forgotten_password_info' => :'forgottenPasswordInfo',
        :'group_list' => :'groupList',
        :'home_address' => :'homeAddress',
        :'initials_image_uri' => :'initialsImageUri',
        :'is_admin' => :'isAdmin',
        :'is_nar_enabled' => :'isNAREnabled',
        :'job_title' => :'jobTitle',
        :'last_login' => :'lastLogin',
        :'last_name' => :'lastName',
        :'login_status' => :'loginStatus',
        :'middle_name' => :'middleName',
        :'password' => :'password',
        :'password_expiration' => :'passwordExpiration',
        :'permission_profile_id' => :'permissionProfileId',
        :'permission_profile_name' => :'permissionProfileName',
        :'profile_image_uri' => :'profileImageUri',
        :'send_activation_email' => :'sendActivationEmail',
        :'send_activation_on_invalid_login' => :'sendActivationOnInvalidLogin',
        :'signature_image_uri' => :'signatureImageUri',
        :'subscribe' => :'subscribe',
        :'suffix_name' => :'suffixName',
        :'title' => :'title',
        :'uri' => :'uri',
        :'user_added_to_account_date_time' => :'userAddedToAccountDateTime',
        :'user_id' => :'userId',
        :'user_name' => :'userName',
        :'user_profile_last_modified_date' => :'userProfileLastModifiedDate',
        :'user_settings' => :'userSettings',
        :'user_status' => :'userStatus',
        :'user_type' => :'userType',
        :'work_address' => :'workAddress'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'activation_access_code' => :'String',
        :'company' => :'String',
        :'connect_configurations' => :'Array<ConnectUserObject>',
        :'country_code' => :'String',
        :'created_date_time' => :'String',
        :'custom_settings' => :'Array<NameValue>',
        :'default_account_id' => :'String',
        :'email' => :'String',
        :'enable_connect_for_user' => :'String',
        :'error_details' => :'ErrorDetails',
        :'first_name' => :'String',
        :'forgotten_password_info' => :'ForgottenPasswordInformation',
        :'group_list' => :'Array<Group>',
        :'home_address' => :'AddressInformation',
        :'initials_image_uri' => :'String',
        :'is_admin' => :'String',
        :'is_nar_enabled' => :'String',
        :'job_title' => :'String',
        :'last_login' => :'String',
        :'last_name' => :'String',
        :'login_status' => :'String',
        :'middle_name' => :'String',
        :'password' => :'String',
        :'password_expiration' => :'String',
        :'permission_profile_id' => :'String',
        :'permission_profile_name' => :'String',
        :'profile_image_uri' => :'String',
        :'send_activation_email' => :'String',
        :'send_activation_on_invalid_login' => :'String',
        :'signature_image_uri' => :'String',
        :'subscribe' => :'String',
        :'suffix_name' => :'String',
        :'title' => :'String',
        :'uri' => :'String',
        :'user_added_to_account_date_time' => :'String',
        :'user_id' => :'String',
        :'user_name' => :'String',
        :'user_profile_last_modified_date' => :'String',
        :'user_settings' => :'UserSettingsInformation',
        :'user_status' => :'String',
        :'user_type' => :'String',
        :'work_address' => :'AddressInformation'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'activationAccessCode')
        self.activation_access_code = attributes[:'activationAccessCode']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'connectConfigurations')
        if (value = attributes[:'connectConfigurations']).is_a?(Array)
          self.connect_configurations = value
        end
      end

      if attributes.has_key?(:'countryCode')
        self.country_code = attributes[:'countryCode']
      end

      if attributes.has_key?(:'createdDateTime')
        self.created_date_time = attributes[:'createdDateTime']
      end

      if attributes.has_key?(:'customSettings')
        if (value = attributes[:'customSettings']).is_a?(Array)
          self.custom_settings = value
        end
      end

      if attributes.has_key?(:'defaultAccountId')
        self.default_account_id = attributes[:'defaultAccountId']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'enableConnectForUser')
        self.enable_connect_for_user = attributes[:'enableConnectForUser']
      end

      if attributes.has_key?(:'errorDetails')
        self.error_details = attributes[:'errorDetails']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'forgottenPasswordInfo')
        self.forgotten_password_info = attributes[:'forgottenPasswordInfo']
      end

      if attributes.has_key?(:'groupList')
        if (value = attributes[:'groupList']).is_a?(Array)
          self.group_list = value
        end
      end

      if attributes.has_key?(:'homeAddress')
        self.home_address = attributes[:'homeAddress']
      end

      if attributes.has_key?(:'initialsImageUri')
        self.initials_image_uri = attributes[:'initialsImageUri']
      end

      if attributes.has_key?(:'isAdmin')
        self.is_admin = attributes[:'isAdmin']
      end

      if attributes.has_key?(:'isNAREnabled')
        self.is_nar_enabled = attributes[:'isNAREnabled']
      end

      if attributes.has_key?(:'jobTitle')
        self.job_title = attributes[:'jobTitle']
      end

      if attributes.has_key?(:'lastLogin')
        self.last_login = attributes[:'lastLogin']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'loginStatus')
        self.login_status = attributes[:'loginStatus']
      end

      if attributes.has_key?(:'middleName')
        self.middle_name = attributes[:'middleName']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'passwordExpiration')
        self.password_expiration = attributes[:'passwordExpiration']
      end

      if attributes.has_key?(:'permissionProfileId')
        self.permission_profile_id = attributes[:'permissionProfileId']
      end

      if attributes.has_key?(:'permissionProfileName')
        self.permission_profile_name = attributes[:'permissionProfileName']
      end

      if attributes.has_key?(:'profileImageUri')
        self.profile_image_uri = attributes[:'profileImageUri']
      end

      if attributes.has_key?(:'sendActivationEmail')
        self.send_activation_email = attributes[:'sendActivationEmail']
      end

      if attributes.has_key?(:'sendActivationOnInvalidLogin')
        self.send_activation_on_invalid_login = attributes[:'sendActivationOnInvalidLogin']
      end

      if attributes.has_key?(:'signatureImageUri')
        self.signature_image_uri = attributes[:'signatureImageUri']
      end

      if attributes.has_key?(:'subscribe')
        self.subscribe = attributes[:'subscribe']
      end

      if attributes.has_key?(:'suffixName')
        self.suffix_name = attributes[:'suffixName']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.has_key?(:'userAddedToAccountDateTime')
        self.user_added_to_account_date_time = attributes[:'userAddedToAccountDateTime']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'userName')
        self.user_name = attributes[:'userName']
      end

      if attributes.has_key?(:'userProfileLastModifiedDate')
        self.user_profile_last_modified_date = attributes[:'userProfileLastModifiedDate']
      end

      if attributes.has_key?(:'userSettings')
        self.user_settings = attributes[:'userSettings']
      end

      if attributes.has_key?(:'userStatus')
        self.user_status = attributes[:'userStatus']
      end

      if attributes.has_key?(:'userType')
        self.user_type = attributes[:'userType']
      end

      if attributes.has_key?(:'workAddress')
        self.work_address = attributes[:'workAddress']
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
          activation_access_code == o.activation_access_code &&
          company == o.company &&
          connect_configurations == o.connect_configurations &&
          country_code == o.country_code &&
          created_date_time == o.created_date_time &&
          custom_settings == o.custom_settings &&
          default_account_id == o.default_account_id &&
          email == o.email &&
          enable_connect_for_user == o.enable_connect_for_user &&
          error_details == o.error_details &&
          first_name == o.first_name &&
          forgotten_password_info == o.forgotten_password_info &&
          group_list == o.group_list &&
          home_address == o.home_address &&
          initials_image_uri == o.initials_image_uri &&
          is_admin == o.is_admin &&
          is_nar_enabled == o.is_nar_enabled &&
          job_title == o.job_title &&
          last_login == o.last_login &&
          last_name == o.last_name &&
          login_status == o.login_status &&
          middle_name == o.middle_name &&
          password == o.password &&
          password_expiration == o.password_expiration &&
          permission_profile_id == o.permission_profile_id &&
          permission_profile_name == o.permission_profile_name &&
          profile_image_uri == o.profile_image_uri &&
          send_activation_email == o.send_activation_email &&
          send_activation_on_invalid_login == o.send_activation_on_invalid_login &&
          signature_image_uri == o.signature_image_uri &&
          subscribe == o.subscribe &&
          suffix_name == o.suffix_name &&
          title == o.title &&
          uri == o.uri &&
          user_added_to_account_date_time == o.user_added_to_account_date_time &&
          user_id == o.user_id &&
          user_name == o.user_name &&
          user_profile_last_modified_date == o.user_profile_last_modified_date &&
          user_settings == o.user_settings &&
          user_status == o.user_status &&
          user_type == o.user_type &&
          work_address == o.work_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [activation_access_code, company, connect_configurations, country_code, created_date_time, custom_settings, default_account_id, email, enable_connect_for_user, error_details, first_name, forgotten_password_info, group_list, home_address, initials_image_uri, is_admin, is_nar_enabled, job_title, last_login, last_name, login_status, middle_name, password, password_expiration, permission_profile_id, permission_profile_name, profile_image_uri, send_activation_email, send_activation_on_invalid_login, signature_image_uri, subscribe, suffix_name, title, uri, user_added_to_account_date_time, user_id, user_name, user_profile_last_modified_date, user_settings, user_status, user_type, work_address].hash
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
