//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CapacitiesApi {
  CapacitiesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get the current capacity details for a location
  ///
  /// Get details of current capacity in a location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  Future<Response> getCapacityWithHttpInfo(String locationId) async {
    // Verify required params are set.
    if (locationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: locationId');
    }

    final path = r'/locations/{location_id}/capacities'
      .replaceAll('{' + 'location_id' + '}', locationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get the current capacity details for a location
  ///
  /// Get details of current capacity in a location
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  Future<Capacity> getCapacity(String locationId) async {
    final response = await getCapacityWithHttpInfo(locationId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Capacity',) as Capacity;
        }
    return Future<Capacity>.value(null);
  }

  /// Get the capacity details for a location
  ///
  /// Gets the details of the future capacity in a location.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  ///
  /// * [int] hoursToForecast:
  ///   The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8.
  ///
  /// * [String] timestamp:
  ///   ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \"2020-07-16T17:05:08-07:00\"
  Future<Response> getCapacityForecastWithHttpInfo(String locationId, { int hoursToForecast, String timestamp }) async {
    // Verify required params are set.
    if (locationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: locationId');
    }

    final path = r'/locations/{location_id}/capacity_forecasts'
      .replaceAll('{' + 'location_id' + '}', locationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (hoursToForecast != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'hours_to_forecast', hoursToForecast));
    }
    if (timestamp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timestamp', timestamp));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get the capacity details for a location
  ///
  /// Gets the details of the future capacity in a location.
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  ///
  /// * [int] hoursToForecast:
  ///   The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8.
  ///
  /// * [String] timestamp:
  ///   ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \"2020-07-16T17:05:08-07:00\"
  Future<CapacityForecast> getCapacityForecast(String locationId, { int hoursToForecast, String timestamp }) async {
    final response = await getCapacityForecastWithHttpInfo(locationId,  hoursToForecast: hoursToForecast, timestamp: timestamp );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CapacityForecast',) as CapacityForecast;
        }
    return Future<CapacityForecast>.value(null);
  }
}
