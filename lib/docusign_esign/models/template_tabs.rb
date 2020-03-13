=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign

  class TemplateTabs
    # Specifies a tag on the document where you want the recipient to approve documents in an envelope without placing a signature or initials on the document. If the recipient clicks the Approve tag during the signing process, the recipient is considered to have signed the document. No information is shown on the document for the approval, but it is recorded as a signature in the envelope history.
    attr_accessor :approve_tabs

    # Specifies a tag on the document in a location where the recipient can select an option.
    attr_accessor :checkbox_tabs

    # 
    attr_accessor :comment_thread_tabs

    # Specifies a tag on the document where you want the recipient's company name to appear.  When getting information that includes this tab type, the original value of the tab when the associated envelope was sent is included in the response.
    attr_accessor :company_tabs

    # Specifies a tab on the document where the date the document was signed will automatically appear.
    attr_accessor :date_signed_tabs

    # Specifies a tab on the document where you want the recipient to enter a date. Date tabs are single-line fields that allow date information to be entered in any format. The tooltip for this tab recommends entering the date as MM/DD/YYYY, but this is not enforced. The format entered by the signer is retained.   If you need a particular date format enforced, DocuSign recommends using a Text tab with a Validation Pattern and Validation Message to enforce the format.
    attr_accessor :date_tabs

    # Specifies a tag on the document where you want to give the recipient the option of declining an envelope. If the recipient clicks the Decline tag during the signing process, the envelope is voided.
    attr_accessor :decline_tabs

<<<<<<< HEAD
    # 
    attr_accessor :draw_tabs

=======
>>>>>>> 21be361feb7dcf8e34f4d3df2412dedff41c20d5
    # Specifies a location on the document where you want where you want the recipient's email, as entered in the recipient information, to display.
    attr_accessor :email_address_tabs

    # Specifies a tag on the document where you want the recipient to enter an email. Email tags are single-line fields that accept any characters. The system checks that a valid email format (i.e. xxx@yyy.zzz) is entered in the tag. It uses the same parameters as a Text tab, with the validation message and pattern set for email information.  When getting information that includes this tab type, the original value of the tab when the associated envelope was sent is included in the response.
    attr_accessor :email_tabs

    # Specifies a tag on the document where you want the envelope ID for to appear. Recipients cannot enter or change the information in this tab, it is for informational purposes only.
    attr_accessor :envelope_id_tabs

    # Specifies tag on a document where you want the recipient's first name to appear. This tag takes the recipient's name, as entered in the recipient information, splits it into sections based on spaces and uses the first section as the first name.
    attr_accessor :first_name_tabs

    # Specifies a tag that is used to add a calculated field to a document. Envelope recipients cannot directly enter information into the tag; the formula tab calculates and displays a new value when changes are made to the reference tag values. The reference tag information and calculation operations are entered in the \"formula\" element. See the [ML:Using the Calculated Fields Feature] quick start guide or [ML:DocuSign Service User Guide] for more information about formulas.
    attr_accessor :formula_tabs

    # Specifies a tag on the document where you want the recipient's name to appear.
    attr_accessor :full_name_tabs

    # Specifies a tag location in the document at which a recipient will place their initials. The `optional` parameter specifies whether the initials are required or optional.
    attr_accessor :initial_here_tabs

    # Specifies a tag on a document where you want the recipient's last name to appear. This tag takes the recipient's name, as entered in the recipient information, splits it into sections based on spaces and uses the last section as the last name.
    attr_accessor :last_name_tabs

    # Specify this tag to give your recipient a list of options, presented as a drop-down list, from which they can select.
    attr_accessor :list_tabs

    # 
    attr_accessor :notarize_tabs

    # Specifies a location on the document where you want to place additional information, in the form of a note, for a recipient.
    attr_accessor :note_tabs

    # Specifies a tag on the document where you want the recipient to enter a number. It uses the same parameters as a Text tab, with the validation message and pattern set for number information.  When getting information that includes this tab type, the original value of the tab when the associated envelope was sent is included in the response. 
    attr_accessor :number_tabs

    # 
    attr_accessor :poly_line_overlay_tabs

    # Specifies a tag on the document in a location where the recipient can select one option from a group of options using a radio button. The radio buttons do not have to be on the same page in a document.
    attr_accessor :radio_group_tabs

    # Specifies a tag on the document when you want the recipient to add supporting documents to an envelope.
    attr_accessor :signer_attachment_tabs

    # A complex type the contains information about the tag that specifies where the recipient places their signature in the document. The \"optional\" parameter sets if the signature is required or optional. 
    attr_accessor :sign_here_tabs

    # 
    attr_accessor :smart_section_tabs

    # Specifies a tag on the document where you want the recipient to enter a Social Security Number (SSN). A SSN can be typed with or without dashes. It uses the same parameters as a Text tab, with the validation message and pattern set for SSN information.  When getting information that includes this tab type, the original value of the tab when the associated envelope was sent is included in the response.
    attr_accessor :ssn_tabs

    # 
    attr_accessor :tab_groups

    # Specifies a that that is an adaptable field that allows the recipient to enter different text information.  When getting information that includes this tab type, the original value of the tab when the associated envelope was sent is included in the response.
    attr_accessor :text_tabs

    # Specifies a tag on the document where you want the recipient's title to appear.  When getting information that includes this tab type, the original value of the tab when the associated envelope was sent is included in the response.
    attr_accessor :title_tabs

    # 
    attr_accessor :view_tabs

    # Specifies a tag on the document where you want the recipient to enter a ZIP code. The ZIP code can be a five numbers or the ZIP+4 format with nine numbers. The zip code can be typed with or without dashes. It uses the same parameters as a Text tab, with the validation message and pattern set for ZIP code information.  When getting information that includes this tab type, the original value of the tab when the associated envelope was sent is included in the response.
    attr_accessor :zip_tabs


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'approve_tabs' => :'approveTabs',
        :'checkbox_tabs' => :'checkboxTabs',
        :'comment_thread_tabs' => :'commentThreadTabs',
        :'company_tabs' => :'companyTabs',
        :'date_signed_tabs' => :'dateSignedTabs',
        :'date_tabs' => :'dateTabs',
        :'decline_tabs' => :'declineTabs',
