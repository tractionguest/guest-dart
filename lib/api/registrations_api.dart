//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RegistrationsApi {
  RegistrationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> getRegistrationWithHttpInfo(String registrationId, { String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/registrations/{registration_id}'
      .replaceAll('{registration_id}', registrationId);

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
  Future<RegistrationDetailV1?> getRegistration(String registrationId, { String? include, }) async {
    final response = await getRegistrationWithHttpInfo(registrationId,  include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegistrationDetailV1',) as RegistrationDetailV1;
    
    }
    return null;
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
  Future<Response> getRegistrationsWithHttpInfo({ int? limit, int? offset, String? locationIds, String? createdBefore, String? createdAfter, bool? needsConfirmation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/registrations';

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
    if (locationIds != null) {
      queryParams.addAll(_queryParams('', 'location_ids', locationIds));
    }
    if (createdBefore != null) {
      queryParams.addAll(_queryParams('', 'created_before', createdBefore));
    }
    if (createdAfter != null) {
      queryParams.addAll(_queryParams('', 'created_after', createdAfter));
    }
    if (needsConfirmation != null) {
      queryParams.addAll(_queryParams('', 'needs_confirmation', needsConfirmation));
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
  Future<PaginatedRegistrationsListV1?> getRegistrations({ int? limit, int? offset, String? locationIds, String? createdBefore, String? createdAfter, bool? needsConfirmation, }) async {
    final response = await getRegistrationsWithHttpInfo( limit: limit, offset: offset, locationIds: locationIds, createdBefore: createdBefore, createdAfter: createdAfter, needsConfirmation: needsConfirmation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedRegistrationsListV1',) as PaginatedRegistrationsListV1;
    
    }
    return null;
  }
}
