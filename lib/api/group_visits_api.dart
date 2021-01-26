part of guest_sdk.api;



class GroupVisitsApi {
  final ApiClient apiClient;

  GroupVisitsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a new Group Visit (Appointment)
  ///
  /// Creates a &#x60;GroupVisit&#x60; (Appointment)
  Future<GroupVisit> createGroupVisit({ String idempotencyKey, GroupVisitCreateParams groupVisitCreateParams }) async {
    Object postBody = groupVisitCreateParams;

    // verify required params are set

    // create path and map variables
    String path = "/group_visits".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Idempotency-Key"] = idempotencyKey;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["TractionGuestAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'GroupVisit') as GroupVisit;
    } else {
      return null;
    }
  }
  /// Delete a Group Visit (Appointment)
  ///
  /// Deletes a single instance of &#x60;GroupVisit&#x60; (Appointment).
  Future deleteGroupVisit(String groupVisitId, { String idempotencyKey }) async {
    Object postBody;

    // verify required params are set
    if(groupVisitId == null) {
     throw new ApiException(400, "Missing required param: groupVisitId");
    }

    // create path and map variables
    String path = "/group_visits/{group_visit_id}".replaceAll("{format}","json").replaceAll("{" + "group_visit_id" + "}", groupVisitId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Idempotency-Key"] = idempotencyKey;

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["TractionGuestAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }
  /// Get a Group Visit (Appointment)
  ///
  /// Gets the details of a single instance of a &#x60;GroupVisit&#x60;.
  Future<GroupVisit> getGroupVisit(String groupVisitId) async {
    Object postBody;

    // verify required params are set
    if(groupVisitId == null) {
     throw new ApiException(400, "Missing required param: groupVisitId");
    }

    // create path and map variables
    String path = "/group_visits/{group_visit_id}".replaceAll("{format}","json").replaceAll("{" + "group_visit_id" + "}", groupVisitId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["TractionGuestAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'GroupVisit') as GroupVisit;
    } else {
      return null;
    }
  }
  /// List all Group Visits (Appointments)
  ///
  /// Gets a list of all &#x60;GroupVisit&#x60; entities (Appointments).
  Future<ErrorsList> getGroupVisits({ String limit, String offset, String locationIds, String sortWith }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/group_visits".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(locationIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "location_ids", locationIds));
    }
    if(sortWith != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort_with", sortWith));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["TractionGuestAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ErrorsList') as ErrorsList;
    } else {
      return null;
    }
  }
  /// Update a Group Visit (Appointment)
  ///
  /// Updates an existing &#x60;GroupVisit&#x60; (Appointment).
  Future<GroupVisit> updateGroupVisit(String groupVisitId, { String idempotencyKey, GroupVisitUpdateParams groupVisitUpdateParams }) async {
    Object postBody = groupVisitUpdateParams;

    // verify required params are set
    if(groupVisitId == null) {
     throw new ApiException(400, "Missing required param: groupVisitId");
    }

    // create path and map variables
    String path = "/group_visits/{group_visit_id}".replaceAll("{format}","json").replaceAll("{" + "group_visit_id" + "}", groupVisitId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Idempotency-Key"] = idempotencyKey;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["TractionGuestAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'GroupVisit') as GroupVisit;
    } else {
      return null;
    }
  }
}
