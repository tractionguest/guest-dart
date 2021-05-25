//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuditLogsApi {
  AuditLogsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> getAuditLogWithHttpInfo(String auditLogId) async {
    // Verify required params are set.
    if (auditLogId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: auditLogId');
    }

    final path = r'/audit_logs/{audit_log_id}'
      .replaceAll('{' + 'audit_log_id' + '}', auditLogId.toString());

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

  /// Get an AuditLog
  ///
  /// Gets the details of a single instance of an `AuditLog`.
  ///
  /// Parameters:
  ///
  /// * [String] auditLogId (required):
  Future<AuditLog> getAuditLog(String auditLogId) async {
    final response = await getAuditLogWithHttpInfo(auditLogId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuditLog',) as AuditLog;
        }
    return Future<AuditLog>.value(null);
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
  Future<Response> getAuditLogsWithHttpInfo({ int limit, int offset, String sortBy, int auditableId, String auditableType, String actionType, int userId }) async {
    // Verify required params are set.

    final path = r'/audit_logs';

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
    if (sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort_by', sortBy));
    }
    if (auditableId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'auditable_id', auditableId));
    }
    if (auditableType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'auditable_type', auditableType));
    }
    if (actionType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'action_type', actionType));
    }
    if (userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'user_id', userId));
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
  Future<PaginatedAuditLogsList> getAuditLogs({ int limit, int offset, String sortBy, int auditableId, String auditableType, String actionType, int userId }) async {
    final response = await getAuditLogsWithHttpInfo( limit: limit, offset: offset, sortBy: sortBy, auditableId: auditableId, auditableType: auditableType, actionType: actionType, userId: userId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAuditLogsList',) as PaginatedAuditLogsList;
        }
    return Future<PaginatedAuditLogsList>.value(null);
  }
}
