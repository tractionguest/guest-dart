# guest_sdk.api.ParkingApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getParkingLotAvailableStalls**](ParkingApi.md#getparkinglotavailablestalls) | **GET** /parking_lots/{parking_lot_id}/available_stalls | Get available stalls for stall type
[**getParkingLots**](ParkingApi.md#getparkinglots) | **GET** /parking_lots | Get parking lots
[**getParkingStalls**](ParkingApi.md#getparkingstalls) | **GET** /parking_lots/{parking_lot_id}/parking_stalls | Get stalls of parking lot


# **getParkingLotAvailableStalls**
> List<ParkingLotAvailableStallsV1> getParkingLotAvailableStalls(parkingLotId, stallType, startDate, endDate, timezone)

Get available stalls for stall type

Gets a list of [ParkingLotAvailableStalls] entities.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = ParkingApi();
final parkingLotId = parkingLotId_example; // String | 
final stallType = stallType_example; // String | The type of stall to filter by. E.g., 'Compact', 'Standard', 'Electric', 'Handicapped'
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date to filter by. E.g., '2024-06-13T15:30:00'
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date to filter by. E.g., '2024-06-13T15:30:00'
final timezone = timezone_example; // String | The IANA timezone to be used if not provided in both start_date and end_date. E.g., 'America/Vancouver'

try {
    final result = api_instance.getParkingLotAvailableStalls(parkingLotId, stallType, startDate, endDate, timezone);
    print(result);
} catch (e) {
    print('Exception when calling ParkingApi->getParkingLotAvailableStalls: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingLotId** | **String**|  | 
 **stallType** | **String**| The type of stall to filter by. E.g., 'Compact', 'Standard', 'Electric', 'Handicapped' | 
 **startDate** | **DateTime**| The start date to filter by. E.g., '2024-06-13T15:30:00' | 
 **endDate** | **DateTime**| The end date to filter by. E.g., '2024-06-13T15:30:00' | 
 **timezone** | **String**| The IANA timezone to be used if not provided in both start_date and end_date. E.g., 'America/Vancouver' | [optional] 

### Return type

[**List<ParkingLotAvailableStallsV1>**](ParkingLotAvailableStallsV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParkingLots**
> PaginatedParkingLotsListV1 getParkingLots(limit, offset)

Get parking lots

Gets a list of [ParkingLot] entities.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = ParkingApi();
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0

try {
    final result = api_instance.getParkingLots(limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling ParkingApi->getParkingLots: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to 50]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to 0]

### Return type

[**PaginatedParkingLotsListV1**](PaginatedParkingLotsListV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParkingStalls**
> PaginatedParkingStallsListV1 getParkingStalls(parkingLotId, limit, offset)

Get stalls of parking lot

Gets a list of [ParkingStall] entities.

### Example
```dart
import 'package:guest_sdk/api.dart';

final api_instance = ParkingApi();
final parkingLotId = parkingLotId_example; // String | 
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0

try {
    final result = api_instance.getParkingStalls(parkingLotId, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling ParkingApi->getParkingStalls: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingLotId** | **String**|  | 
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to 50]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to 0]

### Return type

[**PaginatedParkingStallsListV1**](PaginatedParkingStallsListV1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

