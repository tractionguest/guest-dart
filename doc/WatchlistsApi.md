# openapi.api.WatchlistsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWatchlist**](WatchlistsApi.md#createwatchlist) | **POST** /watchlists | Create Watchlist
[**deleteWatchlist**](WatchlistsApi.md#deletewatchlist) | **DELETE** /watchlists/{watchlist_id} | Deletes a Watchlist
[**getWatchlist**](WatchlistsApi.md#getwatchlist) | **GET** /watchlists/{watchlist_id} | Get a Watchlist
[**getWatchlists**](WatchlistsApi.md#getwatchlists) | **GET** /watchlists | List all Watchlists
[**updateWatchlist**](WatchlistsApi.md#updatewatchlist) | **PUT** /watchlists/{watchlist_id} | Update a Watchlist


# **createWatchlist**
> Watchlist createWatchlist(watchlistCreateParams, idempotencyKey)

Create Watchlist

Create a new `Watchlist` record. Please note, every action taken against this endpoint is recorded in the audit log.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = WatchlistsApi();
final watchlistCreateParams = WatchlistCreateParams(); // WatchlistCreateParams | The new `Watchlist` to create
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    final result = api_instance.createWatchlist(watchlistCreateParams, idempotencyKey);
    print(result);
} catch (e) {
    print('Exception when calling WatchlistsApi->createWatchlist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistCreateParams** | [**WatchlistCreateParams**](WatchlistCreateParams.md)| The new `Watchlist` to create | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

[**Watchlist**](Watchlist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWatchlist**
> deleteWatchlist(watchlistId, idempotencyKey)

Deletes a Watchlist

Deletes a single instance of `Watchlist`

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = WatchlistsApi();
final watchlistId = watchlistId_example; // String | 
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    api_instance.deleteWatchlist(watchlistId, idempotencyKey);
} catch (e) {
    print('Exception when calling WatchlistsApi->deleteWatchlist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String**|  | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatchlist**
> Watchlist getWatchlist(watchlistId, include)

Get a Watchlist

Gets the details of a single instance of a `Watchlist`.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = WatchlistsApi();
final watchlistId = watchlistId_example; // String | 
final include = include_example; // String | A list of comma-separated related models to include

try { 
    final result = api_instance.getWatchlist(watchlistId, include);
    print(result);
} catch (e) {
    print('Exception when calling WatchlistsApi->getWatchlist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String**|  | 
 **include** | **String**| A list of comma-separated related models to include | [optional] 

### Return type

[**Watchlist**](Watchlist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatchlists**
> PaginatedWatchlistList getWatchlists(limit, offset, query, withColours, include)

List all Watchlists

Gets a list of all `Watchlist` entities.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = WatchlistsApi();
final limit = 56; // int | Limits the results to a specified number, defaults to 50
final offset = 56; // int | Offsets the results to a specified number, defaults to 0
final query = query_example; // String | Query the results by `first_name`, `last_name`, `email`, `colour`, and `notes` all at once.
final withColours = withColours_example; // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
final include = include_example; // String | A list of comma-separated related models to include

try { 
    final result = api_instance.getWatchlists(limit, offset, query, withColours, include);
    print(result);
} catch (e) {
    print('Exception when calling WatchlistsApi->getWatchlists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] 
 **query** | **String**| Query the results by `first_name`, `last_name`, `email`, `colour`, and `notes` all at once. | [optional] 
 **withColours** | **String**| A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` | [optional] 
 **include** | **String**| A list of comma-separated related models to include | [optional] 

### Return type

[**PaginatedWatchlistList**](PaginatedWatchlistList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWatchlist**
> Watchlist updateWatchlist(watchlistId, watchlistCreateParams, idempotencyKey)

Update a Watchlist

Update an existing `Watchlist` record. Every operation against this endpoint is recorded in the audit log.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = WatchlistsApi();
final watchlistId = watchlistId_example; // String | 
final watchlistCreateParams = WatchlistCreateParams(); // WatchlistCreateParams | The watchlist record attributes to update
final idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    final result = api_instance.updateWatchlist(watchlistId, watchlistCreateParams, idempotencyKey);
    print(result);
} catch (e) {
    print('Exception when calling WatchlistsApi->updateWatchlist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String**|  | 
 **watchlistCreateParams** | [**WatchlistCreateParams**](WatchlistCreateParams.md)| The watchlist record attributes to update | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored | [optional] 

### Return type

[**Watchlist**](Watchlist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

