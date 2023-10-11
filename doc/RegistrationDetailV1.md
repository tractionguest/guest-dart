# guest_sdk.model.RegistrationDetailV1

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Registration unique identifier | 
**visitor** | [**VisitorV1**](VisitorV1.md) |  | [optional] 
**invite** | [**InviteV1**](InviteV1.md) |  | [optional] 
**guestResponses** | [**List<GuestResponseV1>**](GuestResponseV1.md) | Response given by the guest | [optional] [default to const []]
**photoUrl** | **String** | URL of the uploaded photo | [optional] 
**company** | **String** | Company's name | [optional] 
**email** | **String** | E-mail | [optional] 
**name** | **String** | Guest's name | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Datetime when registration was created | 
**signin** | [**SigninV1**](SigninV1.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


