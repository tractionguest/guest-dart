//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WatchlistsApi {
  WatchlistsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Watchlist
  ///
  /// Create a new `Watchlist` record. Please note, every action taken against this endpoint is recorded in the audit log.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WatchlistCreateParamsV1] watchlistCreateParamsV1 (required):
  ///   The new `Watchlist` to create
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> createWatchlistWithHttpInfo(WatchlistCreateParamsV1 watchlistCreateParamsV1, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/watchlists';

    // ignore: prefer_final_locals
    Object? postBody = watchlistCreateParamsV1;

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

  /// Create Watchlist
  ///
  /// Create a new `Watchlist` record. Please note, every action taken against this endpoint is recorded in the audit log.
  ///
  /// Parameters:
  ///
  /// * [WatchlistCreateParamsV1] watchlistCreateParamsV1 (required):
  ///   The new `Watchlist` to create
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<WatchlistV1?> createWatchlist(WatchlistCreateParamsV1 watchlistCreateParamsV1, { String? idempotencyKey, }) async {
    final response = await createWatchlistWithHttpInfo(watchlistCreateParamsV1,  idempotencyKey: idempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WatchlistV1',) as WatchlistV1;
    
    }
    return null;
  }

  /// Deletes a Watchlist
  ///
  /// Deletes a single instance of `Watchlist`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] watchlistId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> deleteWatchlistWithHttpInfo(String watchlistId, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/watchlists/{watchlist_id}'
      .replaceAll('{watchlist_id}', watchlistId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes a Watchlist
  ///
  /// Deletes a single instance of `Watchlist`
  ///
  /// Parameters:
  ///
  /// * [String] watchlistId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<void> deleteWatchlist(String watchlistId, { String? idempotencyKey, }) async {
    final response = await deleteWatchlistWithHttpInfo(watchlistId,  idempotencyKey: idempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a Watchlist
  ///
  /// Gets the details of a single instance of a `Watchlist`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] watchlistId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<Response> getWatchlistWithHttpInfo(String watchlistId, { String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/watchlists/{watchlist_id}'
      .replaceAll('{watchlist_id}', watchlistId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get a Watchlist
  ///
  /// Gets the details of a single instance of a `Watchlist`.
  ///
  /// Parameters:
  ///
  /// * [String] watchlistId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<WatchlistV1?> getWatchlist(String watchlistId, { String? include, }) async {
    final response = await getWatchlistWithHttpInfo(watchlistId,  include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WatchlistV1',) as WatchlistV1;
    
    }
    return null;
  }

  /// List all Watchlists
  ///
  /// Gets a list of all `Watchlist` entities.
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
  ///   Query the results by `first_name`, `last_name`, `email`, `colour`, and `notes` all at once.
  ///
  /// * [String] withColours:
  ///   A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<Response> getWatchlistsWithHttpInfo({ int? limit, int? offset, String? query, String? withColours, String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/watchlists';

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
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (withColours != null) {
      queryParams.addAll(_queryParams('', 'with_colours', withColours));
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

  /// List all Watchlists
  ///
  /// Gets a list of all `Watchlist` entities.
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
  ///   Query the results by `first_name`, `last_name`, `email`, `colour`, and `notes` all at once.
  ///
  /// * [String] withColours:
  ///   A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<PaginatedWatchlistListV1?> getWatchlists({ int? limit, int? offset, String? query, String? withColours, String? include, }) async {
    final response = await getWatchlistsWithHttpInfo( limit: limit, offset: offset, query: query, withColours: withColours, include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedWatchlistListV1',) as PaginatedWatchlistListV1;
    
    }
    return null;
  }

  /// Update a Watchlist
  ///
  /// Update an existing `Watchlist` record. Every operation against this endpoint is recorded in the audit log.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] watchlistId (required):
  ///
  /// * [WatchlistCreateParamsV1] watchlistCreateParamsV1 (required):
  ///   The watchlist record attributes to update
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> updateWatchlistWithHttpInfo(String watchlistId, WatchlistCreateParamsV1 watchlistCreateParamsV1, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/watchlists/{watchlist_id}'
      .replaceAll('{watchlist_id}', watchlistId);

    // ignore: prefer_final_locals
    Object? postBody = watchlistCreateParamsV1;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a Watchlist
  ///
  /// Update an existing `Watchlist` record. Every operation against this endpoint is recorded in the audit log.
  ///
  /// Parameters:
  ///
  /// * [String] watchlistId (required):
  ///
  /// * [WatchlistCreateParamsV1] watchlistCreateParamsV1 (required):
  ///   The watchlist record attributes to update
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<WatchlistV1?> updateWatchlist(String watchlistId, WatchlistCreateParamsV1 watchlistCreateParamsV1, { String? idempotencyKey, }) async {
    final response = await updateWatchlistWithHttpInfo(watchlistId, watchlistCreateParamsV1,  idempotencyKey: idempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WatchlistV1',) as WatchlistV1;
    
    }
    return null;
  }
}
