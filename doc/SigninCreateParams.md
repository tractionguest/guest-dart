# openapi.model.SigninCreateParams

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**registrationId** | **String** | UUID of a Registration | [optional] 
**email** | **String** | E-mail, ignored if `registration_id` is included | [optional] 
**company** | **String** | Company name, ignored if `registration_id` is included | [optional] 
**lastName** | **String** | Last name, ignored if `registration_id` is included | [optional] 
**firstName** | **String** | First name, ignored if `registration_id` is included | [optional] 
**smsMessage** | **String** |  | [optional] 
**sendNotifications** | **bool** |  | [optional] 
**locationId** | **int** | ID of the Location where the Signin happened, ignored if `registration_id` is included | [optional] 
**hostIds** | **List<int>** | Array of Host ids, ignored if `registration_id` is included | [optional] [default to const []]
**hostEmailTemplateId** | **int** |  | [optional] 
**guestEmailTemplateId** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


