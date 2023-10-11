//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://us.tractionguest.com/api/v3', this.authentication});

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final Authentication? authentication;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    _updateParamsForAuth(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Update query and header parameters based on authentication settings.
  void _updateParamsForAuth(
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    if (authentication != null) {
      authentication!.applyToParams(queryParams, headerParams);
    }
  }

  static dynamic _deserialize(dynamic value, String targetType, {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'AuditLogChangeV1':
          return AuditLogChangeV1.fromJson(value);
        case 'AuditLogV1':
          return AuditLogV1.fromJson(value);
        case 'BatchJobV1':
          return BatchJobV1.fromJson(value);
        case 'CapacityByHourResponseV1':
          return CapacityByHourResponseV1.fromJson(value);
        case 'CapacityForecastV1':
          return CapacityForecastV1.fromJson(value);
        case 'CapacityV1':
          return CapacityV1.fromJson(value);
        case 'CustomFieldV1':
          return CustomFieldV1.fromJson(value);
        case 'DocusignV1':
          return DocusignV1.fromJson(value);
        case 'EmailTemplateV1':
          return EmailTemplateV1.fromJson(value);
        case 'ErrorV1':
          return ErrorV1.fromJson(value);
        case 'ErrorsListV1':
          return ErrorsListV1.fromJson(value);
        case 'ExternalWatchlistResultV1':
          return ExternalWatchlistResultV1.fromJson(value);
        case 'GroupVisitCreateParamsV1':
          return GroupVisitCreateParamsV1.fromJson(value);
        case 'GroupVisitUpdateParamsV1':
          return GroupVisitUpdateParamsV1.fromJson(value);
        case 'GroupVisitV1':
          return GroupVisitV1.fromJson(value);
        case 'GuestResponseV1':
          return GuestResponseV1.fromJson(value);
        case 'HostBatchCreateParamsV1':
          return HostBatchCreateParamsV1.fromJson(value);
        case 'HostCreateParamsV1':
          return HostCreateParamsV1.fromJson(value);
        case 'HostV1':
          return HostV1.fromJson(value);
        case 'IdentifierListV1':
          return IdentifierListV1.fromJson(value);
        case 'ImageV1':
          return ImageV1.fromJson(value);
        case 'InternalWatchlistResultV1':
          return InternalWatchlistResultV1.fromJson(value);
        case 'InviteCreateParamsV1':
          return InviteCreateParamsV1.fromJson(value);
        case 'InviteCreateParamsV1ParkingStall':
          return InviteCreateParamsV1ParkingStall.fromJson(value);
        case 'InviteDetailV1':
          return InviteDetailV1.fromJson(value);
        case 'InviteDetailV1InvitesParkingLot':
          return InviteDetailV1InvitesParkingLot.fromJson(value);
        case 'InviteUpdateParamsV1':
          return InviteUpdateParamsV1.fromJson(value);
        case 'InviteV1':
          return InviteV1.fromJson(value);
        case 'InviteWatchlistV1':
          return InviteWatchlistV1.fromJson(value);
        case 'LocationV1':
          return LocationV1.fromJson(value);
        case 'NotificationTriggerCreateParamsV1':
          return NotificationTriggerCreateParamsV1.fromJson(value);
        case 'NotificationTriggerV1':
          return NotificationTriggerV1.fromJson(value);
        case 'PackageCreateParamsV1':
          return PackageCreateParamsV1.fromJson(value);
        case 'PackageUpdateParamsV1':
          return PackageUpdateParamsV1.fromJson(value);
        case 'PackageV1':
          return PackageV1.fromJson(value);
        case 'PaginatedAuditLogsListV1':
          return PaginatedAuditLogsListV1.fromJson(value);
        case 'PaginatedEmailTemplatesListV1':
          return PaginatedEmailTemplatesListV1.fromJson(value);
        case 'PaginatedGroupVisitsListV1':
          return PaginatedGroupVisitsListV1.fromJson(value);
        case 'PaginatedHostsListV1':
          return PaginatedHostsListV1.fromJson(value);
        case 'PaginatedInvitesListV1':
          return PaginatedInvitesListV1.fromJson(value);
        case 'PaginatedLocationsListV1':
          return PaginatedLocationsListV1.fromJson(value);
        case 'PaginatedPackagesListV1':
          return PaginatedPackagesListV1.fromJson(value);
        case 'PaginatedRegistrationsListV1':
          return PaginatedRegistrationsListV1.fromJson(value);
        case 'PaginatedSigninsListV1':
          return PaginatedSigninsListV1.fromJson(value);
        case 'PaginatedWatchlistListV1':
          return PaginatedWatchlistListV1.fromJson(value);
        case 'PaginationV1':
          return PaginationV1.fromJson(value);
        case 'PermissionGroupV1':
          return PermissionGroupV1.fromJson(value);
        case 'RegistrationDetailV1':
          return RegistrationDetailV1.fromJson(value);
        case 'RegistrationV1':
          return RegistrationV1.fromJson(value);
        case 'SignableDocumentV1':
          return SignableDocumentV1.fromJson(value);
        case 'SigninAcknowledgementV1':
          return SigninAcknowledgementV1.fromJson(value);
        case 'SigninCreateParamsV1':
          return SigninCreateParamsV1.fromJson(value);
        case 'SigninDataV1':
          return SigninDataV1.fromJson(value);
        case 'SigninDetailV1':
          return SigninDetailV1.fromJson(value);
        case 'SigninUpdateParamsV1':
          return SigninUpdateParamsV1.fromJson(value);
        case 'SigninV1':
          return SigninV1.fromJson(value);
        case 'SigninWatchlistV1':
          return SigninWatchlistV1.fromJson(value);
        case 'SimpleSignatureV1':
          return SimpleSignatureV1.fromJson(value);
        case 'UserV1':
          return UserV1.fromJson(value);
        case 'VisitorV1':
          return VisitorV1.fromJson(value);
        case 'WatchlistCreateParamsV1':
          return WatchlistCreateParamsV1.fromJson(value);
        case 'WatchlistMatchV1':
          return WatchlistMatchV1.fromJson(value);
        case 'WatchlistSearchV1':
          return WatchlistSearchV1.fromJson(value);
        case 'WatchlistV1':
          return WatchlistV1.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
