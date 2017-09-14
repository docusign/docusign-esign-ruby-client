# DocuSign_eSign::Recipients

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agents** | [**Array&lt;Agent&gt;**](Agent.md) | A complex type defining the management and access rights of a recipient assigned assigned as an agent on the document. | [optional] 
**carbon_copies** | [**Array&lt;CarbonCopy&gt;**](CarbonCopy.md) | A complex type containing information about recipients who should receive a copy of the envelope, but does not need to sign it. | [optional] 
**certified_deliveries** | [**Array&lt;CertifiedDelivery&gt;**](CertifiedDelivery.md) | A complex type containing information on a recipient the must receive the completed documents for the envelope to be completed, but the recipient does not need to sign, initial, date, or add information to any of the documents. | [optional] 
**current_routing_order** | **String** |  | [optional] 
**editors** | [**Array&lt;Editor&gt;**](Editor.md) | A complex type defining the management and access rights of a recipient assigned assigned as an editor on the document. | [optional] 
**error_details** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**in_person_signers** | [**Array&lt;InPersonSigner&gt;**](InPersonSigner.md) | Specifies a signer that is in the same physical location as a DocuSign user who will act as a Signing Host for the transaction. The recipient added is the Signing Host and new separate Signer Name field appears after Sign in person is selected. | [optional] 
**intermediaries** | [**Array&lt;Intermediary&gt;**](Intermediary.md) | Identifies a recipient that can, but is not required to, add name and email information for recipients at the same or subsequent level in the routing order (until subsequent Agents, Editors or Intermediaries recipient types are added). | [optional] 
**recipient_count** | **String** |  | [optional] 
**signers** | [**Array&lt;Signer&gt;**](Signer.md) | A complex type containing information about the Signer recipient. | [optional] 


