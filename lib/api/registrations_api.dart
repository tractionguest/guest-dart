//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RegistrationsApi {
  RegistrationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get a Registration
  ///
  /// Gets the details of a single instance of a `Registration`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] registrationId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<Response> getRegistrationWithHttpInfo(String registrationId, { String include }) async {
    // Verify required params are set.
    if (registrationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: registrationId');
    }

    final path = r'/registrations/{registration_id}'
      .replaceAll('{' + 'registration_id' + '}', registrationId.toString());

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

  /// Get a Registration
  ///
  /// Gets the details of a single instance of a `Registration`
  ///
  /// Parameters:
  ///
  /// * [String] registrationId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include
  Future<RegistrationDetail> getRegistration(String registrationId, { String include }) async {
    final response = await getRegistrationWithHttpInfo(registrationId,  include: include );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegistrationDetail',) as RegistrationDetail;
        }
    return Future<RegistrationDetail>.value(null);
  }

  /// List all Registrations
  ///
  /// Gets a list of all `Registration` entities.
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
  /// * [String] locationIds:
  ///   A comma separated list of Location IDs
  ///
  /// * [String] createdBefore:
  ///   Restricts results to only those that were created before the provided date
  ///
  /// * [String] createdAfter:
  ///   Restricts results to only those that were created after the provided date
  ///
  /// * [bool] needsConfirmation:
  ///   A confirmed `Registration` is one with an associated `Invite`. This filter returns those without an `Invite` when true, and those with an `Invite` when false.
  Future<Response> getRegistrationsWithHttpInfo({ int limit, int offset, String locationIds, String createdBefore, String createdAfter, bool needsConfirmation }) async {
    // Verify required params are set.

    final path = r'/registrations';

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
    if (createdBefore != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'created_before', createdBefore));
    }
    if (createdAfter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'created_after', createdAfter));
    }
    if (needsConfirmation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'needs_confirmation', needsConfirmation));
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

  /// List all Registrations
  ///
  /// Gets a list of all `Registration` entities.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  ///
  /// * [String] locationIds:
  ///   A comma separated list of Location IDs
  ///
  /// * [String] createdBefore:
  ///   Restricts results to only those that were created before the provided date
  ///
  /// * [String] createdAfter:
  ///   Restricts results to only those that were created after the provided date
  ///
  /// * [bool] needsConfirmation:
  ///   A confirmed `Registration` is one with an associated `Invite`. This filter returns those without an `Invite` when true, and those with an `Invite` when false.
  Future<PaginatedRegistrationsList> getRegistrations({ int limit, int offset, String locationIds, String createdBefore, String createdAfter, bool needsConfirmation }) async {
    final response = await getRegistrationsWithHttpInfo( limit: limit, offset: offset, locationIds: locationIds, createdBefore: createdBefore, createdAfter: createdAfter, needsConfirmation: needsConfirmation );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedRegistrationsList',) as PaginatedRegistrationsList;
        }
    return Future<PaginatedRegistrationsList>.value(null);
  }
}
