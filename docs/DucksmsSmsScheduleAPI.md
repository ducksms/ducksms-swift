# DucksmsSmsScheduleAPI

All URIs are relative to *https://ducksms.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelSmsSchedule**](DucksmsSmsScheduleAPI.md#cancelsmsschedule) | **DELETE** /api/v1/sms/scheduled/{id} | Cancel Sms Schedule
[**listSmsSchedule**](DucksmsSmsScheduleAPI.md#listsmsschedule) | **GET** /api/v1/sms/scheduled | List Sms Schedule


# **cancelSmsSchedule**
```swift
    open class func cancelSmsSchedule(id: String, completion: @escaping (_ data: CancelSmsSchedule?, _ error: Error?) -> Void)
```

Cancel Sms Schedule

Cancel existing sms schedule

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Ducksms

let id = "id_example" // String | 

// Cancel Sms Schedule
DucksmsSmsScheduleAPI.cancelSmsSchedule(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**CancelSmsSchedule**](CancelSmsSchedule.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSmsSchedule**
```swift
    open class func listSmsSchedule(page: Int? = nil, filterSenderName: String? = nil, filterType: FilterType_listSmsSchedule? = nil, filterMessageType: FilterMessageType_listSmsSchedule? = nil, filterStatus: FilterStatus_listSmsSchedule? = nil, completion: @escaping (_ data: ListSmsSchedule?, _ error: Error?) -> Void)
```

List Sms Schedule

List all the sms schedule

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Ducksms

let page = 987 // Int | Page number (optional)
let filterSenderName = "filterSenderName_example" // String | Filter by sender id name (optional)
let filterType = "filterType_example" // String | Filter by sms type (optional)
let filterMessageType = "filterMessageType_example" // String | Filter by sms message type (optional)
let filterStatus = "filterStatus_example" // String | Filter by sms status (optional)

// List Sms Schedule
DucksmsSmsScheduleAPI.listSmsSchedule(page: page, filterSenderName: filterSenderName, filterType: filterType, filterMessageType: filterMessageType, filterStatus: filterStatus) { (response, error) in
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
 **page** | **Int** | Page number | [optional] 
 **filterSenderName** | **String** | Filter by sender id name | [optional] 
 **filterType** | **String** | Filter by sms type | [optional] 
 **filterMessageType** | **String** | Filter by sms message type | [optional] 
 **filterStatus** | **String** | Filter by sms status | [optional] 

### Return type

[**ListSmsSchedule**](ListSmsSchedule.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