<<<<<<< HEAD
        :'draw_tabs' => :'drawTabs',
=======
>>>>>>> 21be361feb7dcf8e34f4d3df2412dedff41c20d5
        :'email_address_tabs' => :'emailAddressTabs',
        :'email_tabs' => :'emailTabs',
        :'envelope_id_tabs' => :'envelopeIdTabs',
        :'first_name_tabs' => :'firstNameTabs',
        :'formula_tabs' => :'formulaTabs',
        :'full_name_tabs' => :'fullNameTabs',
        :'initial_here_tabs' => :'initialHereTabs',
        :'last_name_tabs' => :'lastNameTabs',
        :'list_tabs' => :'listTabs',
        :'notarize_tabs' => :'notarizeTabs',
        :'note_tabs' => :'noteTabs',
        :'number_tabs' => :'numberTabs',
        :'poly_line_overlay_tabs' => :'polyLineOverlayTabs',
        :'radio_group_tabs' => :'radioGroupTabs',
        :'signer_attachment_tabs' => :'signerAttachmentTabs',
        :'sign_here_tabs' => :'signHereTabs',
        :'smart_section_tabs' => :'smartSectionTabs',
        :'ssn_tabs' => :'ssnTabs',
        :'tab_groups' => :'tabGroups',
        :'text_tabs' => :'textTabs',
        :'title_tabs' => :'titleTabs',
        :'view_tabs' => :'viewTabs',
        :'zip_tabs' => :'zipTabs'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'approve_tabs' => :'Array<Approve>',
        :'checkbox_tabs' => :'Array<Checkbox>',
        :'comment_thread_tabs' => :'Array<CommentThread>',
        :'company_tabs' => :'Array<Company>',
        :'date_signed_tabs' => :'Array<DateSigned>',
        :'date_tabs' => :'Array<DocuSign_eSign::Date>',
        :'decline_tabs' => :'Array<Decline>',
<<<<<<< HEAD
        :'draw_tabs' => :'Array<Draw>',
