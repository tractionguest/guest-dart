# openapi.api.LocationsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLocation**](LocationsApi.md#getlocation) | **GET** /locations/{location_id} | Get the details of a location
[**getLocations**](LocationsApi.md#getlocations) | **GET** /locations | List all Locations


# **getLocation**
> Location getLocation(locationId)

Get the details of a location

Gets details of a single instance of `Location`.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = LocationsApi();
final locationId = locationId_example; // String | 

try { 
    final result = api_instance.getLocation(locationId);
    print(result);
} catch (e) {
    print('Exception when calling LocationsApi->getLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**|  | 

### Return type

[**Location**](Location.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocations**
> PaginatedLocationsList getLocations(limit, offset, query, include)

List all Locations

Gets a list of all `Location` entities.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = LocationsApi();
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0
final query = query_example; // String | Queries by Location `name`
final include = include_example; // String | A list of comma-separated related models to include

try { 
    final result = api_instance.getLocations(limit, offset, query, include);
    print(result);
} catch (e) {
    print('Exception when calling LocationsApi->getLocations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] 
 **query** | **String**| Queries by Location `name` | [optional] 
 **include** | **String**| A list of comma-separated related models to include | [optional] 

### Return type

[**PaginatedLocationsList**](PaginatedLocationsList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

