# guest_sdk.model.InviteDetailV1

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**registration** | [**RegistrationV1**](RegistrationV1.md) |  | [optional] 
**mobileNumber** | **String** | Phone number | [optional] 
**emailTemplate** | [**EmailTemplateV1**](EmailTemplateV1.md) |  | [optional] 
**inviteWatchlist** | [**InviteWatchlistV1**](InviteWatchlistV1.md) |  | [optional] 
**notificationTriggers** | [**List<NotificationTriggerV1>**](NotificationTriggerV1.md) | List of scheduled notifications for an invite | [optional] [default to const []]
**customFields** | [**List<CustomFieldV1>**](CustomFieldV1.md) |  | [optional] [default to const []]
**watchlistColour** | **String** |  | [optional] 
**location** | [**LocationV1**](LocationV1.md) |  | [optional] 
**hosts** | [**List<HostV1>**](HostV1.md) |  | [optional] [default to const []]
**startDate** | [**DateTime**](DateTime.md) |  | [optional] 
**lastName** | **String** |  | 
**firstName** | **String** |  | 
**endDate** | [**DateTime**](DateTime.md) |  | [optional] 
**email** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**company** | **String** |  | [optional] 
**checkedIn** | **bool** |  | [optional] 
**groupVisit** | [**GroupVisitV1**](GroupVisitV1.md) |  | [optional] 
**licensePlate** | **String** |  | [optional] 
**assignedStall** | [**AssignedStallV1**](AssignedStallV1.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


