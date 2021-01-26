# guest_sdk.api.GroupVisitsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroupVisit**](GroupVisitsApi.md#createGroupVisit) | **POST** /group_visits | Create a new Group Visit (Appointment)
[**deleteGroupVisit**](GroupVisitsApi.md#deleteGroupVisit) | **DELETE** /group_visits/{group_visit_id} | Delete a Group Visit (Appointment)
[**getGroupVisit**](GroupVisitsApi.md#getGroupVisit) | **GET** /group_visits/{group_visit_id} | Get a Group Visit (Appointment)
[**getGroupVisits**](GroupVisitsApi.md#getGroupVisits) | **GET** /group_visits | List all Group Visits (Appointments)
[**updateGroupVisit**](GroupVisitsApi.md#updateGroupVisit) | **PUT** /group_visits/{group_visit_id} | Update a Group Visit (Appointment)


# **createGroupVisit**
> GroupVisit createGroupVisit(idempotencyKey, groupVisitCreateParams)

Create a new Group Visit (Appointment)

Creates a `GroupVisit` (Appointment)

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new GroupVisitsApi();
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
var groupVisitCreateParams = new GroupVisitCreateParams(); // GroupVisitCreateParams | 

try { 
    var result = api_instance.createGroupVisit(idempotencyKey, groupVisitCreateParams);
    print(result);
} catch (e) {
    print("Exception when calling GroupVisitsApi->createGroupVisit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]
 **groupVisitCreateParams** | [**GroupVisitCreateParams**](GroupVisitCreateParams.md)|  | [optional] 

### Return type

[**GroupVisit**](GroupVisit.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

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

var api_instance = new GroupVisitsApi();
var groupVisitId = groupVisitId_example; // String | 
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    api_instance.deleteGroupVisit(groupVisitId, idempotencyKey);
} catch (e) {
    print("Exception when calling GroupVisitsApi->deleteGroupVisit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupVisitId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupVisit**
> GroupVisit getGroupVisit(groupVisitId)

Get a Group Visit (Appointment)

Gets the details of a single instance of a `GroupVisit`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new GroupVisitsApi();
var groupVisitId = groupVisitId_example; // String | 

try { 
    var result = api_instance.getGroupVisit(groupVisitId);
    print(result);
} catch (e) {
    print("Exception when calling GroupVisitsApi->getGroupVisit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupVisitId** | **String**|  | [default to null]

### Return type

[**GroupVisit**](GroupVisit.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupVisits**
> ErrorsList getGroupVisits(limit, offset, locationIds, sortWith)

List all Group Visits (Appointments)

Gets a list of all `GroupVisit` entities (Appointments).

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new GroupVisitsApi();
var limit = limit_example; // String | Limits the results to a specified number. Defaults to 50.
var offset = offset_example; // String | Offsets the results to a specified number. Defaults to 0.
var locationIds = locationIds_example; // String | A comma-separated string of locations IDs, to only show group visits (appointments) from those locations.
var sortWith = sortWith_example; // String | A combination of attribute and direction, joined with an underscore, for sorting. Valid attributes are: `created_at`, `updated_at`, `name`, and `start_time`. Valid directions are `asc` and `desc`. E.g., `name_desc`, `start_time_asc`.

try { 
    var result = api_instance.getGroupVisits(limit, offset, locationIds, sortWith);
    print(result);
} catch (e) {
    print("Exception when calling GroupVisitsApi->getGroupVisits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limits the results to a specified number. Defaults to 50. | [optional] [default to null]
 **offset** | **String**| Offsets the results to a specified number. Defaults to 0. | [optional] [default to null]
 **locationIds** | **String**| A comma-separated string of locations IDs, to only show group visits (appointments) from those locations. | [optional] [default to null]
 **sortWith** | **String**| A combination of attribute and direction, joined with an underscore, for sorting. Valid attributes are: &#x60;created_at&#x60;, &#x60;updated_at&#x60;, &#x60;name&#x60;, and &#x60;start_time&#x60;. Valid directions are &#x60;asc&#x60; and &#x60;desc&#x60;. E.g., &#x60;name_desc&#x60;, &#x60;start_time_asc&#x60;. | [optional] [default to null]

### Return type

[**ErrorsList**](ErrorsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupVisit**
> GroupVisit updateGroupVisit(groupVisitId, idempotencyKey, groupVisitUpdateParams)

Update a Group Visit (Appointment)

Updates an existing `GroupVisit` (Appointment).

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new GroupVisitsApi();
var groupVisitId = groupVisitId_example; // String | 
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
var groupVisitUpdateParams = new GroupVisitUpdateParams(); // GroupVisitUpdateParams | 

try { 
    var result = api_instance.updateGroupVisit(groupVisitId, idempotencyKey, groupVisitUpdateParams);
    print(result);
} catch (e) {
    print("Exception when calling GroupVisitsApi->updateGroupVisit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupVisitId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]
 **groupVisitUpdateParams** | [**GroupVisitUpdateParams**](GroupVisitUpdateParams.md)|  | [optional] 

### Return type

[**GroupVisit**](GroupVisit.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

