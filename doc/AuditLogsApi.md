# openapi.api.AuditLogsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuditLog**](AuditLogsApi.md#getauditlog) | **GET** /audit_logs/{audit_log_id} | Get an AuditLog
[**getAuditLogs**](AuditLogsApi.md#getauditlogs) | **GET** /audit_logs | List all AuditLogs


# **getAuditLog**
> AuditLog getAuditLog(auditLogId)

Get an AuditLog

Gets the details of a single instance of an `AuditLog`.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = AuditLogsApi();
final auditLogId = auditLogId_example; // String | 

try { 
    final result = api_instance.getAuditLog(auditLogId);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogsApi->getAuditLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditLogId** | **String**|  | 

### Return type

[**AuditLog**](AuditLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuditLogs**
> PaginatedAuditLogsList getAuditLogs(limit, offset, sortBy, auditableId, auditableType, actionType, userId)

List all AuditLogs

Gets a list of all `AuditLog` entities.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = AuditLogsApi();
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0
final sortBy = sortBy_example; // String | Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION`
final auditableId = 56; // int | The unique ID of a model that has associated audit logs
final auditableType = auditableType_example; // String | The name of the model that has associated audit logs. Valid values include: - `user` - `device_configuration` - `signin` - `invite` - `watchlist_record` - `account_preference` - `signout` - `host` - `invite_watchlist` - `location_preference` - `parking_lot` - `parking_stall` - `permission_bundle` - `person` - `physical_access_grant` - `physical_access_provider` - `physical_access_rule` - `security_badge_type` - `signin_watchlist` - `user_group_physical_access_rule` - `visitor` - `bulk_data_batch` 
final actionType = actionType_example; // String | The action performed by the user. Valid values include: - `create` - `update` - `destroy` 
final userId = 56; // int | The ID of the user who performed the database change

try { 
    final result = api_instance.getAuditLogs(limit, offset, sortBy, auditableId, auditableType, actionType, userId);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogsApi->getAuditLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] 
 **sortBy** | **String**| Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION` | [optional] 
 **auditableId** | **int**| The unique ID of a model that has associated audit logs | [optional] 
 **auditableType** | **String**| The name of the model that has associated audit logs. Valid values include: - `user` - `device_configuration` - `signin` - `invite` - `watchlist_record` - `account_preference` - `signout` - `host` - `invite_watchlist` - `location_preference` - `parking_lot` - `parking_stall` - `permission_bundle` - `person` - `physical_access_grant` - `physical_access_provider` - `physical_access_rule` - `security_badge_type` - `signin_watchlist` - `user_group_physical_access_rule` - `visitor` - `bulk_data_batch`  | [optional] 
 **actionType** | **String**| The action performed by the user. Valid values include: - `create` - `update` - `destroy`  | [optional] 
 **userId** | **int**| The ID of the user who performed the database change | [optional] 

### Return type

[**PaginatedAuditLogsList**](PaginatedAuditLogsList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

