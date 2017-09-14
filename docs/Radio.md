# DocuSign_eSign::Radio

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**anchor_case_sensitive** | **String** | When set to **true**, the anchor string does not consider case when matching strings in the document. The default value is **true**. | [optional] 
**anchor_horizontal_alignment** | **String** | Specifies the alignment of anchor tabs with anchor strings. Possible values are **left** or **right**. The default value is **left**. | [optional] 
**anchor_ignore_if_not_present** | **String** | When set to **true**, this tab is ignored if anchorString is not found in the document. | [optional] 
**anchor_match_whole_word** | **String** | When set to **true**, the anchor string in this tab matches whole words only (strings embedded in other strings are ignored.) The default value is **true**. | [optional] 
**anchor_string** | **String** | Anchor text information for a radio button. | [optional] 
**anchor_units** | **String** | Specifies units of the X and Y offset. Units could be pixels, millimeters, centimeters, or inches. | [optional] 
**anchor_x_offset** | **String** | Specifies the X axis location of the tab, in achorUnits, relative to the anchorString. | [optional] 
**anchor_y_offset** | **String** | Specifies the Y axis location of the tab, in achorUnits, relative to the anchorString. | [optional] 
**error_details** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**locked** | **String** | When set to **true**, the signer cannot change the data of the custom tab. | [optional] 
**page_number** | **String** | Specifies the page number on which the tab is located. | [optional] 
**required** | **String** | When set to **true**, the signer is required to fill out this tab | [optional] 
**selected** | **String** | When set to **true**, the radio button is selected. | [optional] 
**tab_id** | **String** | The unique identifier for the tab. The tabid can be retrieved with the [ML:GET call].      | [optional] 
**tab_order** | **String** |  | [optional] 
**value** | **String** | Specifies the value of the tab.  | [optional] 
**x_position** | **String** | This indicates the horizontal offset of the object on the page. DocuSign uses 72 DPI when determining position. | [optional] 
**y_position** | **String** | This indicates the vertical offset of the object on the page. DocuSign uses 72 DPI when determining position. | [optional] 


