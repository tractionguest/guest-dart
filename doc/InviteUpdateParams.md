# openapi.model.InviteUpdateParams

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mobileNumber** | **String** |  | [optional] 
**userId** | **int** | Used for transfering ownership of an `Invite` to another member of the Account | [optional] 
**onPremise** | **bool** |  | [optional] 
**notificationTriggers** | [**List<NotificationTriggerCreateParams>**](NotificationTriggerCreateParams.md) |  | [optional] [default to const []]
**firstName** | **String** |  | [optional] 
**emailTemplateId** | **int** |  | [optional] 
**customFields** | [**List<CustomField>**](CustomField.md) |  | [optional] [default to const []]
**hostIds** | **List<int>** |  | [optional] [default to const []]
**title** | **String** |  | [optional] 
**startDate** | [**DateTime**](DateTime.md) |  | [optional] 
**lastName** | **String** |  | [optional] 
**endDate** | [**DateTime**](DateTime.md) |  | [optional] 
**email** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**groupVisitId** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


