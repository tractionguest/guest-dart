# openapi.model.NotificationTrigger

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offsetDirection** | **String** | Whether the offset should be calculated for before, or after the event | 
**offsetAmount** | **int** | The amount to offset the notification from the event | 
**offsetOrigin** | [**Object**](.md) | Whether the offset should be calculated from the start, or finish of the event | 
**emailTemplateId** | **int** |  | 
**notificationGroups** | **List<String>** | An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values | [default to const []]
**offsetUnit** | **String** | Whether the offset should be calculated as `days` or `hours` | 
**emailTemplateName** | **String** | The name of the EmailTemplate associated with the NotificationTrigger. This is only given from the server, not used as a create param. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


