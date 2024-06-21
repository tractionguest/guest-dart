# guest_sdk.api.HostsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createHost**](HostsApi.md#createhost) | **POST** /hosts | Create a Host
[**createHosts**](HostsApi.md#createhosts) | **POST** /hosts/batch | Create multiple Hosts
[**getHosts**](HostsApi.md#gethosts) | **GET** /hosts | List all Hosts


# **createHost**
> HostV1 createHost(hostCreateParamsV1, idempotencyKey)

Create a Host

Creates a Host

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = HostsApi();
final hostCreateParamsV1 = HostCreateParamsV1(); // HostCreateParamsV1 | 
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try {
    final result = api_instance.createHost(hostCreateParamsV1, idempotencyKey);
    print(result);
} catch (e) {
    print('Exception when calling HostsApi->createHost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hostCreateParamsV1** | [**HostCreateParamsV1**](HostCreateParamsV1.md)|  | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

[**HostV1**](HostV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHosts**
> BatchJobV1 createHosts(idempotencyKey, hostBatchCreateParamsV1)

Create multiple Hosts

Creates a batch of `Host` records in an async queue. Please note, every action taken against this endpoint is recorded in the audit log.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = HostsApi();
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
final hostBatchCreateParamsV1 = HostBatchCreateParamsV1(); // HostBatchCreateParamsV1 | 

try {
    final result = api_instance.createHosts(idempotencyKey, hostBatchCreateParamsV1);
    print(result);
} catch (e) {
    print('Exception when calling HostsApi->createHosts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 
 **hostBatchCreateParamsV1** | [**HostBatchCreateParamsV1**](HostBatchCreateParamsV1.md)|  | [optional] 

### Return type

[**BatchJobV1**](BatchJobV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHosts**
> PaginatedHostsListV1 getHosts(query, limit, offset, include)

List all Hosts

Gets a list of all `Host` entities.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = HostsApi();
final query = query_example; // String | Will filter by `first_name`, `last_name`, and `email`
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0
final include = include_example; // String | A list of comma-separated related models to include

try {
    final result = api_instance.getHosts(query, limit, offset, include);
    print(result);
} catch (e) {
    print('Exception when calling HostsApi->getHosts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Will filter by `first_name`, `last_name`, and `email` | [optional] 
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] 
 **include** | **String**| A list of comma-separated related models to include | [optional] 

### Return type

[**PaginatedHostsListV1**](PaginatedHostsListV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

