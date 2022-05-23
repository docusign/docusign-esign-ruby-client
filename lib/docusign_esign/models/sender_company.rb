=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class SenderCompany
    # 
    attr_accessor :anchor_allow_white_space_in_characters

    attr_accessor :anchor_allow_white_space_in_characters_metadata

    # When set to **true**, the anchor string does not consider case when matching strings in the document. The default value is **true**.
    attr_accessor :anchor_case_sensitive

    attr_accessor :anchor_case_sensitive_metadata

    # Specifies the alignment of anchor tabs with anchor strings. Possible values are **left** or **right**. The default value is **left**.
    attr_accessor :anchor_horizontal_alignment

    attr_accessor :anchor_horizontal_alignment_metadata

    # When set to **true**, this tab is ignored if anchorString is not found in the document.
    attr_accessor :anchor_ignore_if_not_present

    attr_accessor :anchor_ignore_if_not_present_metadata

    # When set to **true**, the anchor string in this tab matches whole words only (strings embedded in other strings are ignored.) The default value is **true**.
    attr_accessor :anchor_match_whole_word

    attr_accessor :anchor_match_whole_word_metadata

    # Anchor text information for a radio button.
    attr_accessor :anchor_string

    attr_accessor :anchor_string_metadata

    # 
    attr_accessor :anchor_tab_processor_version

    attr_accessor :anchor_tab_processor_version_metadata

    # Specifies units of the X and Y offset. Units could be pixels, millimeters, centimeters, or inches.
    attr_accessor :anchor_units

    attr_accessor :anchor_units_metadata

    # Specifies the X axis location of the tab, in anchorUnits, relative to the anchorString.
    attr_accessor :anchor_x_offset

    attr_accessor :anchor_x_offset_metadata

    # Specifies the Y axis location of the tab, in anchorUnits, relative to the anchorString.
    attr_accessor :anchor_y_offset

    attr_accessor :anchor_y_offset_metadata

    # When set to **true**, the information in the tab is bold.
    attr_accessor :bold

    attr_accessor :bold_metadata

    # 
    attr_accessor :caption

    attr_accessor :caption_metadata

    # For conditional fields this is the TabLabel of the parent tab that controls this tab's visibility.
    attr_accessor :conditional_parent_label

    attr_accessor :conditional_parent_label_metadata

    # For conditional fields, this is the value of the parent tab that controls the tab's visibility.  If the parent tab is a Checkbox, Radio button, Optional Signature, or Optional Initial use \"on\" as the value to show that the parent tab is active. 
    attr_accessor :conditional_parent_value

    attr_accessor :conditional_parent_value_metadata

    # The DocuSign generated custom tab ID for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties.
    attr_accessor :custom_tab_id

    attr_accessor :custom_tab_id_metadata

    # Specifies the document ID number that the tab is placed on. This must refer to an existing Document's ID attribute.
    attr_accessor :document_id

    attr_accessor :document_id_metadata

    attr_accessor :error_details

    # The font to be used for the tab value. Supported Fonts: Arial, Arial, ArialNarrow, Calibri, CourierNew, Garamond, Georgia, Helvetica,   LucidaConsole, Tahoma, TimesNewRoman, Trebuchet, Verdana, MSGothic, MSMincho, Default.
    attr_accessor :font

    # The font color used for the information in the tab.  Possible values are: Black, BrightBlue, BrightRed, DarkGreen, DarkRed, Gold, Green, NavyBlue, Purple, or White.
    attr_accessor :font_color

    attr_accessor :font_color_metadata

    attr_accessor :font_metadata

    # The font size used for the information in the tab.  Possible values are: Size7, Size8, Size9, Size10, Size11, Size12, Size14, Size16, Size18, Size20, Size22, Size24, Size26, Size28, Size36, Size48, or Size72.
    attr_accessor :font_size

    attr_accessor :font_size_metadata

    # 
    attr_accessor :form_order

    attr_accessor :form_order_metadata

    # 
    attr_accessor :form_page_label

    attr_accessor :form_page_label_metadata

    # 
    attr_accessor :form_page_number

    attr_accessor :form_page_number_metadata

    # Height of the tab in pixels.
    attr_accessor :height

    attr_accessor :height_metadata

    # When set to **true**, the information in the tab is italic.
    attr_accessor :italic

    attr_accessor :italic_metadata

    attr_accessor :locale_policy

    attr_accessor :merge_field

    # 
    attr_accessor :merge_field_xml

    # 
    attr_accessor :name

    attr_accessor :name_metadata

    # Specifies the page number on which the tab is located.
    attr_accessor :page_number

    attr_accessor :page_number_metadata

    # Unique for the recipient. It is used by the tab element to indicate which recipient is to sign the Document.
    attr_accessor :recipient_id

    # 
    attr_accessor :recipient_id_guid

    attr_accessor :recipient_id_guid_metadata

    attr_accessor :recipient_id_metadata

    attr_accessor :smart_contract_information

    # 
    attr_accessor :source

    # Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later.
    attr_accessor :status

    attr_accessor :status_metadata

    # 
    attr_accessor :tab_group_labels

    attr_accessor :tab_group_labels_metadata

    # The unique identifier for the tab. The tabid can be retrieved with the [ML:GET call].     
    attr_accessor :tab_id

    attr_accessor :tab_id_metadata

    # The label string associated with the tab.
    attr_accessor :tab_label

    attr_accessor :tab_label_metadata

    # 
    attr_accessor :tab_order

    attr_accessor :tab_order_metadata

    # 
    attr_accessor :tab_type

    attr_accessor :tab_type_metadata

    # When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients. 
    attr_accessor :template_locked

    attr_accessor :template_locked_metadata

    # When set to **true**, the sender may not remove the recipient. Used only when working with template recipients.
    attr_accessor :template_required

    attr_accessor :template_required_metadata

    # 
    attr_accessor :tooltip

    attr_accessor :tool_tip_metadata

    # When set to **true**, the information in the tab is underlined.
    attr_accessor :underline

    attr_accessor :underline_metadata

    # Specifies the value of the tab. 
    attr_accessor :value

    attr_accessor :value_metadata

    # Width of the tab in pixels.
    attr_accessor :width

    attr_accessor :width_metadata

    # This indicates the horizontal offset of the object on the page. DocuSign uses 72 DPI when determining position.
    attr_accessor :x_position

    attr_accessor :x_position_metadata

    # This indicates the vertical offset of the object on the page. DocuSign uses 72 DPI when determining position.
    attr_accessor :y_position

    attr_accessor :y_position_metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'anchor_allow_white_space_in_characters' => :'anchorAllowWhiteSpaceInCharacters',
        :'anchor_allow_white_space_in_characters_metadata' => :'anchorAllowWhiteSpaceInCharactersMetadata',
        :'anchor_case_sensitive' => :'anchorCaseSensitive',
        :'anchor_case_sensitive_metadata' => :'anchorCaseSensitiveMetadata',
        :'anchor_horizontal_alignment' => :'anchorHorizontalAlignment',
        :'anchor_horizontal_alignment_metadata' => :'anchorHorizontalAlignmentMetadata',
        :'anchor_ignore_if_not_present' => :'anchorIgnoreIfNotPresent',
        :'anchor_ignore_if_not_present_metadata' => :'anchorIgnoreIfNotPresentMetadata',
        :'anchor_match_whole_word' => :'anchorMatchWholeWord',
        :'anchor_match_whole_word_metadata' => :'anchorMatchWholeWordMetadata',
        :'anchor_string' => :'anchorString',
        :'anchor_string_metadata' => :'anchorStringMetadata',
        :'anchor_tab_processor_version' => :'anchorTabProcessorVersion',
        :'anchor_tab_processor_version_metadata' => :'anchorTabProcessorVersionMetadata',
        :'anchor_units' => :'anchorUnits',
        :'anchor_units_metadata' => :'anchorUnitsMetadata',
        :'anchor_x_offset' => :'anchorXOffset',
        :'anchor_x_offset_metadata' => :'anchorXOffsetMetadata',
        :'anchor_y_offset' => :'anchorYOffset',
        :'anchor_y_offset_metadata' => :'anchorYOffsetMetadata',
        :'bold' => :'bold',
        :'bold_metadata' => :'boldMetadata',
        :'caption' => :'caption',
        :'caption_metadata' => :'captionMetadata',
        :'conditional_parent_label' => :'conditionalParentLabel',
        :'conditional_parent_label_metadata' => :'conditionalParentLabelMetadata',
        :'conditional_parent_value' => :'conditionalParentValue',
        :'conditional_parent_value_metadata' => :'conditionalParentValueMetadata',
        :'custom_tab_id' => :'customTabId',
        :'custom_tab_id_metadata' => :'customTabIdMetadata',
        :'document_id' => :'documentId',
        :'document_id_metadata' => :'documentIdMetadata',
        :'error_details' => :'errorDetails',
        :'font' => :'font',
        :'font_color' => :'fontColor',
        :'font_color_metadata' => :'fontColorMetadata',
        :'font_metadata' => :'fontMetadata',
        :'font_size' => :'fontSize',
        :'font_size_metadata' => :'fontSizeMetadata',
        :'form_order' => :'formOrder',
        :'form_order_metadata' => :'formOrderMetadata',
        :'form_page_label' => :'formPageLabel',
        :'form_page_label_metadata' => :'formPageLabelMetadata',
        :'form_page_number' => :'formPageNumber',
        :'form_page_number_metadata' => :'formPageNumberMetadata',
        :'height' => :'height',
        :'height_metadata' => :'heightMetadata',
        :'italic' => :'italic',
        :'italic_metadata' => :'italicMetadata',
        :'locale_policy' => :'localePolicy',
        :'merge_field' => :'mergeField',
        :'merge_field_xml' => :'mergeFieldXml',
        :'name' => :'name',
        :'name_metadata' => :'nameMetadata',
        :'page_number' => :'pageNumber',
        :'page_number_metadata' => :'pageNumberMetadata',
        :'recipient_id' => :'recipientId',
        :'recipient_id_guid' => :'recipientIdGuid',
        :'recipient_id_guid_metadata' => :'recipientIdGuidMetadata',
        :'recipient_id_metadata' => :'recipientIdMetadata',
        :'smart_contract_information' => :'smartContractInformation',
        :'source' => :'source',
        :'status' => :'status',
        :'status_metadata' => :'statusMetadata',
        :'tab_group_labels' => :'tabGroupLabels',
        :'tab_group_labels_metadata' => :'tabGroupLabelsMetadata',
        :'tab_id' => :'tabId',
        :'tab_id_metadata' => :'tabIdMetadata',
        :'tab_label' => :'tabLabel',
        :'tab_label_metadata' => :'tabLabelMetadata',
        :'tab_order' => :'tabOrder',
        :'tab_order_metadata' => :'tabOrderMetadata',
        :'tab_type' => :'tabType',
        :'tab_type_metadata' => :'tabTypeMetadata',
        :'template_locked' => :'templateLocked',
        :'template_locked_metadata' => :'templateLockedMetadata',
        :'template_required' => :'templateRequired',
        :'template_required_metadata' => :'templateRequiredMetadata',
        :'tooltip' => :'tooltip',
        :'tool_tip_metadata' => :'toolTipMetadata',
        :'underline' => :'underline',
        :'underline_metadata' => :'underlineMetadata',
        :'value' => :'value',
        :'value_metadata' => :'valueMetadata',
        :'width' => :'width',
        :'width_metadata' => :'widthMetadata',
        :'x_position' => :'xPosition',
        :'x_position_metadata' => :'xPositionMetadata',
        :'y_position' => :'yPosition',
        :'y_position_metadata' => :'yPositionMetadata'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'anchor_allow_white_space_in_characters' => :'String',
        :'anchor_allow_white_space_in_characters_metadata' => :'PropertyMetadata',
        :'anchor_case_sensitive' => :'String',
        :'anchor_case_sensitive_metadata' => :'PropertyMetadata',
        :'anchor_horizontal_alignment' => :'String',
        :'anchor_horizontal_alignment_metadata' => :'PropertyMetadata',
        :'anchor_ignore_if_not_present' => :'String',
        :'anchor_ignore_if_not_present_metadata' => :'PropertyMetadata',
        :'anchor_match_whole_word' => :'String',
        :'anchor_match_whole_word_metadata' => :'PropertyMetadata',
        :'anchor_string' => :'String',
        :'anchor_string_metadata' => :'PropertyMetadata',
        :'anchor_tab_processor_version' => :'String',
        :'anchor_tab_processor_version_metadata' => :'PropertyMetadata',
        :'anchor_units' => :'String',
        :'anchor_units_metadata' => :'PropertyMetadata',
        :'anchor_x_offset' => :'String',
        :'anchor_x_offset_metadata' => :'PropertyMetadata',
        :'anchor_y_offset' => :'String',
        :'anchor_y_offset_metadata' => :'PropertyMetadata',
        :'bold' => :'String',
        :'bold_metadata' => :'PropertyMetadata',
        :'caption' => :'String',
        :'caption_metadata' => :'PropertyMetadata',
        :'conditional_parent_label' => :'String',
        :'conditional_parent_label_metadata' => :'PropertyMetadata',
        :'conditional_parent_value' => :'String',
        :'conditional_parent_value_metadata' => :'PropertyMetadata',
        :'custom_tab_id' => :'String',
        :'custom_tab_id_metadata' => :'PropertyMetadata',
        :'document_id' => :'String',
        :'document_id_metadata' => :'PropertyMetadata',
        :'error_details' => :'ErrorDetails',
        :'font' => :'String',
        :'font_color' => :'String',
        :'font_color_metadata' => :'PropertyMetadata',
        :'font_metadata' => :'PropertyMetadata',
        :'font_size' => :'String',
        :'font_size_metadata' => :'PropertyMetadata',
        :'form_order' => :'String',
        :'form_order_metadata' => :'PropertyMetadata',
        :'form_page_label' => :'String',
        :'form_page_label_metadata' => :'PropertyMetadata',
        :'form_page_number' => :'String',
        :'form_page_number_metadata' => :'PropertyMetadata',
        :'height' => :'String',
        :'height_metadata' => :'PropertyMetadata',
        :'italic' => :'String',
        :'italic_metadata' => :'PropertyMetadata',
        :'locale_policy' => :'LocalePolicyTab',
        :'merge_field' => :'MergeField',
        :'merge_field_xml' => :'String',
        :'name' => :'String',
        :'name_metadata' => :'PropertyMetadata',
        :'page_number' => :'String',
        :'page_number_metadata' => :'PropertyMetadata',
        :'recipient_id' => :'String',
        :'recipient_id_guid' => :'String',
        :'recipient_id_guid_metadata' => :'PropertyMetadata',
        :'recipient_id_metadata' => :'PropertyMetadata',
        :'smart_contract_information' => :'SmartContractInformation',
        :'source' => :'String',
        :'status' => :'String',
        :'status_metadata' => :'PropertyMetadata',
        :'tab_group_labels' => :'Array<String>',
        :'tab_group_labels_metadata' => :'PropertyMetadata',
        :'tab_id' => :'String',
        :'tab_id_metadata' => :'PropertyMetadata',
        :'tab_label' => :'String',
        :'tab_label_metadata' => :'PropertyMetadata',
        :'tab_order' => :'String',
        :'tab_order_metadata' => :'PropertyMetadata',
        :'tab_type' => :'String',
        :'tab_type_metadata' => :'PropertyMetadata',
        :'template_locked' => :'String',
        :'template_locked_metadata' => :'PropertyMetadata',
        :'template_required' => :'String',
        :'template_required_metadata' => :'PropertyMetadata',
        :'tooltip' => :'String',
        :'tool_tip_metadata' => :'PropertyMetadata',
        :'underline' => :'String',
        :'underline_metadata' => :'PropertyMetadata',
        :'value' => :'String',
        :'value_metadata' => :'PropertyMetadata',
        :'width' => :'String',
        :'width_metadata' => :'PropertyMetadata',
        :'x_position' => :'String',
        :'x_position_metadata' => :'PropertyMetadata',
        :'y_position' => :'String',
        :'y_position_metadata' => :'PropertyMetadata'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'anchorAllowWhiteSpaceInCharacters')
        self.anchor_allow_white_space_in_characters = attributes[:'anchorAllowWhiteSpaceInCharacters']
      end

      if attributes.has_key?(:'anchorAllowWhiteSpaceInCharactersMetadata')
        self.anchor_allow_white_space_in_characters_metadata = attributes[:'anchorAllowWhiteSpaceInCharactersMetadata']
      end

      if attributes.has_key?(:'anchorCaseSensitive')
        self.anchor_case_sensitive = attributes[:'anchorCaseSensitive']
      end

      if attributes.has_key?(:'anchorCaseSensitiveMetadata')
        self.anchor_case_sensitive_metadata = attributes[:'anchorCaseSensitiveMetadata']
      end

      if attributes.has_key?(:'anchorHorizontalAlignment')
        self.anchor_horizontal_alignment = attributes[:'anchorHorizontalAlignment']
      end

      if attributes.has_key?(:'anchorHorizontalAlignmentMetadata')
        self.anchor_horizontal_alignment_metadata = attributes[:'anchorHorizontalAlignmentMetadata']
      end

      if attributes.has_key?(:'anchorIgnoreIfNotPresent')
        self.anchor_ignore_if_not_present = attributes[:'anchorIgnoreIfNotPresent']
      end

      if attributes.has_key?(:'anchorIgnoreIfNotPresentMetadata')
        self.anchor_ignore_if_not_present_metadata = attributes[:'anchorIgnoreIfNotPresentMetadata']
      end

      if attributes.has_key?(:'anchorMatchWholeWord')
        self.anchor_match_whole_word = attributes[:'anchorMatchWholeWord']
      end

      if attributes.has_key?(:'anchorMatchWholeWordMetadata')
        self.anchor_match_whole_word_metadata = attributes[:'anchorMatchWholeWordMetadata']
      end

      if attributes.has_key?(:'anchorString')
        self.anchor_string = attributes[:'anchorString']
      end

      if attributes.has_key?(:'anchorStringMetadata')
        self.anchor_string_metadata = attributes[:'anchorStringMetadata']
      end

      if attributes.has_key?(:'anchorTabProcessorVersion')
        self.anchor_tab_processor_version = attributes[:'anchorTabProcessorVersion']
      end

      if attributes.has_key?(:'anchorTabProcessorVersionMetadata')
        self.anchor_tab_processor_version_metadata = attributes[:'anchorTabProcessorVersionMetadata']
      end

      if attributes.has_key?(:'anchorUnits')
        self.anchor_units = attributes[:'anchorUnits']
      end

      if attributes.has_key?(:'anchorUnitsMetadata')
        self.anchor_units_metadata = attributes[:'anchorUnitsMetadata']
      end

      if attributes.has_key?(:'anchorXOffset')
        self.anchor_x_offset = attributes[:'anchorXOffset']
      end

      if attributes.has_key?(:'anchorXOffsetMetadata')
        self.anchor_x_offset_metadata = attributes[:'anchorXOffsetMetadata']
      end

      if attributes.has_key?(:'anchorYOffset')
        self.anchor_y_offset = attributes[:'anchorYOffset']
      end

      if attributes.has_key?(:'anchorYOffsetMetadata')
        self.anchor_y_offset_metadata = attributes[:'anchorYOffsetMetadata']
      end

      if attributes.has_key?(:'bold')
        self.bold = attributes[:'bold']
      end

      if attributes.has_key?(:'boldMetadata')
        self.bold_metadata = attributes[:'boldMetadata']
      end

      if attributes.has_key?(:'caption')
        self.caption = attributes[:'caption']
      end

      if attributes.has_key?(:'captionMetadata')
        self.caption_metadata = attributes[:'captionMetadata']
      end

      if attributes.has_key?(:'conditionalParentLabel')
        self.conditional_parent_label = attributes[:'conditionalParentLabel']
      end

      if attributes.has_key?(:'conditionalParentLabelMetadata')
        self.conditional_parent_label_metadata = attributes[:'conditionalParentLabelMetadata']
      end

      if attributes.has_key?(:'conditionalParentValue')
        self.conditional_parent_value = attributes[:'conditionalParentValue']
      end

      if attributes.has_key?(:'conditionalParentValueMetadata')
        self.conditional_parent_value_metadata = attributes[:'conditionalParentValueMetadata']
      end

      if attributes.has_key?(:'customTabId')
        self.custom_tab_id = attributes[:'customTabId']
      end

      if attributes.has_key?(:'customTabIdMetadata')
        self.custom_tab_id_metadata = attributes[:'customTabIdMetadata']
      end

      if attributes.has_key?(:'documentId')
        self.document_id = attributes[:'documentId']
      end

      if attributes.has_key?(:'documentIdMetadata')
        self.document_id_metadata = attributes[:'documentIdMetadata']
      end

      if attributes.has_key?(:'errorDetails')
        self.error_details = attributes[:'errorDetails']
      end

      if attributes.has_key?(:'font')
        self.font = attributes[:'font']
      end

      if attributes.has_key?(:'fontColor')
        self.font_color = attributes[:'fontColor']
      end

      if attributes.has_key?(:'fontColorMetadata')
        self.font_color_metadata = attributes[:'fontColorMetadata']
      end

      if attributes.has_key?(:'fontMetadata')
        self.font_metadata = attributes[:'fontMetadata']
      end

      if attributes.has_key?(:'fontSize')
        self.font_size = attributes[:'fontSize']
      end

      if attributes.has_key?(:'fontSizeMetadata')
        self.font_size_metadata = attributes[:'fontSizeMetadata']
      end

      if attributes.has_key?(:'formOrder')
        self.form_order = attributes[:'formOrder']
      end

      if attributes.has_key?(:'formOrderMetadata')
        self.form_order_metadata = attributes[:'formOrderMetadata']
      end

      if attributes.has_key?(:'formPageLabel')
        self.form_page_label = attributes[:'formPageLabel']
      end

      if attributes.has_key?(:'formPageLabelMetadata')
        self.form_page_label_metadata = attributes[:'formPageLabelMetadata']
      end

      if attributes.has_key?(:'formPageNumber')
        self.form_page_number = attributes[:'formPageNumber']
      end

      if attributes.has_key?(:'formPageNumberMetadata')
        self.form_page_number_metadata = attributes[:'formPageNumberMetadata']
      end

      if attributes.has_key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.has_key?(:'heightMetadata')
        self.height_metadata = attributes[:'heightMetadata']
      end

      if attributes.has_key?(:'italic')
        self.italic = attributes[:'italic']
      end

      if attributes.has_key?(:'italicMetadata')
        self.italic_metadata = attributes[:'italicMetadata']
      end

      if attributes.has_key?(:'localePolicy')
        self.locale_policy = attributes[:'localePolicy']
      end

      if attributes.has_key?(:'mergeField')
        self.merge_field = attributes[:'mergeField']
      end

      if attributes.has_key?(:'mergeFieldXml')
        self.merge_field_xml = attributes[:'mergeFieldXml']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'nameMetadata')
        self.name_metadata = attributes[:'nameMetadata']
      end

      if attributes.has_key?(:'pageNumber')
        self.page_number = attributes[:'pageNumber']
      end

      if attributes.has_key?(:'pageNumberMetadata')
        self.page_number_metadata = attributes[:'pageNumberMetadata']
      end

      if attributes.has_key?(:'recipientId')
        self.recipient_id = attributes[:'recipientId']
      end

      if attributes.has_key?(:'recipientIdGuid')
        self.recipient_id_guid = attributes[:'recipientIdGuid']
      end

      if attributes.has_key?(:'recipientIdGuidMetadata')
        self.recipient_id_guid_metadata = attributes[:'recipientIdGuidMetadata']
      end

      if attributes.has_key?(:'recipientIdMetadata')
        self.recipient_id_metadata = attributes[:'recipientIdMetadata']
      end

      if attributes.has_key?(:'smartContractInformation')
        self.smart_contract_information = attributes[:'smartContractInformation']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'statusMetadata')
        self.status_metadata = attributes[:'statusMetadata']
      end

      if attributes.has_key?(:'tabGroupLabels')
        if (value = attributes[:'tabGroupLabels']).is_a?(Array)
          self.tab_group_labels = value
        end
      end

      if attributes.has_key?(:'tabGroupLabelsMetadata')
        self.tab_group_labels_metadata = attributes[:'tabGroupLabelsMetadata']
      end

      if attributes.has_key?(:'tabId')
        self.tab_id = attributes[:'tabId']
      end

      if attributes.has_key?(:'tabIdMetadata')
        self.tab_id_metadata = attributes[:'tabIdMetadata']
      end

      if attributes.has_key?(:'tabLabel')
        self.tab_label = attributes[:'tabLabel']
      end

      if attributes.has_key?(:'tabLabelMetadata')
        self.tab_label_metadata = attributes[:'tabLabelMetadata']
      end

      if attributes.has_key?(:'tabOrder')
        self.tab_order = attributes[:'tabOrder']
      end

      if attributes.has_key?(:'tabOrderMetadata')
        self.tab_order_metadata = attributes[:'tabOrderMetadata']
      end

      if attributes.has_key?(:'tabType')
        self.tab_type = attributes[:'tabType']
      end

      if attributes.has_key?(:'tabTypeMetadata')
        self.tab_type_metadata = attributes[:'tabTypeMetadata']
      end

      if attributes.has_key?(:'templateLocked')
        self.template_locked = attributes[:'templateLocked']
      end

      if attributes.has_key?(:'templateLockedMetadata')
        self.template_locked_metadata = attributes[:'templateLockedMetadata']
      end

      if attributes.has_key?(:'templateRequired')
        self.template_required = attributes[:'templateRequired']
      end

      if attributes.has_key?(:'templateRequiredMetadata')
        self.template_required_metadata = attributes[:'templateRequiredMetadata']
      end

      if attributes.has_key?(:'tooltip')
        self.tooltip = attributes[:'tooltip']
      end

      if attributes.has_key?(:'toolTipMetadata')
        self.tool_tip_metadata = attributes[:'toolTipMetadata']
      end

      if attributes.has_key?(:'underline')
        self.underline = attributes[:'underline']
      end

      if attributes.has_key?(:'underlineMetadata')
        self.underline_metadata = attributes[:'underlineMetadata']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'valueMetadata')
        self.value_metadata = attributes[:'valueMetadata']
      end

      if attributes.has_key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.has_key?(:'widthMetadata')
        self.width_metadata = attributes[:'widthMetadata']
      end

      if attributes.has_key?(:'xPosition')
        self.x_position = attributes[:'xPosition']
      end

      if attributes.has_key?(:'xPositionMetadata')
        self.x_position_metadata = attributes[:'xPositionMetadata']
      end

      if attributes.has_key?(:'yPosition')
        self.y_position = attributes[:'yPosition']
      end

      if attributes.has_key?(:'yPositionMetadata')
        self.y_position_metadata = attributes[:'yPositionMetadata']
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
          anchor_allow_white_space_in_characters == o.anchor_allow_white_space_in_characters &&
          anchor_allow_white_space_in_characters_metadata == o.anchor_allow_white_space_in_characters_metadata &&
          anchor_case_sensitive == o.anchor_case_sensitive &&
          anchor_case_sensitive_metadata == o.anchor_case_sensitive_metadata &&
          anchor_horizontal_alignment == o.anchor_horizontal_alignment &&
          anchor_horizontal_alignment_metadata == o.anchor_horizontal_alignment_metadata &&
          anchor_ignore_if_not_present == o.anchor_ignore_if_not_present &&
          anchor_ignore_if_not_present_metadata == o.anchor_ignore_if_not_present_metadata &&
          anchor_match_whole_word == o.anchor_match_whole_word &&
          anchor_match_whole_word_metadata == o.anchor_match_whole_word_metadata &&
          anchor_string == o.anchor_string &&
          anchor_string_metadata == o.anchor_string_metadata &&
          anchor_tab_processor_version == o.anchor_tab_processor_version &&
          anchor_tab_processor_version_metadata == o.anchor_tab_processor_version_metadata &&
          anchor_units == o.anchor_units &&
          anchor_units_metadata == o.anchor_units_metadata &&
          anchor_x_offset == o.anchor_x_offset &&
          anchor_x_offset_metadata == o.anchor_x_offset_metadata &&
          anchor_y_offset == o.anchor_y_offset &&
          anchor_y_offset_metadata == o.anchor_y_offset_metadata &&
          bold == o.bold &&
          bold_metadata == o.bold_metadata &&
          caption == o.caption &&
          caption_metadata == o.caption_metadata &&
          conditional_parent_label == o.conditional_parent_label &&
          conditional_parent_label_metadata == o.conditional_parent_label_metadata &&
          conditional_parent_value == o.conditional_parent_value &&
          conditional_parent_value_metadata == o.conditional_parent_value_metadata &&
          custom_tab_id == o.custom_tab_id &&
          custom_tab_id_metadata == o.custom_tab_id_metadata &&
          document_id == o.document_id &&
          document_id_metadata == o.document_id_metadata &&
          error_details == o.error_details &&
          font == o.font &&
          font_color == o.font_color &&
          font_color_metadata == o.font_color_metadata &&
          font_metadata == o.font_metadata &&
          font_size == o.font_size &&
          font_size_metadata == o.font_size_metadata &&
          form_order == o.form_order &&
          form_order_metadata == o.form_order_metadata &&
          form_page_label == o.form_page_label &&
          form_page_label_metadata == o.form_page_label_metadata &&
          form_page_number == o.form_page_number &&
          form_page_number_metadata == o.form_page_number_metadata &&
          height == o.height &&
          height_metadata == o.height_metadata &&
          italic == o.italic &&
          italic_metadata == o.italic_metadata &&
          locale_policy == o.locale_policy &&
          merge_field == o.merge_field &&
          merge_field_xml == o.merge_field_xml &&
          name == o.name &&
          name_metadata == o.name_metadata &&
          page_number == o.page_number &&
          page_number_metadata == o.page_number_metadata &&
          recipient_id == o.recipient_id &&
          recipient_id_guid == o.recipient_id_guid &&
          recipient_id_guid_metadata == o.recipient_id_guid_metadata &&
          recipient_id_metadata == o.recipient_id_metadata &&
          smart_contract_information == o.smart_contract_information &&
          source == o.source &&
          status == o.status &&
          status_metadata == o.status_metadata &&
          tab_group_labels == o.tab_group_labels &&
          tab_group_labels_metadata == o.tab_group_labels_metadata &&
          tab_id == o.tab_id &&
          tab_id_metadata == o.tab_id_metadata &&
          tab_label == o.tab_label &&
          tab_label_metadata == o.tab_label_metadata &&
          tab_order == o.tab_order &&
          tab_order_metadata == o.tab_order_metadata &&
          tab_type == o.tab_type &&
          tab_type_metadata == o.tab_type_metadata &&
          template_locked == o.template_locked &&
          template_locked_metadata == o.template_locked_metadata &&
          template_required == o.template_required &&
          template_required_metadata == o.template_required_metadata &&
          tooltip == o.tooltip &&
          tool_tip_metadata == o.tool_tip_metadata &&
          underline == o.underline &&
          underline_metadata == o.underline_metadata &&
          value == o.value &&
          value_metadata == o.value_metadata &&
          width == o.width &&
          width_metadata == o.width_metadata &&
          x_position == o.x_position &&
          x_position_metadata == o.x_position_metadata &&
          y_position == o.y_position &&
          y_position_metadata == o.y_position_metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [anchor_allow_white_space_in_characters, anchor_allow_white_space_in_characters_metadata, anchor_case_sensitive, anchor_case_sensitive_metadata, anchor_horizontal_alignment, anchor_horizontal_alignment_metadata, anchor_ignore_if_not_present, anchor_ignore_if_not_present_metadata, anchor_match_whole_word, anchor_match_whole_word_metadata, anchor_string, anchor_string_metadata, anchor_tab_processor_version, anchor_tab_processor_version_metadata, anchor_units, anchor_units_metadata, anchor_x_offset, anchor_x_offset_metadata, anchor_y_offset, anchor_y_offset_metadata, bold, bold_metadata, caption, caption_metadata, conditional_parent_label, conditional_parent_label_metadata, conditional_parent_value, conditional_parent_value_metadata, custom_tab_id, custom_tab_id_metadata, document_id, document_id_metadata, error_details, font, font_color, font_color_metadata, font_metadata, font_size, font_size_metadata, form_order, form_order_metadata, form_page_label, form_page_label_metadata, form_page_number, form_page_number_metadata, height, height_metadata, italic, italic_metadata, locale_policy, merge_field, merge_field_xml, name, name_metadata, page_number, page_number_metadata, recipient_id, recipient_id_guid, recipient_id_guid_metadata, recipient_id_metadata, smart_contract_information, source, status, status_metadata, tab_group_labels, tab_group_labels_metadata, tab_id, tab_id_metadata, tab_label, tab_label_metadata, tab_order, tab_order_metadata, tab_type, tab_type_metadata, template_locked, template_locked_metadata, template_required, template_required_metadata, tooltip, tool_tip_metadata, underline, underline_metadata, value, value_metadata, width, width_metadata, x_position, x_position_metadata, y_position, y_position_metadata].hash
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
