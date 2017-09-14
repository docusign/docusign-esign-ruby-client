# DocuSign_eSign::UserSignatureDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**signature_font** | **String** |  | [optional] 
**signature_id** | **String** | Specifies the signature ID associated with the signature name. You can use the signature ID in the URI in place of the signature name, and the value stored in the &#x60;signatureName&#x60; property in the body is used. This allows the use of special characters (such as \&quot;&amp;\&quot;, \&quot;&lt;\&quot;, \&quot;&gt;\&quot;) in a the signature name. Note that with each update to signatures, the returned signature ID might change, so the caller will need to trigger off the signature name to get the new signature ID. | [optional] 
**signature_initials** | **String** |  | [optional] 
**signature_name** | **String** | Specifies the user signature name. | [optional] 


