//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PackagesApi {
  PackagesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create package
  ///
  /// Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PackageCreateParamsV1] packageCreateParamsV1:
  ///   Parameters for creating a package
  Future<Response> createPackageWithHttpInfo({ PackageCreateParamsV1? packageCreateParamsV1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/packages';

    // ignore: prefer_final_locals
    Object? postBody = packageCreateParamsV1;

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

  /// Create package
  ///
  /// Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.
  ///
  /// Parameters:
  ///
  /// * [PackageCreateParamsV1] packageCreateParamsV1:
  ///   Parameters for creating a package
  Future<PackageV1?> createPackage({ PackageCreateParamsV1? packageCreateParamsV1, }) async {
    final response = await createPackageWithHttpInfo( packageCreateParamsV1: packageCreateParamsV1, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PackageV1',) as PackageV1;
    
    }
    return null;
  }

  /// Delete Package
  ///
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
  Future<Response> deletePackageWithHttpInfo(String packageId, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/packages/{package_id}'
      .replaceAll('{package_id}', packageId);

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

  /// Delete Package
  ///
  /// Delete a pacakge
  ///
  /// Parameters:
  ///
  /// * [String] packageId (required):
  ///
  /// * [String] idempotencyKey:
  ///   An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
  Future<void> deletePackage(String packageId, { String? idempotencyKey, }) async {
    final response = await deletePackageWithHttpInfo(packageId,  idempotencyKey: idempotencyKey, );
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
  Future<Response> getPackageWithHttpInfo(String packageId, { String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/packages/{package_id}'
      .replaceAll('{package_id}', packageId);

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
  Future<PackageV1?> getPackage(String packageId, { String? include, }) async {
    final response = await getPackageWithHttpInfo(packageId,  include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PackageV1',) as PackageV1;
    
    }
    return null;
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
  Future<Response> getPackagesWithHttpInfo({ String? locationIds, int? limit, int? offset, String? include, bool? pickedUp, String? query, }) async {
    // ignore: prefer_const_declarations
    final path = r'/packages';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (locationIds != null) {
      queryParams.addAll(_queryParams('', 'location_ids', locationIds));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }
    if (pickedUp != null) {
      queryParams.addAll(_queryParams('', 'picked_up', pickedUp));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
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
  Future<PaginatedPackagesListV1?> getPackages({ String? locationIds, int? limit, int? offset, String? include, bool? pickedUp, String? query, }) async {
    final response = await getPackagesWithHttpInfo( locationIds: locationIds, limit: limit, offset: offset, include: include, pickedUp: pickedUp, query: query, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedPackagesListV1',) as PaginatedPackagesListV1;
    
    }
    return null;
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
  /// * [PackageUpdateParamsV1] packageUpdateParamsV1:
  ///   
  Future<Response> updatePackageWithHttpInfo(String packageId, { String? idempotencyKey, PackageUpdateParamsV1? packageUpdateParamsV1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/packages/{package_id}'
      .replaceAll('{package_id}', packageId);

    // ignore: prefer_final_locals
    Object? postBody = packageUpdateParamsV1;

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
  /// * [PackageUpdateParamsV1] packageUpdateParamsV1:
  ///   
  Future<PackageV1?> updatePackage(String packageId, { String? idempotencyKey, PackageUpdateParamsV1? packageUpdateParamsV1, }) async {
    final response = await updatePackageWithHttpInfo(packageId,  idempotencyKey: idempotencyKey, packageUpdateParamsV1: packageUpdateParamsV1, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PackageV1',) as PackageV1;
    
    }
    return null;
  }
}
