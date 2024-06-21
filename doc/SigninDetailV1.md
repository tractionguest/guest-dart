# guest_sdk.model.SigninDetailV1

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**documents** | [**List<SignableDocumentV1>**](SignableDocumentV1.md) |  | [optional] [default to const []]
**signinWatchlist** | [**SigninWatchlistV1**](SigninWatchlistV1.md) |  | [optional] 
**hosts** | [**List<HostV1>**](HostV1.md) |  | [optional] [default to const []]
**signinData** | [**List<SigninDataV1>**](SigninDataV1.md) |  | [optional] [default to const []]
**signinAcknowledgement** | [**SigninAcknowledgementV1**](SigninAcknowledgementV1.md) |  | [optional] 
**note** | **String** |  | [optional] 
**isSignedOut** | **bool** | A one-way method of Signing out a Signin | [optional] 
**signinTimestamp** | [**DateTime**](DateTime.md) |  | [optional] 
**signinPhotoUrl** | **String** |  | [optional] 
**signedOutTimestamp** | [**DateTime**](DateTime.md) |  | [optional] 
**mobileNumber** | **String** |  | [optional] 
**locationName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**isAcknowledged** | **bool** | Whether this Signin has been acknowledged yet. Can also be used as a one-way method of setting the Signin as acknowledged. | [optional] 
**isAccountedFor** | **bool** |  | [optional] 
**firstName** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**registration** | [**RegistrationV1**](RegistrationV1.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


