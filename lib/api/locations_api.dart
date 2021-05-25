//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LocationsApi {
  LocationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get the details of a location
  ///
  /// Gets details of a single instance of `Location`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  Future<Response> getLocationWithHttpInfo(String locationId) async {
    // Verify required params are set.
    if (locationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: locationId');
    }

    final path = r'/locations/{location_id}'
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

  /// Get the details of a location
  ///
  /// Gets details of a single instance of `Location`.
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  Future<Location> getLocation(String locationId) async {
    final response = await getLocationWithHttpInfo(locationId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Location',) as Location;
        }
    return Future<Location>.value(null);
  }

  /// List all Locations
  ///
  /// Gets a list of all `Location` entities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  ///
  /// * [String] query:
  ///   Queries by Location `name`
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<Response> getLocationsWithHttpInfo({ int limit, int offset, String query, String include }) async {
    // Verify required params are set.

    final path = r'/locations';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'query', query));
    }
    if (include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include', include));
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

  /// List all Locations
  ///
  /// Gets a list of all `Location` entities.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  ///
  /// * [String] query:
  ///   Queries by Location `name`
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<PaginatedLocationsList> getLocations({ int limit, int offset, String query, String include }) async {
    final response = await getLocationsWithHttpInfo( limit: limit, offset: offset, query: query, include: include );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedLocationsList',) as PaginatedLocationsList;
        }
    return Future<PaginatedLocationsList>.value(null);
  }
}
