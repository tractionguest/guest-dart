# guest_sdk.api.GroupVisitsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroupVisit**](GroupVisitsApi.md#creategroupvisit) | **POST** /group_visits | Create a new Group Visit (Appointment)
[**deleteGroupVisit**](GroupVisitsApi.md#deletegroupvisit) | **DELETE** /group_visits/{group_visit_id} | Delete a Group Visit (Appointment)
[**getGroupVisit**](GroupVisitsApi.md#getgroupvisit) | **GET** /group_visits/{group_visit_id} | Get a Group Visit (Appointment)
[**getGroupVisits**](GroupVisitsApi.md#getgroupvisits) | **GET** /group_visits | List all Group Visits (Appointments)
[**updateGroupVisit**](GroupVisitsApi.md#updategroupvisit) | **PUT** /group_visits/{group_visit_id} | Update a Group Visit (Appointment)


# **createGroupVisit**
> GroupVisitV1 createGroupVisit(idempotencyKey, groupVisitCreateParamsV1)

Create a new Group Visit (Appointment)

Creates a `GroupVisit` (Appointment)

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = GroupVisitsApi();
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
final groupVisitCreateParamsV1 = GroupVisitCreateParamsV1(); // GroupVisitCreateParamsV1 | 

try {
    final result = api_instance.createGroupVisit(idempotencyKey, groupVisitCreateParamsV1);
    print(result);
} catch (e) {
    print('Exception when calling GroupVisitsApi->createGroupVisit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 
 **groupVisitCreateParamsV1** | [**GroupVisitCreateParamsV1**](GroupVisitCreateParamsV1.md)|  | [optional] 

### Return type

[**GroupVisitV1**](GroupVisitV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupVisit**
> deleteGroupVisit(groupVisitId, idempotencyKey)

Delete a Group Visit (Appointment)

Deletes a single instance of `GroupVisit` (Appointment).

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = GroupVisitsApi();
final groupVisitId = groupVisitId_example; // String | 
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try {
    api_instance.deleteGroupVisit(groupVisitId, idempotencyKey);
} catch (e) {
    print('Exception when calling GroupVisitsApi->deleteGroupVisit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupVisitId** | **String**|  | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupVisit**
> GroupVisitV1 getGroupVisit(groupVisitId)

Get a Group Visit (Appointment)

Gets the details of a single instance of a `GroupVisit`.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = GroupVisitsApi();
final groupVisitId = groupVisitId_example; // String | 

try {
    final result = api_instance.getGroupVisit(groupVisitId);
    print(result);
} catch (e) {
    print('Exception when calling GroupVisitsApi->getGroupVisit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupVisitId** | **String**|  | 

### Return type

[**GroupVisitV1**](GroupVisitV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupVisits**
> PaginatedGroupVisitsListV1 getGroupVisits(limit, offset, locationIds, sortWith)

List all Group Visits (Appointments)

Gets a list of all `GroupVisit` entities (Appointments).

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = GroupVisitsApi();
final limit = limit_example; // String | Limits the results to a specified number. Defaults to 50.
final offset = offset_example; // String | Offsets the results to a specified number. Defaults to 0.
final locationIds = locationIds_example; // String | A comma-separated string of locations IDs, to only show group visits (appointments) from those locations.
final sortWith = sortWith_example; // String | A combination of attribute and direction, joined with an underscore, for sorting. Valid attributes are: `created_at`, `updated_at`, `name`, and `start_time`. Valid directions are `asc` and `desc`. E.g., `name_desc`, `start_time_asc`.

try {
    final result = api_instance.getGroupVisits(limit, offset, locationIds, sortWith);
    print(result);
} catch (e) {
    print('Exception when calling GroupVisitsApi->getGroupVisits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limits the results to a specified number. Defaults to 50. | [optional] 
 **offset** | **String**| Offsets the results to a specified number. Defaults to 0. | [optional] 
 **locationIds** | **String**| A comma-separated string of locations IDs, to only show group visits (appointments) from those locations. | [optional] 
 **sortWith** | **String**| A combination of attribute and direction, joined with an underscore, for sorting. Valid attributes are: `created_at`, `updated_at`, `name`, and `start_time`. Valid directions are `asc` and `desc`. E.g., `name_desc`, `start_time_asc`. | [optional] 

### Return type

[**PaginatedGroupVisitsListV1**](PaginatedGroupVisitsListV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupVisit**
> GroupVisitV1 updateGroupVisit(groupVisitId, idempotencyKey, groupVisitUpdateParamsV1)

Update a Group Visit (Appointment)

Updates an existing `GroupVisit` (Appointment).

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = GroupVisitsApi();
final groupVisitId = groupVisitId_example; // String | 
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
final groupVisitUpdateParamsV1 = GroupVisitUpdateParamsV1(); // GroupVisitUpdateParamsV1 | 

try {
    final result = api_instance.updateGroupVisit(groupVisitId, idempotencyKey, groupVisitUpdateParamsV1);
    print(result);
} catch (e) {
    print('Exception when calling GroupVisitsApi->updateGroupVisit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupVisitId** | **String**|  | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 
 **groupVisitUpdateParamsV1** | [**GroupVisitUpdateParamsV1**](GroupVisitUpdateParamsV1.md)|  | [optional] 

### Return type

[**GroupVisitV1**](GroupVisitV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

