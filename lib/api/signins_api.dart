//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SigninsApi {
  SigninsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Signin
  ///
  /// Creates a Signin
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SigninCreateParamsV1] signinCreateParamsV1:
  ///   Params for creating a Signin can omit certain fields if a `registration_id` is present.
  Future<Response> createSigninWithHttpInfo({ SigninCreateParamsV1? signinCreateParamsV1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/signins';

    // ignore: prefer_final_locals
    Object? postBody = signinCreateParamsV1;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Create Signin
  ///
  /// Creates a Signin
  ///
  /// Parameters:
  ///
  /// * [SigninCreateParamsV1] signinCreateParamsV1:
  ///   Params for creating a Signin can omit certain fields if a `registration_id` is present.
  Future<SigninV1?> createSignin({ SigninCreateParamsV1? signinCreateParamsV1, }) async {
    final response = await createSigninWithHttpInfo( signinCreateParamsV1: signinCreateParamsV1, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SigninV1',) as SigninV1;
    
    }
    return null;
  }

  /// Get a Signin
  ///
  /// Gets the details of a single instance of a `Signin`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] signinId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<Response> getSigninWithHttpInfo(String signinId, { String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/signins/{signin_id}'
      .replaceAll('{signin_id}', signinId);

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

  /// Get a Signin
  ///
  /// Gets the details of a single instance of a `Signin`.
  ///
  /// Parameters:
  ///
  /// * [String] signinId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<SigninDetailV1?> getSignin(String signinId, { String? include, }) async {
    final response = await getSigninWithHttpInfo(signinId,  include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SigninDetailV1',) as SigninDetailV1;
    
    }
    return null;
  }

  /// List all Signins
  ///
  /// Gets a list of all `Signin` entities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] locationIds:
  ///   A comma separated list of Location IDs
  ///
  /// * [String] withColours:
  ///   A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
  ///
  /// * [String] query:
  ///   Allows you to query by `company`, `email`, `first_name`, `last_name`, and `location_name`
  ///
  /// * [bool] withAcknowledged:
  ///   Filters to all those `Signin`s that have, or have not been acknowledged
  ///
  /// * [bool] withSignedIn:
  ///   Filters to all `Signin`s that are, or are not currently signed out.
  ///
  /// * [DateTime] signinBefore:
  ///   Filters results to all those *before* the provided datetime
  ///
  /// * [DateTime] signinAfter:
  ///   Filters results to all those *after* the provided datetime
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  ///
  /// * [String] querySort:
  ///   Allows you to override ordering by most relevant results when querying
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<Response> getSigninsWithHttpInfo({ String? locationIds, String? withColours, String? query, bool? withAcknowledged, bool? withSignedIn, DateTime? signinBefore, DateTime? signinAfter, int? limit, int? offset, String? querySort, String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/signins';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (locationIds != null) {
      queryParams.addAll(_queryParams('', 'location_ids', locationIds));
    }
    if (withColours != null) {
      queryParams.addAll(_queryParams('', 'with_colours', withColours));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (withAcknowledged != null) {
      queryParams.addAll(_queryParams('', 'with_acknowledged', withAcknowledged));
    }
    if (withSignedIn != null) {
      queryParams.addAll(_queryParams('', 'with_signed_in', withSignedIn));
    }
    if (signinBefore != null) {
      queryParams.addAll(_queryParams('', 'signin_before', signinBefore));
    }
    if (signinAfter != null) {
      queryParams.addAll(_queryParams('', 'signin_after', signinAfter));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (querySort != null) {
      queryParams.addAll(_queryParams('', 'query_sort', querySort));
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

  /// List all Signins
  ///
  /// Gets a list of all `Signin` entities.
  ///
  /// Parameters:
  ///
  /// * [String] locationIds:
  ///   A comma separated list of Location IDs
  ///
  /// * [String] withColours:
  ///   A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
  ///
  /// * [String] query:
  ///   Allows you to query by `company`, `email`, `first_name`, `last_name`, and `location_name`
  ///
  /// * [bool] withAcknowledged:
  ///   Filters to all those `Signin`s that have, or have not been acknowledged
  ///
  /// * [bool] withSignedIn:
  ///   Filters to all `Signin`s that are, or are not currently signed out.
  ///
  /// * [DateTime] signinBefore:
  ///   Filters results to all those *before* the provided datetime
  ///
  /// * [DateTime] signinAfter:
  ///   Filters results to all those *after* the provided datetime
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  ///
  /// * [String] querySort:
  ///   Allows you to override ordering by most relevant results when querying
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<PaginatedSigninsListV1?> getSignins({ String? locationIds, String? withColours, String? query, bool? withAcknowledged, bool? withSignedIn, DateTime? signinBefore, DateTime? signinAfter, int? limit, int? offset, String? querySort, String? include, }) async {
    final response = await getSigninsWithHttpInfo( locationIds: locationIds, withColours: withColours, query: query, withAcknowledged: withAcknowledged, withSignedIn: withSignedIn, signinBefore: signinBefore, signinAfter: signinAfter, limit: limit, offset: offset, querySort: querySort, include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedSigninsListV1',) as PaginatedSigninsListV1;
    
    }
    return null;
  }

  /// Update a Signin
  ///
  /// Update, acknowledge, or `Signout` a `Signin`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] signinId (required):
  ///
  /// * [SigninUpdateParamsV1] signinUpdateParamsV1 (required):
  ///   The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`.  `is_signed_out` and `is_acknowledged` are pseudo attributes that once set to true, are irreversible.
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> updateSigninWithHttpInfo(String signinId, SigninUpdateParamsV1 signinUpdateParamsV1, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/signins/{signin_id}'
      .replaceAll('{signin_id}', signinId);

    // ignore: prefer_final_locals
    Object? postBody = signinUpdateParamsV1;

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

  /// Update a Signin
  ///
  /// Update, acknowledge, or `Signout` a `Signin`
  ///
  /// Parameters:
  ///
  /// * [String] signinId (required):
  ///
  /// * [SigninUpdateParamsV1] signinUpdateParamsV1 (required):
  ///   The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`.  `is_signed_out` and `is_acknowledged` are pseudo attributes that once set to true, are irreversible.
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<SigninDetailV1?> updateSignin(String signinId, SigninUpdateParamsV1 signinUpdateParamsV1, { String? idempotencyKey, }) async {
    final response = await updateSigninWithHttpInfo(signinId, signinUpdateParamsV1,  idempotencyKey: idempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SigninDetailV1',) as SigninDetailV1;
    
    }
    return null;
  }
}
