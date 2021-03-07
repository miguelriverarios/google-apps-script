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
  public GetMetricsRequest getMetrics(String scriptId) {
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
   * @param scriptId The contents of the script in Blob format.
   * @return the request
   */
  public UpdateContentRequest updateContent(
    String scriptId,
    Blob scriptContents
  ) {
    ffhttp_BlobContent br = new ffhttp_BlobContent(scriptContents, null);

    return new UpdateContentRequest(this, scriptId, br);
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
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelProject.class)
      );
    }

    /**
     * Request parameters
     */
    public Boolean getVersionNumber() {
      return getParam('versionNumber', false);
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
    public Boolean getMetricsGranularity() {
      return getParam('metricsGranularity', false);
    }
    public GetMetricsRequest setMetricsGranularity(
      MetricsGranularity metricsGranularity
    ) {
      addParam('metricsGranularity', metricsGranularity);
      return this;
    }

    public Boolean getMetricsFilter() {
      return getParam('metricsFilter', false);
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
      ffhttp_IHttpContent scriptContents
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
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelProject.class)
      );
    }
  }

  /*********************************************************************************************************
   * Inner Classes
   *********************************************************************************************************/

  public class UpdateContentFiles {
    // Instance Variables
    private MRR_GoogleAppsScriptModelFile[] files; // The list of script project files. One of the files is a script manifest;
    // it must be named "appsscript", must have type of JSON, and include the manifest configurations for the project.

    /**
     * Get/Sets
     */
    public MRR_GoogleAppsScriptModelFile[] getFiles() {
      return files;
    }
    public UpdateContentFiles setFiles(MRR_GoogleAppsScriptModelFile[] files) {
      this.files = files;
      return this;
    }
  }

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

  // Enums
  public enum MetricsGranularity {
    UNSPECIFIED_GRANULARITY, // Default metric granularity used to query no metrics
    WEEKLY, // Represents weekly metrics
    DAILY // Represents daily metrics over a period of 7 days
  }
}
