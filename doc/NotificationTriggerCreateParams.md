# openapi.model.NotificationTriggerCreateParams

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offsetUnit** | **String** | Whether the offset should be calculated as `days` or `hours` | 
**notificationGroups** | **List<String>** | An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values | [default to const []]
**emailTemplateId** | **int** |  | 
**offsetOrigin** | **String** | Whether the offset should be calculated from the start, or finish of the event | 
**offsetAmount** | **int** | The amount to offset the notification from the event | 
**offsetDirection** | **String** | Whether the offset should be calculated for before, or after the event | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


