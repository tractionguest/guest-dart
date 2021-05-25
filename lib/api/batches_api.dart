//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BatchesApi {
  BatchesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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

  /// Get a BatchJob
  ///
  /// Retrieve a given `BatchJob` entity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] batchId (required):
  Future<Response> getBatchWithHttpInfo(String batchId) async {
    // Verify required params are set.
    if (batchId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: batchId');
    }

    final path = r'/batches/{batch_id}'
      .replaceAll('{' + 'batch_id' + '}', batchId.toString());

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

  /// Get a BatchJob
  ///
  /// Retrieve a given `BatchJob` entity.
  ///
  /// Parameters:
  ///
  /// * [String] batchId (required):
  Future<BatchJob> getBatch(String batchId) async {
    final response = await getBatchWithHttpInfo(batchId);
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
}
