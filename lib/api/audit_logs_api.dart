//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuditLogsApi {
  AuditLogsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get an AuditLog
  ///
  /// Gets the details of a single instance of an `AuditLog`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] auditLogId (required):
  Future<Response> getAuditLogWithHttpInfo(String auditLogId,) async {
    // ignore: prefer_const_declarations
    final path = r'/audit_logs/{audit_log_id}'
      .replaceAll('{audit_log_id}', auditLogId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get an AuditLog
  ///
  /// Gets the details of a single instance of an `AuditLog`.
  ///
  /// Parameters:
  ///
  /// * [String] auditLogId (required):
  Future<AuditLogV1?> getAuditLog(String auditLogId,) async {
    final response = await getAuditLogWithHttpInfo(auditLogId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuditLogV1',) as AuditLogV1;
    
    }
    return null;
  }

  /// List all AuditLogs
  ///
  /// Gets a list of all `AuditLog` entities.
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
  /// * [String] sortBy:
  ///   Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION`
  ///
  /// * [int] auditableId:
  ///   The unique ID of a model that has associated audit logs
  ///
  /// * [String] auditableType:
  ///   The name of the model that has associated audit logs. Valid values include: - `user` - `device_configuration` - `signin` - `invite` - `watchlist_record` - `account_preference` - `signout` - `host` - `invite_watchlist` - `location_preference` - `parking_lot` - `parking_stall` - `permission_bundle` - `person` - `physical_access_grant` - `physical_access_provider` - `physical_access_rule` - `security_badge_type` - `signin_watchlist` - `user_group_physical_access_rule` - `visitor` - `bulk_data_batch` 
  ///
  /// * [String] actionType:
  ///   The action performed by the user. Valid values include: - `create` - `update` - `destroy` 
  ///
  /// * [int] userId:
  ///   The ID of the user who performed the database change
  Future<Response> getAuditLogsWithHttpInfo({ int? limit, int? offset, String? sortBy, int? auditableId, String? auditableType, String? actionType, int? userId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/audit_logs';

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
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sort_by', sortBy));
    }
    if (auditableId != null) {
      queryParams.addAll(_queryParams('', 'auditable_id', auditableId));
    }
    if (auditableType != null) {
      queryParams.addAll(_queryParams('', 'auditable_type', auditableType));
    }
    if (actionType != null) {
      queryParams.addAll(_queryParams('', 'action_type', actionType));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
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

  /// List all AuditLogs
  ///
  /// Gets a list of all `AuditLog` entities.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  ///
  /// * [String] sortBy:
  ///   Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION`
  ///
  /// * [int] auditableId:
  ///   The unique ID of a model that has associated audit logs
  ///
  /// * [String] auditableType:
  ///   The name of the model that has associated audit logs. Valid values include: - `user` - `device_configuration` - `signin` - `invite` - `watchlist_record` - `account_preference` - `signout` - `host` - `invite_watchlist` - `location_preference` - `parking_lot` - `parking_stall` - `permission_bundle` - `person` - `physical_access_grant` - `physical_access_provider` - `physical_access_rule` - `security_badge_type` - `signin_watchlist` - `user_group_physical_access_rule` - `visitor` - `bulk_data_batch` 
  ///
  /// * [String] actionType:
  ///   The action performed by the user. Valid values include: - `create` - `update` - `destroy` 
  ///
  /// * [int] userId:
  ///   The ID of the user who performed the database change
  Future<PaginatedAuditLogsListV1?> getAuditLogs({ int? limit, int? offset, String? sortBy, int? auditableId, String? auditableType, String? actionType, int? userId, }) async {
    final response = await getAuditLogsWithHttpInfo( limit: limit, offset: offset, sortBy: sortBy, auditableId: auditableId, auditableType: auditableType, actionType: actionType, userId: userId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAuditLogsListV1',) as PaginatedAuditLogsListV1;
    
    }
    return null;
  }
}
