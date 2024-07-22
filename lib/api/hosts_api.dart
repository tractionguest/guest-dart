//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HostsApi {
  HostsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a Host
  ///
  /// Creates a Host
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HostCreateParamsV1] hostCreateParamsV1 (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> createHostWithHttpInfo(HostCreateParamsV1 hostCreateParamsV1, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/hosts';

    // ignore: prefer_final_locals
    Object? postBody = hostCreateParamsV1;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a Host
  ///
  /// Creates a Host
  ///
  /// Parameters:
  ///
  /// * [HostCreateParamsV1] hostCreateParamsV1 (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<HostV1?> createHost(HostCreateParamsV1 hostCreateParamsV1, { String? idempotencyKey, }) async {
    final response = await createHostWithHttpInfo(hostCreateParamsV1,  idempotencyKey: idempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HostV1',) as HostV1;
    
    }
    return null;
  }

  /// Create multiple Hosts
  ///
  /// Creates a batch of `Host` records in an async queue. Please note, every action taken against this endpoint is recorded in the audit log.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  ///
  /// * [HostBatchCreateParamsV1] hostBatchCreateParamsV1:
  ///   
  Future<Response> createHostsWithHttpInfo({ String? idempotencyKey, HostBatchCreateParamsV1? hostBatchCreateParamsV1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/hosts/batch';

    // ignore: prefer_final_locals
    Object? postBody = hostBatchCreateParamsV1;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create multiple Hosts
  ///
  /// Creates a batch of `Host` records in an async queue. Please note, every action taken against this endpoint is recorded in the audit log.
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  ///
  /// * [HostBatchCreateParamsV1] hostBatchCreateParamsV1:
  ///   
  Future<BatchJobV1?> createHosts({ String? idempotencyKey, HostBatchCreateParamsV1? hostBatchCreateParamsV1, }) async {
    final response = await createHostsWithHttpInfo( idempotencyKey: idempotencyKey, hostBatchCreateParamsV1: hostBatchCreateParamsV1, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BatchJobV1',) as BatchJobV1;
    
    }
    return null;
  }

  /// List all Hosts
  ///
  /// Gets a list of all `Host` entities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Will filter by `first_name`, `last_name`, and `email`
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<Response> getHostsWithHttpInfo({ String? query, int? limit, int? offset, String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/hosts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
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

  /// List all Hosts
  ///
  /// Gets a list of all `Host` entities.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Will filter by `first_name`, `last_name`, and `email`
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<PaginatedHostsListV1?> getHosts({ String? query, int? limit, int? offset, String? include, }) async {
    final response = await getHostsWithHttpInfo( query: query, limit: limit, offset: offset, include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedHostsListV1',) as PaginatedHostsListV1;
    
    }
    return null;
  }
}