=======
>>>>>>> 21be361feb7dcf8e34f4d3df2412dedff41c20d5
        :'email_address_tabs' => :'Array<EmailAddress>',
        :'email_tabs' => :'Array<Email>',
        :'envelope_id_tabs' => :'Array<EnvelopeId>',
        :'first_name_tabs' => :'Array<FirstName>',
        :'formula_tabs' => :'Array<FormulaTab>',
        :'full_name_tabs' => :'Array<FullName>',
        :'initial_here_tabs' => :'Array<InitialHere>',
        :'last_name_tabs' => :'Array<LastName>',
        :'list_tabs' => :'Array<Array>',
        :'notarize_tabs' => :'Array<Notarize>',
        :'note_tabs' => :'Array<Note>',
        :'number_tabs' => :'Array<Number>',
        :'poly_line_overlay_tabs' => :'Array<PolyLineOverlay>',
        :'radio_group_tabs' => :'Array<RadioGroup>',
        :'signer_attachment_tabs' => :'Array<SignerAttachment>',
        :'sign_here_tabs' => :'Array<SignHere>',
        :'smart_section_tabs' => :'Array<SmartSection>',
        :'ssn_tabs' => :'Array<Ssn>',
        :'tab_groups' => :'Array<TabGroup>',
        :'text_tabs' => :'Array<Text>',
        :'title_tabs' => :'Array<Title>',
        :'view_tabs' => :'Array<View>',
        :'zip_tabs' => :'Array<Zip>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'approveTabs')
        if (value = attributes[:'approveTabs']).is_a?(Array)
          self.approve_tabs = value
        end
      end

      if attributes.has_key?(:'checkboxTabs')
        if (value = attributes[:'checkboxTabs']).is_a?(Array)
          self.checkbox_tabs = value
        end
      end

      if attributes.has_key?(:'commentThreadTabs')
        if (value = attributes[:'commentThreadTabs']).is_a?(Array)
          self.comment_thread_tabs = value
        end
      end

      if attributes.has_key?(:'companyTabs')
        if (value = attributes[:'companyTabs']).is_a?(Array)
          self.company_tabs = value
        end
      end

      if attributes.has_key?(:'dateSignedTabs')
        if (value = attributes[:'dateSignedTabs']).is_a?(Array)
          self.date_signed_tabs = value
        end
      end

      if attributes.has_key?(:'dateTabs')
        if (value = attributes[:'dateTabs']).is_a?(Array)
          self.date_tabs = value
        end
      end

      if attributes.has_key?(:'declineTabs')
        if (value = attributes[:'declineTabs']).is_a?(Array)
          self.decline_tabs = value
        end
      end

<<<<<<< HEAD
      if attributes.has_key?(:'drawTabs')
        if (value = attributes[:'drawTabs']).is_a?(Array)
          self.draw_tabs = value
        end
      end

=======
>>>>>>> 21be361feb7dcf8e34f4d3df2412dedff41c20d5
      if attributes.has_key?(:'emailAddressTabs')
        if (value = attributes[:'emailAddressTabs']).is_a?(Array)
          self.email_address_tabs = value
        end
      end

      if attributes.has_key?(:'emailTabs')
        if (value = attributes[:'emailTabs']).is_a?(Array)
          self.email_tabs = value
        end
      end

      if attributes.has_key?(:'envelopeIdTabs')
        if (value = attributes[:'envelopeIdTabs']).is_a?(Array)
          self.envelope_id_tabs = value
        end
      end

      if attributes.has_key?(:'firstNameTabs')
        if (value = attributes[:'firstNameTabs']).is_a?(Array)
          self.first_name_tabs = value
        end
      end

      if attributes.has_key?(:'formulaTabs')
        if (value = attributes[:'formulaTabs']).is_a?(Array)
          self.formula_tabs = value
        end
      end

      if attributes.has_key?(:'fullNameTabs')
        if (value = attributes[:'fullNameTabs']).is_a?(Array)
          self.full_name_tabs = value
        end
      end

      if attributes.has_key?(:'initialHereTabs')
        if (value = attributes[:'initialHereTabs']).is_a?(Array)
          self.initial_here_tabs = value
        end
      end

      if attributes.has_key?(:'lastNameTabs')
        if (value = attributes[:'lastNameTabs']).is_a?(Array)
          self.last_name_tabs = value
        end
      end

      if attributes.has_key?(:'listTabs')
        if (value = attributes[:'listTabs']).is_a?(Array)
          self.list_tabs = value
        end
      end

      if attributes.has_key?(:'notarizeTabs')
        if (value = attributes[:'notarizeTabs']).is_a?(Array)
          self.notarize_tabs = value
        end
      end

      if attributes.has_key?(:'noteTabs')
        if (value = attributes[:'noteTabs']).is_a?(Array)
          self.note_tabs = value
        end
      end

      if attributes.has_key?(:'numberTabs')
        if (value = attributes[:'numberTabs']).is_a?(Array)
          self.number_tabs = value
        end
      end

      if attributes.has_key?(:'polyLineOverlayTabs')
        if (value = attributes[:'polyLineOverlayTabs']).is_a?(Array)
          self.poly_line_overlay_tabs = value
        end
      end

      if attributes.has_key?(:'radioGroupTabs')
        if (value = attributes[:'radioGroupTabs']).is_a?(Array)
          self.radio_group_tabs = value
        end
      end

      if attributes.has_key?(:'signerAttachmentTabs')
        if (value = attributes[:'signerAttachmentTabs']).is_a?(Array)
          self.signer_attachment_tabs = value
        end
      end

      if attributes.has_key?(:'signHereTabs')
        if (value = attributes[:'signHereTabs']).is_a?(Array)
          self.sign_here_tabs = value
        end
      end

      if attributes.has_key?(:'smartSectionTabs')
        if (value = attributes[:'smartSectionTabs']).is_a?(Array)
          self.smart_section_tabs = value
        end
      end

      if attributes.has_key?(:'ssnTabs')
        if (value = attributes[:'ssnTabs']).is_a?(Array)
          self.ssn_tabs = value
        end
      end

      if attributes.has_key?(:'tabGroups')
        if (value = attributes[:'tabGroups']).is_a?(Array)
          self.tab_groups = value
        end
      end

      if attributes.has_key?(:'textTabs')
        if (value = attributes[:'textTabs']).is_a?(Array)
          self.text_tabs = value
        end
      end

      if attributes.has_key?(:'titleTabs')
        if (value = attributes[:'titleTabs']).is_a?(Array)
          self.title_tabs = value
        end
      end

      if attributes.has_key?(:'viewTabs')
        if (value = attributes[:'viewTabs']).is_a?(Array)
          self.view_tabs = value
        end
      end

      if attributes.has_key?(:'zipTabs')
        if (value = attributes[:'zipTabs']).is_a?(Array)
          self.zip_tabs = value
        end
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
          approve_tabs == o.approve_tabs &&
          checkbox_tabs == o.checkbox_tabs &&
          comment_thread_tabs == o.comment_thread_tabs &&
          company_tabs == o.company_tabs &&
          date_signed_tabs == o.date_signed_tabs &&
          date_tabs == o.date_tabs &&
          decline_tabs == o.decline_tabs &&
