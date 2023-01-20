# DucksmsSmsAPI

All URIs are relative to *https://ducksms.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsSend**](DucksmsSmsAPI.md#smssend) | **POST** /api/v1/sms/send | Send Sms


# **smsSend**
```swift
    open class func smsSend(smsSchema: SmsSchema? = nil, completion: @escaping (_ data: PreviewSmsSend?, _ error: Error?) -> Void)
```

Send Sms

Create a new sms

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Ducksms

let smsSchema = SmsSchema(preview: "preview_example", mobileNumbers: ["mobileNumbers_example"], message: "message_example", senderId: "senderId_example", scheduledAt: "scheduledAt_example", callbackUrl: "callbackUrl_example") // SmsSchema | Create a new sms (optional)

// Send Sms
DucksmsSmsAPI.smsSend(smsSchema: smsSchema) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsSchema** | [**SmsSchema**](SmsSchema.md) | Create a new sms | [optional] 

### Return type

[**PreviewSmsSend**](PreviewSmsSend.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

