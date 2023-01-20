# DucksmsSenderIDAPI

All URIs are relative to *https://ducksms.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSender**](DucksmsSenderIDAPI.md#createsender) | **POST** /api/v1/senders | Create a Sender ID
[**deleteSender**](DucksmsSenderIDAPI.md#deletesender) | **DELETE** /api/v1/senders/{id} | Delete a Sender ID
[**getSender**](DucksmsSenderIDAPI.md#getsender) | **GET** /api/v1/senders/{id} | Get a single Sender ID
[**listSender**](DucksmsSenderIDAPI.md#listsender) | **GET** /api/v1/senders | List Sender ID
[**updateSender**](DucksmsSenderIDAPI.md#updatesender) | **POST** /api/v1/senders/{id} | Update a Sender ID


# **createSender**
```swift
    open class func createSender(sender: Sender? = nil, completion: @escaping (_ data: CreatedSender?, _ error: Error?) -> Void)
```

Create a Sender ID

Create a new sender id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Ducksms

let sender = Sender(name: "name_example", description: "description_example", _default: false, status: "status_example") // Sender | Create a new sender (optional)

// Create a Sender ID
DucksmsSenderIDAPI.createSender(sender: sender) { (response, error) in
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
 **sender** | [**Sender**](Sender.md) | Create a new sender | [optional] 

### Return type

[**CreatedSender**](CreatedSender.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSender**
```swift
    open class func deleteSender(id: String, completion: @escaping (_ data: DeletedSender?, _ error: Error?) -> Void)
```

Delete a Sender ID

Delete an existing sender id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Ducksms

let id = "id_example" // String | 

// Delete a Sender ID
DucksmsSenderIDAPI.deleteSender(id: id) { (response, error) in
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

[**DeletedSender**](DeletedSender.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSender**
```swift
    open class func getSender(id: String, completion: @escaping (_ data: GetSender?, _ error: Error?) -> Void)
```

Get a single Sender ID

Get details on a single sender id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Ducksms

let id = "id_example" // String | 

// Get a single Sender ID
DucksmsSenderIDAPI.getSender(id: id) { (response, error) in
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

[**GetSender**](GetSender.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSender**
```swift
    open class func listSender(page: Int? = nil, filterName: String? = nil, filterStatus: FilterStatus_listSender? = nil, completion: @escaping (_ data: ListSender?, _ error: Error?) -> Void)
```

List Sender ID

List all the senders

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Ducksms

let page = 987 // Int | Page number (optional)
let filterName = "filterName_example" // String | Filter by sender name (optional)
let filterStatus = "filterStatus_example" // String | Filter by sender status (optional)

// List Sender ID
DucksmsSenderIDAPI.listSender(page: page, filterName: filterName, filterStatus: filterStatus) { (response, error) in
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
 **filterName** | **String** | Filter by sender name | [optional] 
 **filterStatus** | **String** | Filter by sender status | [optional] 

### Return type

[**ListSender**](ListSender.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSender**
```swift
    open class func updateSender(id: String, sender: Sender? = nil, completion: @escaping (_ data: UpdatedSender?, _ error: Error?) -> Void)
```

Update a Sender ID

Update an existing sender id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Ducksms

let id = "id_example" // String | 
let sender = Sender(name: "name_example", description: "description_example", _default: false, status: "status_example") // Sender | Update an existing sender id (optional)

// Update a Sender ID
DucksmsSenderIDAPI.updateSender(id: id, sender: sender) { (response, error) in
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
 **sender** | [**Sender**](Sender.md) | Update an existing sender id | [optional] 

### Return type

[**UpdatedSender**](UpdatedSender.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

