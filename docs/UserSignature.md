# DocuSign_eSign::UserSignature

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**adopted_date_time** | **String** | The date and time the user adopted their signature. | [optional] 
**created_date_time** | **String** | Indicates the date and time the item was created. | [optional] 
**error_details** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**initials150_image_id** | **String** |  | [optional] 
**initials_image_uri** | **String** | Contains the URI for an endpoint that you can use to retrieve the initials image. | [optional] 
**is_default** | **String** |  | [optional] 
**signature150_image_id** | **String** |  | [optional] 
**signature_font** | **String** | The font type for the signature, if the signature is not drawn. The supported font types are:  \&quot;7_DocuSign\&quot;, \&quot;1_DocuSign\&quot;, \&quot;6_DocuSign\&quot;, \&quot;8_DocuSign\&quot;, \&quot;3_DocuSign\&quot;, \&quot;Mistral\&quot;, \&quot;4_DocuSign\&quot;, \&quot;2_DocuSign\&quot;, \&quot;5_DocuSign\&quot;, \&quot;Rage Italic\&quot;  | [optional] 
**signature_id** | **String** | Specifies the signature ID associated with the signature name. You can use the signature ID in the URI in place of the signature name, and the value stored in the &#x60;signatureName&#x60; property in the body is used. This allows the use of special characters (such as \&quot;&amp;\&quot;, \&quot;&lt;\&quot;, \&quot;&gt;\&quot;) in a the signature name. Note that with each update to signatures, the returned signature ID might change, so the caller will need to trigger off the signature name to get the new signature ID. | [optional] 
**signature_image_uri** | **String** | Contains the URI for an endpoint that you can use to retrieve the signature image. | [optional] 
**signature_initials** | **String** |  The initials associated with the signature. | [optional] 
**signature_name** | **String** | Specifies the user signature name. | [optional] 
**signature_type** | **String** |  | [optional] 


