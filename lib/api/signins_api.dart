//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SigninsApi {
  SigninsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Signin
  ///
  /// Creates a Signin
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SigninCreateParams] signinCreateParams:
  ///   Params for creating a Signin can omit certain fields if a `registration_id` is present.
  Future<Response> createSigninWithHttpInfo({ SigninCreateParams signinCreateParams }) async {
    // Verify required params are set.

    final path = r'/signins';

    Object postBody = signinCreateParams;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create Signin
  ///
  /// Creates a Signin
  ///
  /// Parameters:
  ///
  /// * [SigninCreateParams] signinCreateParams:
  ///   Params for creating a Signin can omit certain fields if a `registration_id` is present.
  Future<Signin> createSignin({ SigninCreateParams signinCreateParams }) async {
    final response = await createSigninWithHttpInfo( signinCreateParams: signinCreateParams );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Signin',) as Signin;
        }
    return Future<Signin>.value(null);
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
  Future<Response> getSigninWithHttpInfo(String signinId, { String include }) async {
    // Verify required params are set.
    if (signinId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: signinId');
    }

    final path = r'/signins/{signin_id}'
      .replaceAll('{' + 'signin_id' + '}', signinId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  Future<SigninDetail> getSignin(String signinId, { String include }) async {
    final response = await getSigninWithHttpInfo(signinId,  include: include );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SigninDetail',) as SigninDetail;
        }
    return Future<SigninDetail>.value(null);
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
  Future<Response> getSigninsWithHttpInfo({ String locationIds, String withColours, String query, bool withAcknowledged, bool withSignedIn, DateTime signinBefore, DateTime signinAfter, int limit, int offset, String querySort, String include }) async {
    // Verify required params are set.

    final path = r'/signins';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (locationIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'location_ids', locationIds));
    }
    if (withColours != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'with_colours', withColours));
    }
    if (query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'query', query));
    }
    if (withAcknowledged != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'with_acknowledged', withAcknowledged));
    }
    if (withSignedIn != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'with_signed_in', withSignedIn));
    }
    if (signinBefore != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'signin_before', signinBefore));
    }
    if (signinAfter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'signin_after', signinAfter));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (querySort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'query_sort', querySort));
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
  Future<PaginatedSigninsList> getSignins({ String locationIds, String withColours, String query, bool withAcknowledged, bool withSignedIn, DateTime signinBefore, DateTime signinAfter, int limit, int offset, String querySort, String include }) async {
    final response = await getSigninsWithHttpInfo( locationIds: locationIds, withColours: withColours, query: query, withAcknowledged: withAcknowledged, withSignedIn: withSignedIn, signinBefore: signinBefore, signinAfter: signinAfter, limit: limit, offset: offset, querySort: querySort, include: include );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedSigninsList',) as PaginatedSigninsList;
        }
    return Future<PaginatedSigninsList>.value(null);
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
  /// * [SigninUpdateParams] signinUpdateParams (required):
  ///   The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`.  `is_signed_out` and `is_acknowledged` are pseudo attributes that once set to true, are irreversible.
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> updateSigninWithHttpInfo(String signinId, SigninUpdateParams signinUpdateParams, { String idempotencyKey }) async {
    // Verify required params are set.
    if (signinId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: signinId');
    }
    if (signinUpdateParams == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: signinUpdateParams');
    }

    final path = r'/signins/{signin_id}'
      .replaceAll('{' + 'signin_id' + '}', signinId.toString());

    Object postBody = signinUpdateParams;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
    }

    final contentTypes = <String>['application/json'];
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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
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
  /// * [SigninUpdateParams] signinUpdateParams (required):
  ///   The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`.  `is_signed_out` and `is_acknowledged` are pseudo attributes that once set to true, are irreversible.
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<SigninDetail> updateSignin(String signinId, SigninUpdateParams signinUpdateParams, { String idempotencyKey }) async {
    final response = await updateSigninWithHttpInfo(signinId, signinUpdateParams,  idempotencyKey: idempotencyKey );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SigninDetail',) as SigninDetail;
        }
    return Future<SigninDetail>.value(null);
  }
}
