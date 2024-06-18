# guest_sdk.model.AuditLogV1

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
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
**auditedChanges** | [**List<AuditLogChangeV1>**](AuditLogChangeV1.md) |  | [optional] [default to const []]
**action** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**userId** | **int** |  | [optional] 
**auditableType** | **String** |  | [optional] 
**auditableId** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


