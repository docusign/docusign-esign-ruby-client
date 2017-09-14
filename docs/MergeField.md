# DocuSign_eSign::MergeField

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_sender_to_edit** | **String** | When set to **true**, the sender can modify the value of the custom tab during the sending process. | [optional] 
**configuration_type** | **String** | If merge field&#39;s are being used, specifies the type of the merge field. The only  supported value is **salesforce**. | [optional] 
**path** | **String** | Sets the object associated with the custom tab. Currently this is the Salesforce Object. | [optional] 
**row** | **String** | Specifies the row number in a Salesforce table that the merge field value corresponds to. | [optional] 
**write_back** | **String** | When wet to true, the information entered in the tab automatically updates the related Salesforce data when an envelope is completed. | [optional] 


