# DocuSign_eSign::Document

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apply_anchor_tabs** | **String** | Reserved: TBD | [optional] 
**display** | **String** |  | [optional] 
**document_base64** | **String** | The document’s bytes. This field can be used to include a base64 version of the document bytes within an envelope definition instead of sending the document using a multi-part HTTP request. The maximum document size is smaller if this field is used due to the overhead of the base64 encoding. | [optional] 
**document_fields** | [**Array&lt;NameValue&gt;**](NameValue.md) |  | [optional] 
**document_group** | **String** |  | [optional] 
**document_id** | **String** | Specifies the document ID number that the tab is placed on. This must refer to an existing Document&#39;s ID attribute. | [optional] 
**encrypted_with_key_manager** | **String** | When set to **true**, the document is been already encrypted by the sender for use with the DocuSign Key Manager Security Appliance.   | [optional] 
**file_extension** | **String** | The file extension type of the document. If the document is not a PDF it is converted to a PDF.   | [optional] 
**include_in_download** | **String** |  | [optional] 
**match_boxes** | [**Array&lt;MatchBox&gt;**](MatchBox.md) | Matchboxes define areas in a document for document matching when you are creating envelopes. They are only used when you upload and edit a template.   A matchbox consists of 5 elements:  * pageNumber - The document page number  on which the matchbox will appear.  * xPosition - The x position of the matchbox on a page.  * yPosition - The y position of the matchbox on a page. * width - The width of the matchbox.  * height - The height of the matchbox.   | [optional] 
**name** | **String** |  | [optional] 
**order** | **String** |  | [optional] 
**pages** | **String** |  | [optional] 
**password** | **String** |  | [optional] 
**remote_url** | **String** | The file id from the cloud storage service where the document is located. This information is returned using [ML:GET /folders] or [ML:/folders/{folderid}].  | [optional] 
**signer_must_acknowledge** | **String** |  | [optional] 
**template_locked** | **String** | When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients.  | [optional] 
**template_required** | **String** | When set to **true**, the sender may not remove the recipient. Used only when working with template recipients. | [optional] 
**transform_pdf_fields** | **String** | When set to **true**, PDF form field data is transformed into document tab values when the PDF form field name matches the DocuSign custom tab tabLabel. The resulting PDF form data is also returned in the PDF meta data when requesting the document PDF. See the [ML:Transform PDF Fields] section for more information about how fields are transformed into DocuSign tabs.  | [optional] 
**uri** | **String** |  | [optional] 


