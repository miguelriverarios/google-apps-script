public with sharing class MRR_GoogleAppsScriptProjects extends MRR_GoogleAppsScriptResource {
  /**
   * Constructor
   *
   * @param service the MRR_GoogleAppsScript service
   * @return access to the Processes API calls
   */
  public MRR_GoogleAppsScriptProjects(MRR_GoogleAppsScript service) {
    super(service);
  }

  /*********************************************************************************************************
   * Requests
   *********************************************************************************************************/

  /**
   * Creates a new, empty script project with no script files and a base manifest file.
   *
   * Create a request for the method projects.create
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param project the MRR_GoogleAppsScriptModelProject containing the metadata for the project
   * @return the request
   */
  public CreateRequest createRequest(MRR_GoogleAppsScriptModelProject project) {
    return new CreateRequest(this, project);
  }

  /**
   * Gets a script project's metadata.
   *
   * Create a request for the method projects.get
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to get.
   * @return the request
   */
  public GetRequest getRequest(String scriptId) {
    return new GetRequest(this, scriptId);
  }

  /**
   * Gets the content of the script project, including the code source and metadata for each script file.
   *
   * Create a request for the method projects.getContent
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to get content from.
   * @return the request
   */
  public GetContentRequest getContentRequest(String scriptId) {
    return new GetContentRequest(this, scriptId);
  }

  /**
   * Get metrics data for scripts, such as number of executions and active users.
   *
   * Create a request for the method projects.getMetrics
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to get metrics from.
   * @return the request
   */
  public GetMetricsRequest getMetricsRequest(String scriptId) {
    return new GetMetricsRequest(this, scriptId);
  }

  /**
   * Updates the content of the specified script project. This content is stored as the HEAD version,
   * and is used when the script is executed as a trigger, in the script editor, in add-on preview mode,
   * or as a web app or Apps Script API in development mode. This clears all the existing files in the project.
   *
   * Create a request for the method projects.updateContent
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to update.
   * @param scriptContents The contents of the script in Blob format.
   * @return the request
   */
  public UpdateContentRequest updateContentRequest(
    String scriptId,
    MRR_GoogleAppsScriptModelContent scriptContents
  ) {
    // ffhttp_BlobContent br = new ffhttp_BlobContent(
    //   scriptContents,
    //   'text/plain'
    // );

    return new UpdateContentRequest(this, scriptId, scriptContents);
  }

  /*********************************************************************************************************
   * API Callout Inner Classes
   *********************************************************************************************************/

  public class CreateRequest extends GoogleAppsScriptRequest {
    CreateRequest(
      MRR_GoogleAppsScriptProjects projects,
      MRR_GoogleAppsScriptModelProject project
    ) {
      super(
        projects,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS,
        REQUEST_METHOD_POST,
        project,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelProject.class)
      );
    }
  }

  public class GetRequest extends GoogleAppsScriptRequest {
    GetRequest(MRR_GoogleAppsScriptProjects projects, String scriptId) {
      super(
        projects,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS + scriptId,
        REQUEST_METHOD_GET,
        null,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelProject.class)
      );
    }
  }

  public class GetContentRequest extends GoogleAppsScriptRequest {
    GetContentRequest(MRR_GoogleAppsScriptProjects projects, String scriptId) {
      super(
        projects,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        COMMAND_CONTENT,
        REQUEST_METHOD_GET,
        null,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelContent.class)
      );
    }

    /**
     * Request parameters
     */
    public Integer getVersionNumber() {
      return getParam('versionNumber', (Integer) null);
    }
    public GetContentRequest setVersionNumber(Integer versionNumber) {
      addParam('versionNumber', versionNumber);
      return this;
    }
  }

  public class GetMetricsRequest extends GoogleAppsScriptRequest {
    GetMetricsRequest(MRR_GoogleAppsScriptProjects projects, String scriptId) {
      super(
        projects,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        COMMAND_METRICS,
        REQUEST_METHOD_GET,
        null,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelMetrics.class)
      );
    }

    /**
     * Request parameters
     */
    public MRR_GoogleAppsScriptModelMetrics.MetricsGranularity getMetricsGranularity() {
      return (MRR_GoogleAppsScriptModelMetrics.MetricsGranularity) getParamObj(
        'metricsGranularity'
      );
    }
    public GetMetricsRequest setMetricsGranularity(
      MRR_GoogleAppsScriptModelMetrics.MetricsGranularity metricsGranularity
    ) {
      addParam('metricsGranularity', metricsGranularity);
      return this;
    }

    public MetricsFilter getMetricsFilter() {
      return (MetricsFilter) getParamObj('metricsFilter');
    }
    public GetMetricsRequest setMetricsFilter(MetricsFilter metricsFilter) {
      addParam('metricsFilter', metricsFilter);
      return this;
    }
  }

  public class UpdateContentRequest extends GoogleAppsScriptRequest {
    UpdateContentRequest(
      MRR_GoogleAppsScriptProjects projects,
      String scriptId,
      MRR_GoogleAppsScriptModelContent scriptContents
    ) {
      super(
        projects,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        COMMAND_CONTENT,
        REQUEST_METHOD_PUT,
        scriptContents,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelContent.class)
      );
    }
  }

  /*********************************************************************************************************
   * Inner Classes
   *********************************************************************************************************/

  public class MetricsFilter {
    // Instance Variables
    private String deploymentId; // Optional field indicating a specific deployment to retrieve metrics from

    /**
     * Get/Sets
     */
    public String getDeploymentId() {
      return deploymentId;
    }
    public MetricsFilter setDeploymentId(String deploymentId) {
      this.deploymentId = deploymentId;
      return this;
    }
  }
}
