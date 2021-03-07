public with sharing class MRR_GoogleAppsScriptDeployments extends MRR_GoogleAppsScriptResource {
  /**
   * Constructor
   *
   * @param service the MRR_GoogleAppsScript service
   * @return access to the Processes API calls
   */
  public MRR_GoogleAppsScriptDeployments(MRR_GoogleAppsScript service) {
    super(service);
  }

  /*********************************************************************************************************
   * Requests
   *********************************************************************************************************/

  /**
   * Creates a deployment of an Apps Script project.
   *
   * Create a request for the method projects.deployments.create
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to update.
   * @param deploymentConfig the MRR_GoogleAppsScriptModelDeployment.DeploymentConfig containing the metadata for the deployment
   * @return the request
   */
  public CreateRequest createRequest(
    String scriptId,
    MRR_GoogleAppsScriptModelDeployment.DeploymentConfig deploymentConfig
  ) {
    return new CreateRequest(this, scriptId, deploymentConfig);
  }

  /**
   * Deletes a deployment of an Apps Script project.
   *
   * Create a request for the method projects.deployments.delete
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to update.
   * @param deploymentId the ID of the deployment to delete
   * @return the request
   */
  public DeleteRequest deleteRequest(String scriptId, String deploymentId) {
    return new DeleteRequest(this, scriptId, deploymentId);
  }

  /**
   * Gets a deployment of an Apps Script project.
   *
   * Create a request for the method projects.deployments.get
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to get.
   * @param deploymentId the ID of the deployment to get
   * @return the request
   */
  public GetRequest getRequest(String scriptId, String deploymentId) {
    return new GetRequest(this, scriptId, deploymentId);
  }

  /**
   * Lists the deployments of an Apps Script project.
   *
   * Create a request for the method projects.deployments.list
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to get.
   * @return the request
   */
  public ListRequest listRequest(String scriptId) {
    return new ListRequest(this, scriptId);
  }

  /**
   * Updates a deployment of an Apps Script project.
   *
   * Create a request for the method projects.deployments.update
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to update.
   * @param deploymentId the ID of the deployment to get.
   * @param deploymentConfig the MRR_GoogleAppsScriptModelDeployment.DeploymentConfig containing the metadata for the deployment.
   * @return the request
   */
  public UpdateRequest updateRequest(
    String scriptId,
    String deploymentId,
    MRR_GoogleAppsScriptModelDeployment.DeploymentConfig deploymentConfig
  ) {
    return new UpdateRequest(this, scriptId, deploymentId, deploymentConfig);
  }

  /*********************************************************************************************************
   * API Callout Inner Classes
   *********************************************************************************************************/

  public class CreateRequest extends GoogleAppsScriptRequest {
    CreateRequest(
      MRR_GoogleAppsScriptDeployments deployments,
      String scriptId,
      MRR_GoogleAppsScriptModelDeployment.DeploymentConfig deploymentConfig
    ) {
      super(
        deployments,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        ENDPOINT_DEPLOYMENTS,
        REQUEST_METHOD_POST,
        deploymentConfig,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelDeployment.class)
      );
    }
  }

  public class DeleteRequest extends GoogleAppsScriptRequest {
    DeleteRequest(
      MRR_GoogleAppsScriptDeployments deployments,
      String scriptId,
      String deploymentId
    ) {
      super(
        deployments,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        ENDPOINT_DEPLOYMENTS +
        deploymentId,
        REQUEST_METHOD_DELETE,
        null,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelDeployment.class)
      );
    }
  }

  public class GetRequest extends GoogleAppsScriptRequest {
    GetRequest(
      MRR_GoogleAppsScriptDeployments deployments,
      String scriptId,
      String deploymentId
    ) {
      super(
        deployments,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        ENDPOINT_DEPLOYMENTS +
        deploymentId,
        REQUEST_METHOD_GET,
        null,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelDeployment.class)
      );
    }
  }

  public class ListRequest extends GoogleAppsScriptRequest {
    ListRequest(MRR_GoogleAppsScriptDeployments deployments, String scriptId) {
      super(
        deployments,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        ENDPOINT_DEPLOYMENTS,
        REQUEST_METHOD_GET,
        null,
        new ffhttp_JsonDeserializer(ListRequestDeployments.class)
      );
    }

    /**
     * Request parameters
     */
    public Integer getPageSize() {
      return getParam('pageSize', (Integer) null);
    }
    public ListRequest setPageSize(Integer pageSize) {
      addParam('pageSize', pageSize);
      return this;
    }

    public String getPageToken() {
      return getParam('pageToken', (String) null);
    }
    public ListRequest setPageToken(String pageToken) {
      addParam('pageToken', pageToken);
      return this;
    }
  }

  public class UpdateRequest extends GoogleAppsScriptRequest {
    UpdateRequest(
      MRR_GoogleAppsScriptDeployments deployments,
      String scriptId,
      String deploymentId,
      MRR_GoogleAppsScriptModelDeployment.DeploymentConfig deploymentConfig
    ) {
      super(
        deployments,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        ENDPOINT_DEPLOYMENTS +
        deploymentId,
        REQUEST_METHOD_PUT,
        deploymentConfig,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelDeployment.class)
      );
    }
  }

  /*********************************************************************************************************
   * Inner Classes
   *********************************************************************************************************/

  public class ListRequestDeployments {
    // Instance Variables
    private MRR_GoogleAppsScriptModelDeployment[] deployments; // The list of deployments.
    private String nextPageToken; // The token that can be used in the next call to get the next page of results.

    /**
     * Get/Sets
     */
    public MRR_GoogleAppsScriptModelDeployment[] getDeployments() {
      return deployments;
    }
    public ListRequestDeployments setDeployments(
      MRR_GoogleAppsScriptModelDeployment[] deployments
    ) {
      this.deployments = deployments;
      return this;
    }

    public String getNextPageToken() {
      return nextPageToken;
    }
    public ListRequestDeployments setNextPageToken(String nextPageToken) {
      this.nextPageToken = nextPageToken;
      return this;
    }
  }
}
