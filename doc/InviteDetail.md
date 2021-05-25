# openapi.model.InviteDetail

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**registration** | [**Registration**](Registration.md) |  | [optional] 
**mobileNumber** | **String** | Phone number | [optional] 
**emailTemplate** | [**EmailTemplate**](EmailTemplate.md) |  | [optional] 
**inviteWatchlist** | [**InviteWatchlist**](InviteWatchlist.md) |  | [optional] 
**notificationTriggers** | [**List<NotificationTrigger>**](NotificationTrigger.md) | List of scheduled notifications for an invite | [optional] [default to const []]
**customFields** | [**List<CustomField>**](CustomField.md) |  | [optional] [default to const []]
**watchlistColour** | **String** |  | [optional] 
**location** | [**Location**](Location.md) |  | [optional] 
**hosts** | [**List<Host>**](Host.md) |  | [optional] [default to const []]
**startDate** | [**DateTime**](DateTime.md) |  | [optional] 
**lastName** | **String** |  | 
**firstName** | **String** |  | 
**endDate** | [**DateTime**](DateTime.md) |  | [optional] 
**email** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**company** | **String** |  | [optional] 
**checkedIn** | **bool** |  | [optional] 
**groupVisit** | [**GroupVisit**](GroupVisit.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


