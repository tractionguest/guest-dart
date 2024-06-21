# guest_sdk.api.RegistrationsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRegistration**](RegistrationsApi.md#getregistration) | **GET** /registrations/{registration_id} | Get a Registration
[**getRegistrations**](RegistrationsApi.md#getregistrations) | **GET** /registrations | List all Registrations


# **getRegistration**
> RegistrationDetailV1 getRegistration(registrationId, include)

Get a Registration

Gets the details of a single instance of a `Registration`

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = RegistrationsApi();
final registrationId = registrationId_example; // String | 
final include = include_example; // String | A list of comma-separated related models to include

try {
    final result = api_instance.getRegistration(registrationId, include);
    print(result);
} catch (e) {
    print('Exception when calling RegistrationsApi->getRegistration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **String**|  | 
 **include** | **String**| A list of comma-separated related models to include | [optional] 

### Return type

[**RegistrationDetailV1**](RegistrationDetailV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRegistrations**
> PaginatedRegistrationsListV1 getRegistrations(limit, offset, locationIds, createdBefore, createdAfter, needsConfirmation)

List all Registrations

Gets a list of all `Registration` entities.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = RegistrationsApi();
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0
final locationIds = locationIds_example; // String | A comma separated list of Location IDs
final createdBefore = createdBefore_example; // String | Restricts results to only those that were created before the provided date
final createdAfter = createdAfter_example; // String | Restricts results to only those that were created after the provided date
final needsConfirmation = true; // bool | A confirmed `Registration` is one with an associated `Invite`. This filter returns those without an `Invite` when true, and those with an `Invite` when false.

try {
    final result = api_instance.getRegistrations(limit, offset, locationIds, createdBefore, createdAfter, needsConfirmation);
    print(result);
} catch (e) {
    print('Exception when calling RegistrationsApi->getRegistrations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] 
 **locationIds** | **String**| A comma separated list of Location IDs | [optional] 
 **createdBefore** | **String**| Restricts results to only those that were created before the provided date | [optional] 
 **createdAfter** | **String**| Restricts results to only those that were created after the provided date | [optional] 
 **needsConfirmation** | **bool**| A confirmed `Registration` is one with an associated `Invite`. This filter returns those without an `Invite` when true, and those with an `Invite` when false. | [optional] 

### Return type

[**PaginatedRegistrationsListV1**](PaginatedRegistrationsListV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

