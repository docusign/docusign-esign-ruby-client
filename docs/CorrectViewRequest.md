# DocuSign_eSign::CorrectViewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**return_url** | **String** | The url used after correct/send view session has ended. DocuSign redirects to the url and includes an event parameter that can be used by your app. The event parameters returned are:   * send (user corrected and sent the envelope) * save (user saved the envelope) * cancel (user canceled the transaction.) * error (there was an error when performing the correct or send) * sessionEnd (the session ended before the user completed a different action)  ###### Note: Include https:// in the URL or the redirect might not succeed on some browsers.  | [optional] 
**suppress_navigation** | **String** | Specifies whether the window is displayed with or without dressing. | [optional] 


