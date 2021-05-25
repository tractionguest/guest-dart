# openapi.api.InvitesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchDeleteInvites**](InvitesApi.md#batchdeleteinvites) | **POST** /invites/batch_delete | Delete Multiple Invites
[**createLocationInvite**](InvitesApi.md#createlocationinvite) | **POST** /locations/{location_id}/invites | Create an Invite
[**createRegistrationInvite**](InvitesApi.md#createregistrationinvite) | **POST** /registrations/{registration_id}/invites | Create an Invite from a Registration
[**deleteInvite**](InvitesApi.md#deleteinvite) | **DELETE** /invites/{invite_id} | Deletes an Invite
[**getInvite**](InvitesApi.md#getinvite) | **GET** /invites/{invite_id} | Get an Invite
[**getInvites**](InvitesApi.md#getinvites) | **GET** /invites | List all Invites
[**updateInvite**](InvitesApi.md#updateinvite) | **PUT** /invites/{invite_id} | Update an Invite


# **batchDeleteInvites**
> BatchJob batchDeleteInvites(identifierList)

Delete Multiple Invites

Queues up a \"delete\" background task for one or more `Invite` entities.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = InvitesApi();
final identifierList = IdentifierList(); // IdentifierList | 

try { 
    final result = api_instance.batchDeleteInvites(identifierList);
    print(result);
} catch (e) {
    print('Exception when calling InvitesApi->batchDeleteInvites: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifierList** | [**IdentifierList**](IdentifierList.md)|  | [optional] 

### Return type

[**BatchJob**](BatchJob.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createLocationInvite**
> InviteDetail createLocationInvite(locationId, inviteCreateParams, idempotencyKey)

Create an Invite

Creates a new `Invite` for a specific `Location`.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = InvitesApi();
final locationId = locationId_example; // String | 
final inviteCreateParams = InviteCreateParams(); // InviteCreateParams | 
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    final result = api_instance.createLocationInvite(locationId, inviteCreateParams, idempotencyKey);
    print(result);
} catch (e) {
    print('Exception when calling InvitesApi->createLocationInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**|  | 
 **inviteCreateParams** | [**InviteCreateParams**](InviteCreateParams.md)|  | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRegistrationInvite**
> InviteDetail createRegistrationInvite(registrationId, idempotencyKey)

Create an Invite from a Registration

Creates a new `Invite` from `Registration` data.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = InvitesApi();
final registrationId = registrationId_example; // String | 
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    final result = api_instance.createRegistrationInvite(registrationId, idempotencyKey);
    print(result);
} catch (e) {
    print('Exception when calling InvitesApi->createRegistrationInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **String**|  | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvite**
> deleteInvite(inviteId, idempotencyKey)

Deletes an Invite

Deletes a single instance of `Invite`

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = InvitesApi();
final inviteId = inviteId_example; // String | 
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    api_instance.deleteInvite(inviteId, idempotencyKey);
} catch (e) {
    print('Exception when calling InvitesApi->deleteInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**|  | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvite**
> InviteDetail getInvite(inviteId, include)

Get an Invite

Gets the details of a single instance of a `Invite`.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = InvitesApi();
final inviteId = inviteId_example; // String | 
final include = include_example; // String | A list of comma-separated related models to include

try { 
    final result = api_instance.getInvite(inviteId, include);
    print(result);
} catch (e) {
    print('Exception when calling InvitesApi->getInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**|  | 
 **include** | **String**| A list of comma-separated related models to include | [optional] 

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvites**
> PaginatedInvitesList getInvites(limit, offset, query, withColours, locationIds, sortBy, startsBefore, startsAfter, include, isApproved, activeAfter, activeBefore)

List all Invites

Gets a list of all `Invite` entities.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = InvitesApi();
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0
final query = query_example; // String | Filters by `first_name`, `last_name`, `company`, and `email`
final withColours = withColours_example; // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
final locationIds = locationIds_example; // String | A comma separated list of Location IDs
final sortBy = sortBy_example; // String | Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION`
final startsBefore = 2013-10-20; // DateTime | Filters results to all those *before* the provided datetime
final startsAfter = 2013-10-20; // DateTime | Filters results to all those *after* the provided datetime
final include = include_example; // String | A list of comma-separated related models to include
final isApproved = true; // bool | True to return approved and auto approved invites, False to return pending and rejected invites
final activeAfter = 2013-10-20T19:20:30+01:00; // DateTime | Checks that an invite hasn't yet started, or has started and is still active after a specified time
final activeBefore = 2013-10-20T19:20:30+01:00; // DateTime | Checks that an invite hasn't ended before a specified time

try { 
    final result = api_instance.getInvites(limit, offset, query, withColours, locationIds, sortBy, startsBefore, startsAfter, include, isApproved, activeAfter, activeBefore);
    print(result);
} catch (e) {
    print('Exception when calling InvitesApi->getInvites: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] 
 **query** | **String**| Filters by `first_name`, `last_name`, `company`, and `email` | [optional] 
 **withColours** | **String**| A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` | [optional] 
 **locationIds** | **String**| A comma separated list of Location IDs | [optional] 
 **sortBy** | **String**| Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION` | [optional] 
 **startsBefore** | **DateTime**| Filters results to all those *before* the provided datetime | [optional] 
 **startsAfter** | **DateTime**| Filters results to all those *after* the provided datetime | [optional] 
 **include** | **String**| A list of comma-separated related models to include | [optional] 
 **isApproved** | **bool**| True to return approved and auto approved invites, False to return pending and rejected invites | [optional] 
 **activeAfter** | **DateTime**| Checks that an invite hasn't yet started, or has started and is still active after a specified time | [optional] 
 **activeBefore** | **DateTime**| Checks that an invite hasn't ended before a specified time | [optional] 

### Return type

[**PaginatedInvitesList**](PaginatedInvitesList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInvite**
> InviteDetail updateInvite(inviteId, inviteUpdateParams, idempotencyKey)

Update an Invite

Updates an existing `Invite`.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = InvitesApi();
final inviteId = inviteId_example; // String | 
final inviteUpdateParams = InviteUpdateParams(); // InviteUpdateParams | Updated `Invite` information.
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    final result = api_instance.updateInvite(inviteId, inviteUpdateParams, idempotencyKey);
    print(result);
} catch (e) {
    print('Exception when calling InvitesApi->updateInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**|  | 
 **inviteUpdateParams** | [**InviteUpdateParams**](InviteUpdateParams.md)| Updated `Invite` information. | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

