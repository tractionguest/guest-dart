# openapi.api.UsersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrentUser**](UsersApi.md#getcurrentuser) | **GET** /users/{user_id} | Get the current User


# **getCurrentUser**
> User getCurrentUser(userId, include)

Get the current User

Gets the details of a single instance of the current `User`.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = UsersApi();
final userId = userId_example; // String | 
final include = include_example; // String | A list of comma-separated related models to include

try { 
    final result = api_instance.getCurrentUser(userId, include);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getCurrentUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **include** | **String**| A list of comma-separated related models to include | [optional] 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

