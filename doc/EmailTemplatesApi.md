# guest_sdk.api.EmailTemplatesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEmailTemplates**](EmailTemplatesApi.md#getemailtemplates) | **GET** /email_templates | List all EmailTemplates


# **getEmailTemplates**
> PaginatedEmailTemplatesListV1 getEmailTemplates(limit, offset, include)

List all EmailTemplates

Gets a list of all `EmailTemplate` entities.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = EmailTemplatesApi();
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0
final include = include_example; // String | A list of comma-separated related models to include

try {
    final result = api_instance.getEmailTemplates(limit, offset, include);
    print(result);
} catch (e) {
    print('Exception when calling EmailTemplatesApi->getEmailTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] 
 **include** | **String**| A list of comma-separated related models to include | [optional] 

### Return type

[**PaginatedEmailTemplatesListV1**](PaginatedEmailTemplatesListV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

