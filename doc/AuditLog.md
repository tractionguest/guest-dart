# openapi.model.AuditLog

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**createdAt** | **String** |  | [optional] 
**requestUuid** | **String** |  | [optional] 
**remoteAddress** | **String** |  | [optional] 
**comment** | **String** |  | [optional] 
**version** | **int** |  | [optional] 
**auditedChanges** | [**List<AuditLogChange>**](AuditLogChange.md) |  | [optional] [default to const []]
**action** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**userId** | **int** |  | [optional] 
**auditableType** | **String** |  | [optional] 
**auditableId** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


