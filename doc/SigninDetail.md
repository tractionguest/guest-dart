# openapi.model.SigninDetail

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**documents** | [**List<SignableDocument>**](SignableDocument.md) |  | [optional] [default to const []]
**signinWatchlist** | [**SigninWatchlist**](SigninWatchlist.md) |  | [optional] 
**hosts** | [**List<Host>**](Host.md) |  | [optional] [default to const []]
**signinData** | [**List<SigninData>**](SigninData.md) |  | [optional] [default to const []]
**signinAcknowledgement** | [**SigninAcknowledgement**](SigninAcknowledgement.md) |  | [optional] 
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
**registration** | [**Registration**](Registration.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


