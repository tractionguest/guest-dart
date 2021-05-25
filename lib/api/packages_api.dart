//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PackagesApi {
  PackagesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create package
  ///
  /// Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PackageCreateParams] packageCreateParams:
  ///   Parameters for creating a package
  Future<Response> createPackageWithHttpInfo({ PackageCreateParams packageCreateParams }) async {
    // Verify required params are set.

    final path = r'/packages';

    Object postBody = packageCreateParams;

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

  /// Create package
  ///
  /// Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.
  ///
  /// Parameters:
  ///
  /// * [PackageCreateParams] packageCreateParams:
  ///   Parameters for creating a package
  Future<Package> createPackage({ PackageCreateParams packageCreateParams }) async {
    final response = await createPackageWithHttpInfo( packageCreateParams: packageCreateParams );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Package',) as Package;
        }
    return Future<Package>.value(null);
  }

  /// Delete a pacakge
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] packageId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<Response> deletePackageWithHttpInfo(String packageId, { String idempotencyKey }) async {
    // Verify required params are set.
    if (packageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: packageId');
    }

    final path = r'/packages/{package_id}'
      .replaceAll('{' + 'package_id' + '}', packageId.toString());

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

  /// Delete a pacakge
  ///
  /// Parameters:
  ///
  /// * [String] packageId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<void> deletePackage(String packageId, { String idempotencyKey }) async {
    final response = await deletePackageWithHttpInfo(packageId,  idempotencyKey: idempotencyKey );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Package
  ///
  /// Gets the details of a single instance of a Package
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] packageId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include 
  Future<Response> getPackageWithHttpInfo(String packageId, { String include }) async {
    // Verify required params are set.
    if (packageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: packageId');
    }

    final path = r'/packages/{package_id}'
      .replaceAll('{' + 'package_id' + '}', packageId.toString());

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

  /// Get Package
  ///
  /// Gets the details of a single instance of a Package
  ///
  /// Parameters:
  ///
  /// * [String] packageId (required):
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include 
  Future<Package> getPackage(String packageId, { String include }) async {
    final response = await getPackageWithHttpInfo(packageId,  include: include );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Package',) as Package;
        }
    return Future<Package>.value(null);
  }

  /// Get packages
  ///
  /// Gets a list of [Package] entities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] locationIds:
  ///   A comma separated list of Location ids for filtering. i.e. '1,2,3' Will return all packages from all locations if none are specified
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include. Possible values: 'recipient', 'location', 'image'
  ///
  /// * [bool] pickedUp:
  ///   Filters packages by their \"picked_up\" state..
  ///
  /// * [String] query:
  ///   Searches for packages by recipient name
  Future<Response> getPackagesWithHttpInfo({ String locationIds, int limit, int offset, String include, bool pickedUp, String query }) async {
    // Verify required params are set.

    final path = r'/packages';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (locationIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'location_ids', locationIds));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include', include));
    }
    if (pickedUp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'picked_up', pickedUp));
    }
    if (query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'query', query));
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

  /// Get packages
  ///
  /// Gets a list of [Package] entities.
  ///
  /// Parameters:
  ///
  /// * [String] locationIds:
  ///   A comma separated list of Location ids for filtering. i.e. '1,2,3' Will return all packages from all locations if none are specified
  ///
  /// * [int] limit:
  ///   Limits the results to a specified number, defaults to 50
  ///
  /// * [int] offset:
  ///   Offsets the results to a specified number, defaults to 0
  ///
  /// * [String] include:
  ///   A list of comma-separated related models to include. Possible values: 'recipient', 'location', 'image'
  ///
  /// * [bool] pickedUp:
  ///   Filters packages by their \"picked_up\" state..
  ///
  /// * [String] query:
  ///   Searches for packages by recipient name
  Future<PaginatedPackagesList> getPackages({ String locationIds, int limit, int offset, String include, bool pickedUp, String query }) async {
    final response = await getPackagesWithHttpInfo( locationIds: locationIds, limit: limit, offset: offset, include: include, pickedUp: pickedUp, query: query );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedPackagesList',) as PaginatedPackagesList;
        }
    return Future<PaginatedPackagesList>.value(null);
  }

  /// Update Package
  ///
  /// Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package's intended recipient. Changes package_state to 'recipient_matched' if a match hasn't been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package's carrier/courier information 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] packageId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  ///
  /// * [PackageUpdateParams] packageUpdateParams:
  Future<Response> updatePackageWithHttpInfo(String packageId, { String idempotencyKey, PackageUpdateParams packageUpdateParams }) async {
    // Verify required params are set.
    if (packageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: packageId');
    }

    final path = r'/packages/{package_id}'
      .replaceAll('{' + 'package_id' + '}', packageId.toString());

    Object postBody = packageUpdateParams;

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

  /// Update Package
  ///
  /// Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package's intended recipient. Changes package_state to 'recipient_matched' if a match hasn't been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package's carrier/courier information 
  ///
  /// Parameters:
  ///
  /// * [String] packageId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  ///
  /// * [PackageUpdateParams] packageUpdateParams:
  Future<Package> updatePackage(String packageId, { String idempotencyKey, PackageUpdateParams packageUpdateParams }) async {
    final response = await updatePackageWithHttpInfo(packageId,  idempotencyKey: idempotencyKey, packageUpdateParams: packageUpdateParams );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Package',) as Package;
        }
    return Future<Package>.value(null);
  }
}
