//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GroupVisitsApi {
  GroupVisitsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new Group Visit (Appointment)
  ///
  /// Creates a `GroupVisit` (Appointment)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  ///
  /// * [GroupVisitCreateParams] groupVisitCreateParams:
  Future<Response> createGroupVisitWithHttpInfo({ String idempotencyKey, GroupVisitCreateParams groupVisitCreateParams }) async {
    // Verify required params are set.

    final path = r'/group_visits';

    Object postBody = groupVisitCreateParams;

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

  /// Create a new Group Visit (Appointment)
  ///
  /// Creates a `GroupVisit` (Appointment)
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  ///
  /// * [GroupVisitCreateParams] groupVisitCreateParams:
  Future<GroupVisit> createGroupVisit({ String idempotencyKey, GroupVisitCreateParams groupVisitCreateParams }) async {
    final response = await createGroupVisitWithHttpInfo( idempotencyKey: idempotencyKey, groupVisitCreateParams: groupVisitCreateParams );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupVisit',) as GroupVisit;
        }
    return Future<GroupVisit>.value(null);
  }

  /// Delete a Group Visit (Appointment)
  ///
  /// Deletes a single instance of `GroupVisit` (Appointment).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupVisitId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> deleteGroupVisitWithHttpInfo(String groupVisitId, { String idempotencyKey }) async {
    // Verify required params are set.
    if (groupVisitId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupVisitId');
    }

    final path = r'/group_visits/{group_visit_id}'
      .replaceAll('{' + 'group_visit_id' + '}', groupVisitId.toString());

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

  /// Delete a Group Visit (Appointment)
  ///
  /// Deletes a single instance of `GroupVisit` (Appointment).
  ///
  /// Parameters:
  ///
  /// * [String] groupVisitId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<void> deleteGroupVisit(String groupVisitId, { String idempotencyKey }) async {
    final response = await deleteGroupVisitWithHttpInfo(groupVisitId,  idempotencyKey: idempotencyKey );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a Group Visit (Appointment)
  ///
  /// Gets the details of a single instance of a `GroupVisit`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupVisitId (required):
  Future<Response> getGroupVisitWithHttpInfo(String groupVisitId) async {
    // Verify required params are set.
    if (groupVisitId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupVisitId');
    }

    final path = r'/group_visits/{group_visit_id}'
      .replaceAll('{' + 'group_visit_id' + '}', groupVisitId.toString());

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

  /// Get a Group Visit (Appointment)
  ///
  /// Gets the details of a single instance of a `GroupVisit`.
  ///
  /// Parameters:
  ///
  /// * [String] groupVisitId (required):
  Future<GroupVisit> getGroupVisit(String groupVisitId) async {
    final response = await getGroupVisitWithHttpInfo(groupVisitId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupVisit',) as GroupVisit;
        }
    return Future<GroupVisit>.value(null);
  }

  /// List all Group Visits (Appointments)
  ///
  /// Gets a list of all `GroupVisit` entities (Appointments).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] limit:
  ///   Limits the results to a specified number. Defaults to 50.
  ///
  /// * [String] offset:
  ///   Offsets the results to a specified number. Defaults to 0.
  ///
  /// * [String] locationIds:
  ///   A comma-separated string of locations IDs, to only show group visits (appointments) from those locations.
  ///
  /// * [String] sortWith:
  ///   A combination of attribute and direction, joined with an underscore, for sorting. Valid attributes are: `created_at`, `updated_at`, `name`, and `start_time`. Valid directions are `asc` and `desc`. E.g., `name_desc`, `start_time_asc`.
  Future<Response> getGroupVisitsWithHttpInfo({ String limit, String offset, String locationIds, String sortWith }) async {
    // Verify required params are set.

    final path = r'/group_visits';

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
    if (locationIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'location_ids', locationIds));
    }
    if (sortWith != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort_with', sortWith));
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

  /// List all Group Visits (Appointments)
  ///
  /// Gets a list of all `GroupVisit` entities (Appointments).
  ///
  /// Parameters:
  ///
  /// * [String] limit:
  ///   Limits the results to a specified number. Defaults to 50.
  ///
  /// * [String] offset:
  ///   Offsets the results to a specified number. Defaults to 0.
  ///
  /// * [String] locationIds:
  ///   A comma-separated string of locations IDs, to only show group visits (appointments) from those locations.
  ///
  /// * [String] sortWith:
  ///   A combination of attribute and direction, joined with an underscore, for sorting. Valid attributes are: `created_at`, `updated_at`, `name`, and `start_time`. Valid directions are `asc` and `desc`. E.g., `name_desc`, `start_time_asc`.
  Future<PaginatedGroupVisitsList> getGroupVisits({ String limit, String offset, String locationIds, String sortWith }) async {
    final response = await getGroupVisitsWithHttpInfo( limit: limit, offset: offset, locationIds: locationIds, sortWith: sortWith );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedGroupVisitsList',) as PaginatedGroupVisitsList;
        }
    return Future<PaginatedGroupVisitsList>.value(null);
  }

  /// Update a Group Visit (Appointment)
  ///
  /// Updates an existing `GroupVisit` (Appointment).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupVisitId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  ///
  /// * [GroupVisitUpdateParams] groupVisitUpdateParams:
  Future<Response> updateGroupVisitWithHttpInfo(String groupVisitId, { String idempotencyKey, GroupVisitUpdateParams groupVisitUpdateParams }) async {
    // Verify required params are set.
    if (groupVisitId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupVisitId');
    }

    final path = r'/group_visits/{group_visit_id}'
      .replaceAll('{' + 'group_visit_id' + '}', groupVisitId.toString());

    Object postBody = groupVisitUpdateParams;

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

  /// Update a Group Visit (Appointment)
  ///
  /// Updates an existing `GroupVisit` (Appointment).
  ///
  /// Parameters:
  ///
  /// * [String] groupVisitId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  ///
  /// * [GroupVisitUpdateParams] groupVisitUpdateParams:
  Future<GroupVisit> updateGroupVisit(String groupVisitId, { String idempotencyKey, GroupVisitUpdateParams groupVisitUpdateParams }) async {
    final response = await updateGroupVisitWithHttpInfo(groupVisitId,  idempotencyKey: idempotencyKey, groupVisitUpdateParams: groupVisitUpdateParams );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupVisit',) as GroupVisit;
        }
    return Future<GroupVisit>.value(null);
  }
}
