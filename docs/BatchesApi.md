# guest_sdk.api.BatchesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchDeleteInvites**](BatchesApi.md#batchDeleteInvites) | **POST** /invites/batch_delete | Delete Multiple Invites
[**getBatch**](BatchesApi.md#getBatch) | **GET** /batches/{batch_id} | Get a BatchJob


# **batchDeleteInvites**
> BatchJob batchDeleteInvites(identifierList)

Delete Multiple Invites

Queues up a \"delete\" background task for one or more `Invite` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new BatchesApi();
var identifierList = new IdentifierList(); // IdentifierList | 

try { 
    var result = api_instance.batchDeleteInvites(identifierList);
    print(result);
} catch (e) {
    print("Exception when calling BatchesApi->batchDeleteInvites: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifierList** | [**IdentifierList**](IdentifierList.md)|  | [optional] 

### Return type

[**BatchJob**](BatchJob.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatch**
> BatchJob getBatch(batchId)

Get a BatchJob

Retrieve a given `BatchJob` entity.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new BatchesApi();
var batchId = batchId_example; // String | 

try { 
    var result = api_instance.getBatch(batchId);
    print(result);
} catch (e) {
    print("Exception when calling BatchesApi->getBatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchId** | **String**|  | [default to null]

### Return type

[**BatchJob**](BatchJob.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

