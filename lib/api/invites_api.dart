//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InvitesApi {
  InvitesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Multiple Invites
  ///
  /// Queues up a \"delete\" background task for one or more `Invite` entities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IdentifierListV1] identifierListV1:
  ///   
  Future<Response> batchDeleteInvitesWithHttpInfo({ IdentifierListV1? identifierListV1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/invites/batch_delete';

    // ignore: prefer_final_locals
    Object? postBody = identifierListV1;

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

  /// Delete Multiple Invites
  ///
  /// Queues up a \"delete\" background task for one or more `Invite` entities.
  ///
  /// Parameters:
  ///
  /// * [IdentifierListV1] identifierListV1:
  ///   
  Future<BatchJobV1?> batchDeleteInvites({ IdentifierListV1? identifierListV1, }) async {
    final response = await batchDeleteInvitesWithHttpInfo( identifierListV1: identifierListV1, );
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
  /// * [InviteCreateParamsV1] inviteCreateParamsV1 (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> createLocationInviteWithHttpInfo(String locationId, InviteCreateParamsV1 inviteCreateParamsV1, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/locations/{location_id}/invites'
      .replaceAll('{location_id}', locationId);

    // ignore: prefer_final_locals
    Object? postBody = inviteCreateParamsV1;

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

  /// Create an Invite
  ///
  /// Creates a new `Invite` for a specific `Location`.
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  ///
  /// * [InviteCreateParamsV1] inviteCreateParamsV1 (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<InviteDetailV1?> createLocationInvite(String locationId, InviteCreateParamsV1 inviteCreateParamsV1, { String? idempotencyKey, }) async {
    final response = await createLocationInviteWithHttpInfo(locationId, inviteCreateParamsV1,  idempotencyKey: idempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteDetailV1',) as InviteDetailV1;
    
    }
    return null;
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
  Future<Response> createRegistrationInviteWithHttpInfo(String registrationId, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/registrations/{registration_id}/invites'
      .replaceAll('{registration_id}', registrationId);

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
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
  Future<InviteDetailV1?> createRegistrationInvite(String registrationId, { String? idempotencyKey, }) async {
    final response = await createRegistrationInviteWithHttpInfo(registrationId,  idempotencyKey: idempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteDetailV1',) as InviteDetailV1;
    
    }
    return null;
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
  Future<Response> deleteInviteWithHttpInfo(String inviteId, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/invites/{invite_id}'
      .replaceAll('{invite_id}', inviteId);

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
  Future<void> deleteInvite(String inviteId, { String? idempotencyKey, }) async {
    final response = await deleteInviteWithHttpInfo(inviteId,  idempotencyKey: idempotencyKey, );
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
  ///   A list of comma-separated related models to include i.e., 'assigned_stall'
  Future<Response> getInviteWithHttpInfo(String inviteId, { String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/invites/{invite_id}'
      .replaceAll('{invite_id}', inviteId);

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

  /// Get an Invite
  ///
  /// Gets the details of a single instance of a `Invite`.
  ///
  /// Parameters:
  ///
  /// * [String] inviteId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include i.e., 'assigned_stall'
  Future<InviteDetailV1?> getInvite(String inviteId, { String? include, }) async {
    final response = await getInviteWithHttpInfo(inviteId,  include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteDetailV1',) as InviteDetailV1;
    
    }
    return null;
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
  ///   A list of comma-separated related models to include i.e., 'assigned_stall'
  ///
  /// * [bool] isApproved:
  ///   True to return approved and auto approved invites, False to return pending and rejected invites
  ///
  /// * [DateTime] activeAfter:
  ///   Checks that an invite hasn't yet started, or has started and is still active after a specified time
  ///
  /// * [DateTime] activeBefore:
  ///   Checks that an invite hasn't ended before a specified time
  Future<Response> getInvitesWithHttpInfo({ int? limit, int? offset, String? query, String? withColours, String? locationIds, String? sortBy, DateTime? startsBefore, DateTime? startsAfter, String? include, bool? isApproved, DateTime? activeAfter, DateTime? activeBefore, }) async {
    // ignore: prefer_const_declarations
    final path = r'/invites';

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
    if (locationIds != null) {
      queryParams.addAll(_queryParams('', 'location_ids', locationIds));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sort_by', sortBy));
    }
    if (startsBefore != null) {
      queryParams.addAll(_queryParams('', 'starts_before', startsBefore));
    }
    if (startsAfter != null) {
      queryParams.addAll(_queryParams('', 'starts_after', startsAfter));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }
    if (isApproved != null) {
      queryParams.addAll(_queryParams('', 'is_approved', isApproved));
    }
    if (activeAfter != null) {
      queryParams.addAll(_queryParams('', 'active_after', activeAfter));
    }
    if (activeBefore != null) {
      queryParams.addAll(_queryParams('', 'active_before', activeBefore));
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
  ///   A list of comma-separated related models to include i.e., 'assigned_stall'
  ///
  /// * [bool] isApproved:
  ///   True to return approved and auto approved invites, False to return pending and rejected invites
  ///
  /// * [DateTime] activeAfter:
  ///   Checks that an invite hasn't yet started, or has started and is still active after a specified time
  ///
  /// * [DateTime] activeBefore:
  ///   Checks that an invite hasn't ended before a specified time
  Future<PaginatedInvitesListV1?> getInvites({ int? limit, int? offset, String? query, String? withColours, String? locationIds, String? sortBy, DateTime? startsBefore, DateTime? startsAfter, String? include, bool? isApproved, DateTime? activeAfter, DateTime? activeBefore, }) async {
    final response = await getInvitesWithHttpInfo( limit: limit, offset: offset, query: query, withColours: withColours, locationIds: locationIds, sortBy: sortBy, startsBefore: startsBefore, startsAfter: startsAfter, include: include, isApproved: isApproved, activeAfter: activeAfter, activeBefore: activeBefore, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedInvitesListV1',) as PaginatedInvitesListV1;
    
    }
    return null;
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
  /// * [InviteUpdateParamsV1] inviteUpdateParamsV1 (required):
  ///   Updated `Invite` information.
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> updateInviteWithHttpInfo(String inviteId, InviteUpdateParamsV1 inviteUpdateParamsV1, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/invites/{invite_id}'
      .replaceAll('{invite_id}', inviteId);

    // ignore: prefer_final_locals
    Object? postBody = inviteUpdateParamsV1;

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

  /// Update an Invite
  ///
  /// Updates an existing `Invite`.
  ///
  /// Parameters:
  ///
  /// * [String] inviteId (required):
  ///
  /// * [InviteUpdateParamsV1] inviteUpdateParamsV1 (required):
  ///   Updated `Invite` information.
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<InviteDetailV1?> updateInvite(String inviteId, InviteUpdateParamsV1 inviteUpdateParamsV1, { String? idempotencyKey, }) async {
    final response = await updateInviteWithHttpInfo(inviteId, inviteUpdateParamsV1,  idempotencyKey: idempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteDetailV1',) as InviteDetailV1;
    
    }
    return null;
  }
}
