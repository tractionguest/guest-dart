//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ParkingApi {
  ParkingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get available stalls for stall type
  ///
  /// Gets a list of [ParkingLotAvailableStalls] entities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] parkingLotId (required):
  ///
  /// * [String] stallType (required):
  ///   The type of stall to filter by. E.g., 'Compact', 'Standard', 'Electric', 'Handicapped'
  ///
  /// * [DateTime] startDate (required):
  ///   The start date to filter by. E.g., '2024-06-13T15:30:00'
  ///
  /// * [DateTime] endDate (required):
  ///   The end date to filter by. E.g., '2024-06-13T15:30:00'
  Future<Response> getParkingLotAvailableStallsWithHttpInfo(String parkingLotId, String stallType, DateTime startDate, DateTime endDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/parking_lots/{parking_lot_id}/available_stalls'
      .replaceAll('{parking_lot_id}', parkingLotId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'stall_type', stallType));
      queryParams.addAll(_queryParams('', 'start_date', startDate));
      queryParams.addAll(_queryParams('', 'end_date', endDate));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get available stalls for stall type
  ///
  /// Gets a list of [ParkingLotAvailableStalls] entities.
  ///
  /// Parameters:
  ///
  /// * [String] parkingLotId (required):
  ///
  /// * [String] stallType (required):
  ///   The type of stall to filter by. E.g., 'Compact', 'Standard', 'Electric', 'Handicapped'
  ///
  /// * [DateTime] startDate (required):
  ///   The start date to filter by. E.g., '2024-06-13T15:30:00'
  ///
  /// * [DateTime] endDate (required):
  ///   The end date to filter by. E.g., '2024-06-13T15:30:00'
  Future<List<ParkingLotAvailableStallsV1>?> getParkingLotAvailableStalls(String parkingLotId, String stallType, DateTime startDate, DateTime endDate,) async {
    final response = await getParkingLotAvailableStallsWithHttpInfo(parkingLotId, stallType, startDate, endDate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ParkingLotAvailableStallsV1>') as List)
        .cast<ParkingLotAvailableStallsV1>()
        .toList();

    }
    return null;
  }

  /// Get parking lots
  ///
  /// Gets a list of [ParkingLot] entities.
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
  Future<Response> getParkingLotsWithHttpInfo({ int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/parking_lots';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get parking lots
  ///
  /// Gets a list of [ParkingLot] entities.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  Future<PaginatedParkingLotsListV1?> getParkingLots({ int? limit, int? offset, }) async {
    final response = await getParkingLotsWithHttpInfo( limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedParkingLotsListV1',) as PaginatedParkingLotsListV1;
    
    }
    return null;
  }

  /// Get stall types of parking lot
  ///
  /// Gets a list of [ParkingStallType] entities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] parkingLotId (required):
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  Future<Response> getParkingStallTypesWithHttpInfo(String parkingLotId, { int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/parking_lots/{parking_lot_id}/parking_stalls/stall_types'
      .replaceAll('{parking_lot_id}', parkingLotId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get stall types of parking lot
  ///
  /// Gets a list of [ParkingStallType] entities.
  ///
  /// Parameters:
  ///
  /// * [String] parkingLotId (required):
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  Future<PaginatedParkingStallTypesListV1?> getParkingStallTypes(String parkingLotId, { int? limit, int? offset, }) async {
    final response = await getParkingStallTypesWithHttpInfo(parkingLotId,  limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedParkingStallTypesListV1',) as PaginatedParkingStallTypesListV1;
    
    }
    return null;
  }

  /// Get stalls of parking lot
  ///
  /// Gets a list of [ParkingStall] entities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] parkingLotId (required):
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  Future<Response> getParkingStallsWithHttpInfo(String parkingLotId, { int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/parking_lots/{parking_lot_id}/parking_stalls'
      .replaceAll('{parking_lot_id}', parkingLotId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get stalls of parking lot
  ///
  /// Gets a list of [ParkingStall] entities.
  ///
  /// Parameters:
  ///
  /// * [String] parkingLotId (required):
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  Future<PaginatedParkingStallsListV1?> getParkingStalls(String parkingLotId, { int? limit, int? offset, }) async {
    final response = await getParkingStallsWithHttpInfo(parkingLotId,  limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedParkingStallsListV1',) as PaginatedParkingStallsListV1;
    
    }
    return null;
  }
}
