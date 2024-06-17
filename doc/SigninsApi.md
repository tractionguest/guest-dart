# guest_sdk.api.SigninsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSignin**](SigninsApi.md#createsignin) | **POST** /signins | Create Signin
[**getSignin**](SigninsApi.md#getsignin) | **GET** /signins/{signin_id} | Get a Signin
[**getSignins**](SigninsApi.md#getsignins) | **GET** /signins | List all Signins
[**updateSignin**](SigninsApi.md#updatesignin) | **PUT** /signins/{signin_id} | Update a Signin


# **createSignin**
> SigninV1 createSignin(signinCreateParamsV1)

Create Signin

Creates a Signin

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = SigninsApi();
final signinCreateParamsV1 = SigninCreateParamsV1(); // SigninCreateParamsV1 | Params for creating a Signin can omit certain fields if a `registration_id` is present.

try {
    final result = api_instance.createSignin(signinCreateParamsV1);
    print(result);
} catch (e) {
    print('Exception when calling SigninsApi->createSignin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinCreateParamsV1** | [**SigninCreateParamsV1**](SigninCreateParamsV1.md)| Params for creating a Signin can omit certain fields if a `registration_id` is present. | [optional] 

### Return type

[**SigninV1**](SigninV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignin**
> SigninDetailV1 getSignin(signinId, include)

Get a Signin

Gets the details of a single instance of a `Signin`.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = SigninsApi();
final signinId = signinId_example; // String | 
final include = include_example; // String | A list of comma-separated related models to include

try {
    final result = api_instance.getSignin(signinId, include);
    print(result);
} catch (e) {
    print('Exception when calling SigninsApi->getSignin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinId** | **String**|  | 
 **include** | **String**| A list of comma-separated related models to include | [optional] 

### Return type

[**SigninDetailV1**](SigninDetailV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignins**
> PaginatedSigninsListV1 getSignins(locationIds, withColours, query, withAcknowledged, withSignedIn, signinBefore, signinAfter, limit, offset, querySort, include)

List all Signins

Gets a list of all `Signin` entities.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = SigninsApi();
final locationIds = locationIds_example; // String | A comma separated list of Location IDs
final withColours = withColours_example; // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
final query = query_example; // String | Allows you to query by `company`, `email`, `first_name`, `last_name`, and `location_name`
final withAcknowledged = true; // bool | Filters to all those `Signin`s that have, or have not been acknowledged
final withSignedIn = true; // bool | Filters to all `Signin`s that are, or are not currently signed out.
final signinBefore = 2013-10-20; // DateTime | Filters results to all those *before* the provided datetime
final signinAfter = 2013-10-20; // DateTime | Filters results to all those *after* the provided datetime
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0
final querySort = querySort_example; // String | Allows you to override ordering by most relevant results when querying
final include = include_example; // String | A list of comma-separated related models to include

try {
    final result = api_instance.getSignins(locationIds, withColours, query, withAcknowledged, withSignedIn, signinBefore, signinAfter, limit, offset, querySort, include);
    print(result);
} catch (e) {
    print('Exception when calling SigninsApi->getSignins: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationIds** | **String**| A comma separated list of Location IDs | [optional] 
 **withColours** | **String**| A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` | [optional] 
 **query** | **String**| Allows you to query by `company`, `email`, `first_name`, `last_name`, and `location_name` | [optional] 
 **withAcknowledged** | **bool**| Filters to all those `Signin`s that have, or have not been acknowledged | [optional] 
 **withSignedIn** | **bool**| Filters to all `Signin`s that are, or are not currently signed out. | [optional] 
 **signinBefore** | **DateTime**| Filters results to all those *before* the provided datetime | [optional] 
 **signinAfter** | **DateTime**| Filters results to all those *after* the provided datetime | [optional] 
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] 
 **querySort** | **String**| Allows you to override ordering by most relevant results when querying | [optional] 
 **include** | **String**| A list of comma-separated related models to include | [optional] 

### Return type

[**PaginatedSigninsListV1**](PaginatedSigninsListV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSignin**
> SigninDetailV1 updateSignin(signinId, signinUpdateParamsV1, idempotencyKey)

Update a Signin

Update, acknowledge, or `Signout` a `Signin`

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = SigninsApi();
final signinId = signinId_example; // String | 
final signinUpdateParamsV1 = SigninUpdateParamsV1(); // SigninUpdateParamsV1 | The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`.  `is_signed_out` and `is_acknowledged` are pseudo attributes that once set to true, are irreversible.
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try {
    final result = api_instance.updateSignin(signinId, signinUpdateParamsV1, idempotencyKey);
    print(result);
} catch (e) {
    print('Exception when calling SigninsApi->updateSignin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinId** | **String**|  | 
 **signinUpdateParamsV1** | [**SigninUpdateParamsV1**](SigninUpdateParamsV1.md)| The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`.  `is_signed_out` and `is_acknowledged` are pseudo attributes that once set to true, are irreversible. | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

[**SigninDetailV1**](SigninDetailV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

