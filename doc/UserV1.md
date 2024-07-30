# guest_sdk.model.UserV1

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**mobileAccessEnabled** | **bool** | Identifies if user has access to mobile app features. | 
**permissionGroups** | [**List<PermissionGroupV1>**](PermissionGroupV1.md) |  | [optional] [default to const []]
**email** | **String** |  | 
**lastName** | **String** |  | [optional] 
**firstName** | **String** | Determines if the registration portal has been enabled for this account | [optional] 
**registrationPortalEnabled** | **bool** | Determines if the registration portal has been enabled for this account | 
**accountUuid** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