<<<<<<< HEAD
          draw_tabs == o.draw_tabs &&
=======
>>>>>>> 21be361feb7dcf8e34f4d3df2412dedff41c20d5
          email_address_tabs == o.email_address_tabs &&
          email_tabs == o.email_tabs &&
          envelope_id_tabs == o.envelope_id_tabs &&
          first_name_tabs == o.first_name_tabs &&
          formula_tabs == o.formula_tabs &&
          full_name_tabs == o.full_name_tabs &&
          initial_here_tabs == o.initial_here_tabs &&
          last_name_tabs == o.last_name_tabs &&
          list_tabs == o.list_tabs &&
          notarize_tabs == o.notarize_tabs &&
          note_tabs == o.note_tabs &&
          number_tabs == o.number_tabs &&
          poly_line_overlay_tabs == o.poly_line_overlay_tabs &&
          radio_group_tabs == o.radio_group_tabs &&
          signer_attachment_tabs == o.signer_attachment_tabs &&
          sign_here_tabs == o.sign_here_tabs &&
          smart_section_tabs == o.smart_section_tabs &&
          ssn_tabs == o.ssn_tabs &&
          tab_groups == o.tab_groups &&
          text_tabs == o.text_tabs &&
          title_tabs == o.title_tabs &&
          view_tabs == o.view_tabs &&
          zip_tabs == o.zip_tabs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
<<<<<<< HEAD
      [approve_tabs, checkbox_tabs, comment_thread_tabs, company_tabs, date_signed_tabs, date_tabs, decline_tabs, draw_tabs, email_address_tabs, email_tabs, envelope_id_tabs, first_name_tabs, formula_tabs, full_name_tabs, initial_here_tabs, last_name_tabs, list_tabs, notarize_tabs, note_tabs, number_tabs, poly_line_overlay_tabs, radio_group_tabs, signer_attachment_tabs, sign_here_tabs, smart_section_tabs, ssn_tabs, tab_groups, text_tabs, title_tabs, view_tabs, zip_tabs].hash
=======
      [approve_tabs, checkbox_tabs, comment_thread_tabs, company_tabs, date_signed_tabs, date_tabs, decline_tabs, email_address_tabs, email_tabs, envelope_id_tabs, first_name_tabs, formula_tabs, full_name_tabs, initial_here_tabs, last_name_tabs, list_tabs, notarize_tabs, note_tabs, number_tabs, poly_line_overlay_tabs, radio_group_tabs, signer_attachment_tabs, sign_here_tabs, smart_section_tabs, ssn_tabs, tab_groups, text_tabs, title_tabs, view_tabs, zip_tabs].hash
>>>>>>> 21be361feb7dcf8e34f4d3df2412dedff41c20d5
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
