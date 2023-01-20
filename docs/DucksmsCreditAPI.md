# DucksmsCreditAPI

All URIs are relative to *https://ducksms.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**creditBalance**](DucksmsCreditAPI.md#creditbalance) | **GET** /api/v1/credits/balance | Credit Balance
[**creditHistory**](DucksmsCreditAPI.md#credithistory) | **GET** /api/v1/credits/history | Credit History


# **creditBalance**
```swift
    open class func creditBalance(completion: @escaping (_ data: CreditBalance?, _ error: Error?) -> Void)
```

Credit Balance

Get available credit balance

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Ducksms


// Credit Balance
DucksmsCreditAPI.creditBalance() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**CreditBalance**](CreditBalance.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditHistory**
```swift
    open class func creditHistory(page: Int? = nil, filterType: FilterType_creditHistory? = nil, filterSmsSmsid: Int? = nil, completion: @escaping (_ data: CreditHistory?, _ error: Error?) -> Void)
```

Credit History

Get all credit history

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Ducksms

let page = 987 // Int | Page number (optional)
let filterType = "filterType_example" // String | Filter by credit type (optional)
let filterSmsSmsid = 987 // Int | Filter by sms id (optional)

// Credit History
DucksmsCreditAPI.creditHistory(page: page, filterType: filterType, filterSmsSmsid: filterSmsSmsid) { (response, error) in
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
 **filterType** | **String** | Filter by credit type | [optional] 
 **filterSmsSmsid** | **Int** | Filter by sms id | [optional] 

### Return type

[**CreditHistory**](CreditHistory.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

