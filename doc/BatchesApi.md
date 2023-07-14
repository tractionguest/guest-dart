# guest_sdk.api.BatchesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchDeleteInvites**](BatchesApi.md#batchdeleteinvites) | **POST** /invites/batch_delete | Delete Multiple Invites
[**getBatch**](BatchesApi.md#getbatch) | **GET** /batches/{batch_id} | Get a BatchJob


# **batchDeleteInvites**
> BatchJobV1 batchDeleteInvites(identifierListV1)

Delete Multiple Invites

Queues up a \"delete\" background task for one or more `Invite` entities.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = BatchesApi();
final identifierListV1 = IdentifierListV1(); // IdentifierListV1 | 

try {
    final result = api_instance.batchDeleteInvites(identifierListV1);
    print(result);
} catch (e) {
    print('Exception when calling BatchesApi->batchDeleteInvites: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifierListV1** | [**IdentifierListV1**](IdentifierListV1.md)|  | [optional] 

### Return type

[**BatchJobV1**](BatchJobV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatch**
> BatchJobV1 getBatch(batchId)

Get a BatchJob

Retrieve a given `BatchJob` entity.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = BatchesApi();
final batchId = batchId_example; // String | 

try {
    final result = api_instance.getBatch(batchId);
    print(result);
} catch (e) {
    print('Exception when calling BatchesApi->getBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchId** | **String**|  | 

### Return type

[**BatchJobV1**](BatchJobV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

