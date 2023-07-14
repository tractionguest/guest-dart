# guest_sdk.model.InviteCreateParamsV1

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mobileNumber** | **String** |  | [optional] 
**notificationTriggers** | [**List<NotificationTriggerCreateParamsV1>**](NotificationTriggerCreateParamsV1.md) |  | [optional] [default to const []]
**firstName** | **String** |  | 
**emailTemplateId** | **int** |  | [optional] 
**customFields** | [**List<CustomFieldV1>**](CustomFieldV1.md) |  | [optional] [default to const []]
**hostIds** | **List<int>** |  | [optional] [default to const []]
**watchlistColour** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**startDate** | [**DateTime**](DateTime.md) | The `start_date` is required for invitations to lobbies | [optional] 
**lastName** | **String** |  | 
**endDate** | [**DateTime**](DateTime.md) |  | [optional] 
**email** | **String** |  | 
**company** | **String** |  | [optional] 
**groupVisitId** | **int** |  | [optional] 
**parkingStall** | [**InviteCreateParamsV1ParkingStall**](InviteCreateParamsV1ParkingStall.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


