part of guest_sdk.api;



class BatchesApi {
  final ApiClient apiClient;

  BatchesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Delete Multiple Invites
  ///
  /// Queues up a \&quot;delete\&quot; background task for one or more &#x60;Invite&#x60; entities.
  Future<BatchJob> batchDeleteInvites({ IdentifierList identifierList }) async {
    Object postBody = identifierList;

    // verify required params are set

    // create path and map variables
    String path = "/invites/batch_delete".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BatchJob') as BatchJob;
    } else {
      return null;
    }
  }
  /// Get a BatchJob
  ///
  /// Retrieve a given &#x60;BatchJob&#x60; entity.
  Future<BatchJob> getBatch(String batchId) async {
    Object postBody;

    // verify required params are set
    if(batchId == null) {
     throw new ApiException(400, "Missing required param: batchId");
    }

    // create path and map variables
    String path = "/batches/{batch_id}".replaceAll("{format}","json").replaceAll("{" + "batch_id" + "}", batchId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BatchJob') as BatchJob;
    } else {
      return null;
    }
  }
}
