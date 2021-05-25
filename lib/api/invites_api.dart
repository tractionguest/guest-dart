//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InvitesApi {
  InvitesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Multiple Invites
  ///
  /// Queues up a \"delete\" background task for one or more `Invite` entities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IdentifierList] identifierList:
  Future<Response> batchDeleteInvitesWithHttpInfo({ IdentifierList identifierList }) async {
    // Verify required params are set.

    final path = r'/invites/batch_delete';

    Object postBody = identifierList;

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

  /// Delete Multiple Invites
  ///
  /// Queues up a \"delete\" background task for one or more `Invite` entities.
  ///
  /// Parameters:
  ///
  /// * [IdentifierList] identifierList:
  Future<BatchJob> batchDeleteInvites({ IdentifierList identifierList }) async {
    final response = await batchDeleteInvitesWithHttpInfo( identifierList: identifierList );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BatchJob',) as BatchJob;
        }
    return Future<BatchJob>.value(null);
  }

  /// Create an Invite
  ///
  /// Creates a new `Invite` for a specific `Location`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  ///
  /// * [InviteCreateParams] inviteCreateParams (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> createLocationInviteWithHttpInfo(String locationId, InviteCreateParams inviteCreateParams, { String idempotencyKey }) async {
    // Verify required params are set.
    if (locationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: locationId');
    }
    if (inviteCreateParams == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inviteCreateParams');
    }

    final path = r'/locations/{location_id}/invites'
      .replaceAll('{' + 'location_id' + '}', locationId.toString());

    Object postBody = inviteCreateParams;

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create an Invite
  ///
  /// Creates a new `Invite` for a specific `Location`.
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  ///
  /// * [InviteCreateParams] inviteCreateParams (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<InviteDetail> createLocationInvite(String locationId, InviteCreateParams inviteCreateParams, { String idempotencyKey }) async {
    final response = await createLocationInviteWithHttpInfo(locationId, inviteCreateParams,  idempotencyKey: idempotencyKey );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteDetail',) as InviteDetail;
        }
    return Future<InviteDetail>.value(null);
  }

  /// Create an Invite from a Registration
  ///
  /// Creates a new `Invite` from `Registration` data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] registrationId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> createRegistrationInviteWithHttpInfo(String registrationId, { String idempotencyKey }) async {
    // Verify required params are set.
    if (registrationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: registrationId');
    }

    final path = r'/registrations/{registration_id}/invites'
      .replaceAll('{' + 'registration_id' + '}', registrationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create an Invite from a Registration
  ///
  /// Creates a new `Invite` from `Registration` data.
  ///
  /// Parameters:
  ///
  /// * [String] registrationId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<InviteDetail> createRegistrationInvite(String registrationId, { String idempotencyKey }) async {
    final response = await createRegistrationInviteWithHttpInfo(registrationId,  idempotencyKey: idempotencyKey );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteDetail',) as InviteDetail;
        }
    return Future<InviteDetail>.value(null);
  }

  /// Deletes an Invite
  ///
  /// Deletes a single instance of `Invite`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inviteId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> deleteInviteWithHttpInfo(String inviteId, { String idempotencyKey }) async {
    // Verify required params are set.
    if (inviteId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inviteId');
    }

    final path = r'/invites/{invite_id}'
      .replaceAll('{' + 'invite_id' + '}', inviteId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Deletes an Invite
  ///
  /// Deletes a single instance of `Invite`
  ///
  /// Parameters:
  ///
  /// * [String] inviteId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<void> deleteInvite(String inviteId, { String idempotencyKey }) async {
    final response = await deleteInviteWithHttpInfo(inviteId,  idempotencyKey: idempotencyKey );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get an Invite
  ///
  /// Gets the details of a single instance of a `Invite`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inviteId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<Response> getInviteWithHttpInfo(String inviteId, { String include }) async {
    // Verify required params are set.
    if (inviteId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inviteId');
    }

    final path = r'/invites/{invite_id}'
      .replaceAll('{' + 'invite_id' + '}', inviteId.toString());

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

  /// Get an Invite
  ///
  /// Gets the details of a single instance of a `Invite`.
  ///
  /// Parameters:
  ///
  /// * [String] inviteId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<InviteDetail> getInvite(String inviteId, { String include }) async {
    final response = await getInviteWithHttpInfo(inviteId,  include: include );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteDetail',) as InviteDetail;
        }
    return Future<InviteDetail>.value(null);
  }

  /// List all Invites
  ///
  /// Gets a list of all `Invite` entities.
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
  ///   Filters by `first_name`, `last_name`, `company`, and `email`
  ///
  /// * [String] withColours:
  ///   A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
  ///
  /// * [String] locationIds:
  ///   A comma separated list of Location IDs
  ///
  /// * [String] sortBy:
  ///   Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION`
  ///
  /// * [DateTime] startsBefore:
  ///   Filters results to all those *before* the provided datetime
  ///
  /// * [DateTime] startsAfter:
  ///   Filters results to all those *after* the provided datetime
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  ///
  /// * [bool] isApproved:
  ///   True to return approved and auto approved invites, False to return pending and rejected invites
  ///
  /// * [DateTime] activeAfter:
  ///   Checks that an invite hasn't yet started, or has started and is still active after a specified time
  ///
  /// * [DateTime] activeBefore:
  ///   Checks that an invite hasn't ended before a specified time
  Future<Response> getInvitesWithHttpInfo({ int limit, int offset, String query, String withColours, String locationIds, String sortBy, DateTime startsBefore, DateTime startsAfter, String include, bool isApproved, DateTime activeAfter, DateTime activeBefore }) async {
    // Verify required params are set.

    final path = r'/invites';

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
    if (withColours != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'with_colours', withColours));
    }
    if (locationIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'location_ids', locationIds));
    }
    if (sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort_by', sortBy));
    }
    if (startsBefore != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'starts_before', startsBefore));
    }
    if (startsAfter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'starts_after', startsAfter));
    }
    if (include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include', include));
    }
    if (isApproved != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'is_approved', isApproved));
    }
    if (activeAfter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'active_after', activeAfter));
    }
    if (activeBefore != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'active_before', activeBefore));
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

  /// List all Invites
  ///
  /// Gets a list of all `Invite` entities.
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
  ///   Filters by `first_name`, `last_name`, `company`, and `email`
  ///
  /// * [String] withColours:
  ///   A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
  ///
  /// * [String] locationIds:
  ///   A comma separated list of Location IDs
  ///
  /// * [String] sortBy:
  ///   Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION`
  ///
  /// * [DateTime] startsBefore:
  ///   Filters results to all those *before* the provided datetime
  ///
  /// * [DateTime] startsAfter:
  ///   Filters results to all those *after* the provided datetime
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  ///
  /// * [bool] isApproved:
  ///   True to return approved and auto approved invites, False to return pending and rejected invites
  ///
  /// * [DateTime] activeAfter:
  ///   Checks that an invite hasn't yet started, or has started and is still active after a specified time
  ///
  /// * [DateTime] activeBefore:
  ///   Checks that an invite hasn't ended before a specified time
  Future<PaginatedInvitesList> getInvites({ int limit, int offset, String query, String withColours, String locationIds, String sortBy, DateTime startsBefore, DateTime startsAfter, String include, bool isApproved, DateTime activeAfter, DateTime activeBefore }) async {
    final response = await getInvitesWithHttpInfo( limit: limit, offset: offset, query: query, withColours: withColours, locationIds: locationIds, sortBy: sortBy, startsBefore: startsBefore, startsAfter: startsAfter, include: include, isApproved: isApproved, activeAfter: activeAfter, activeBefore: activeBefore );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedInvitesList',) as PaginatedInvitesList;
        }
    return Future<PaginatedInvitesList>.value(null);
  }

  /// Update an Invite
  ///
  /// Updates an existing `Invite`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inviteId (required):
  ///
  /// * [InviteUpdateParams] inviteUpdateParams (required):
  ///   Updated `Invite` information.
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> updateInviteWithHttpInfo(String inviteId, InviteUpdateParams inviteUpdateParams, { String idempotencyKey }) async {
    // Verify required params are set.
    if (inviteId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inviteId');
    }
    if (inviteUpdateParams == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inviteUpdateParams');
    }

    final path = r'/invites/{invite_id}'
      .replaceAll('{' + 'invite_id' + '}', inviteId.toString());

    Object postBody = inviteUpdateParams;

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

  /// Update an Invite
  ///
  /// Updates an existing `Invite`.
  ///
  /// Parameters:
  ///
  /// * [String] inviteId (required):
  ///
  /// * [InviteUpdateParams] inviteUpdateParams (required):
  ///   Updated `Invite` information.
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<InviteDetail> updateInvite(String inviteId, InviteUpdateParams inviteUpdateParams, { String idempotencyKey }) async {
    final response = await updateInviteWithHttpInfo(inviteId, inviteUpdateParams,  idempotencyKey: idempotencyKey );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteDetail',) as InviteDetail;
        }
    return Future<InviteDetail>.value(null);
  }
}
