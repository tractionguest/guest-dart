# guest_sdk.api.PackagesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPackage**](PackagesApi.md#createpackage) | **POST** /packages | Create package
[**deletePackage**](PackagesApi.md#deletepackage) | **DELETE** /packages/{package_id} | Delete Package
[**getPackage**](PackagesApi.md#getpackage) | **GET** /packages/{package_id} | Get Package
[**getPackages**](PackagesApi.md#getpackages) | **GET** /packages | Get packages
[**updatePackage**](PackagesApi.md#updatepackage) | **PUT** /packages/{package_id} | Update Package


# **createPackage**
> PackageV1 createPackage(packageCreateParamsV1)

Create package

Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = PackagesApi();
final packageCreateParamsV1 = PackageCreateParamsV1(); // PackageCreateParamsV1 | Parameters for creating a package

try {
    final result = api_instance.createPackage(packageCreateParamsV1);
    print(result);
} catch (e) {
    print('Exception when calling PackagesApi->createPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageCreateParamsV1** | [**PackageCreateParamsV1**](PackageCreateParamsV1.md)| Parameters for creating a package | [optional] 

### Return type

[**PackageV1**](PackageV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePackage**
> deletePackage(packageId, idempotencyKey)

Delete Package

Delete a pacakge

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = PackagesApi();
final packageId = packageId_example; // String | 
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try {
    api_instance.deletePackage(packageId, idempotencyKey);
} catch (e) {
    print('Exception when calling PackagesApi->deletePackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String**|  | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackage**
> PackageV1 getPackage(packageId, include)

Get Package

Gets the details of a single instance of a Package

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = PackagesApi();
final packageId = packageId_example; // String | 
final include = include_example; // String | A list of comma-separated related models to include 

try {
    final result = api_instance.getPackage(packageId, include);
    print(result);
} catch (e) {
    print('Exception when calling PackagesApi->getPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String**|  | 
 **include** | **String**| A list of comma-separated related models to include  | [optional] 

### Return type

[**PackageV1**](PackageV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackages**
> PaginatedPackagesListV1 getPackages(locationIds, limit, offset, include, pickedUp, query)

Get packages

Gets a list of [Package] entities.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = PackagesApi();
final locationIds = 1,2,3; // String | A comma separated list of Location ids for filtering. i.e. '1,2,3' Will return all packages from all locations if none are specified
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0
final include = recipient,location,image; // String | A list of comma-separated related models to include. Possible values: 'recipient', 'location', 'image'
final pickedUp = true; // bool | Filters packages by their \"picked_up\" state..
final query = query_example; // String | Searches for packages by recipient name

try {
    final result = api_instance.getPackages(locationIds, limit, offset, include, pickedUp, query);
    print(result);
} catch (e) {
    print('Exception when calling PackagesApi->getPackages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationIds** | **String**| A comma separated list of Location ids for filtering. i.e. '1,2,3' Will return all packages from all locations if none are specified | [optional] 
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to 50]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to 0]
 **include** | **String**| A list of comma-separated related models to include. Possible values: 'recipient', 'location', 'image' | [optional] 
 **pickedUp** | **bool**| Filters packages by their \"picked_up\" state.. | [optional] 
 **query** | **String**| Searches for packages by recipient name | [optional] 

### Return type

[**PaginatedPackagesListV1**](PaginatedPackagesListV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePackage**
> PackageV1 updatePackage(packageId, idempotencyKey, packageUpdateParamsV1)

Update Package

Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package's intended recipient. Changes package_state to 'recipient_matched' if a match hasn't been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package's carrier/courier information 

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = PackagesApi();
final packageId = packageId_example; // String | 
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
final packageUpdateParamsV1 = PackageUpdateParamsV1(); // PackageUpdateParamsV1 | 

try {
    final result = api_instance.updatePackage(packageId, idempotencyKey, packageUpdateParamsV1);
    print(result);
} catch (e) {
    print('Exception when calling PackagesApi->updatePackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String**|  | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 
 **packageUpdateParamsV1** | [**PackageUpdateParamsV1**](PackageUpdateParamsV1.md)|  | [optional] 

### Return type

[**PackageV1**](PackageV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

