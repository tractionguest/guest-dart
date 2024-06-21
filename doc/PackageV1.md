# guest_sdk.model.PackageV1

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**recipient** | [**HostV1**](HostV1.md) |  | [optional] 
**location** | [**LocationV1**](LocationV1.md) |  | 
**packageState** | **String** | this can be one of the following states: 'processing', 'recipient_matched', 'needs_attention' or 'picked_up' | 
**carrierName** | **String** | A carrier name that gets detected on the shipping label. i.e. USPS, Purolator, DHL, Canada Post, Royal Mail, etc...  | [optional] 
**pickedUpAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**image** | [**ImageV1**](ImageV1.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


