public with sharing class MRR_GoogleAppsScriptVersions extends MRR_GoogleAppsScriptResource {
  /**
   * Constructor
   *
   * @param service the MRR_GoogleAppsScript service
   * @return access to the Processes API calls
   */
  public MRR_GoogleAppsScriptVersions(MRR_GoogleAppsScript service) {
    super(service);
  }

  /*********************************************************************************************************
   * Requests
   *********************************************************************************************************/

  /**
   * Creates a new immutable version using the current code, with a unique version number.
   *
   * Create a request for the method projects.versions.create
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to update.
   * @param version the MRR_GoogleAppsScriptModelVersion containing the metadata for the version
   * @return the request
   */
  public CreateRequest createRequest(
    String scriptId,
    MRR_GoogleAppsScriptModelVersion version
  ) {
    return new CreateRequest(this, scriptId, version);
  }

  /**
   * Gets a version of a script project.
   *
   * Create a request for the method projects.versions.get
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @param scriptId The ID of the script to get.
   * @param versionNumber the version number to get.
   * @return the request
   */
  public GetRequest getRequest(String scriptId, Integer versionNumber) {
    return new GetRequest(this, scriptId, versionNumber);
  }

  /**
   * List the versions of a script project.
   *
   * Create a request for the method projects.versions.list
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

  /*********************************************************************************************************
   * API Callout Inner Classes
   *********************************************************************************************************/

  public class CreateRequest extends GoogleAppsScriptRequest {
    CreateRequest(
      MRR_GoogleAppsScriptVersions versions,
      String scriptId,
      MRR_GoogleAppsScriptModelVersion version
    ) {
      super(
        versions,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        ENDPOINT_VERSIONS,
        REQUEST_METHOD_POST,
        version,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelVersion.class)
      );
    }
  }

  public class GetRequest extends GoogleAppsScriptRequest {
    GetRequest(
      MRR_GoogleAppsScriptVersions versions,
      String scriptId,
      Integer versionNumber
    ) {
      super(
        deployments,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        ENDPOINT_VERSIONS +
        versionNumber,
        REQUEST_METHOD_GET,
        null,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelVersion.class)
      );
    }
  }

  public class ListRequest extends GoogleAppsScriptRequest {
    ListRequest(MRR_GoogleAppsScriptDeployments versions, String scriptId) {
      super(
        deployments,
        MAIN_ENDPOINT,
        ENDPOINT_PROJECTS +
        scriptId +
        URL_SEPARATOR +
        ENDPOINT_VERSIONS,
        REQUEST_METHOD_GET,
        null,
        new ffhttp_JsonDeserializer(ListRequestVersions.class)
      );
    }

    /**
     * Request parameters
     */
    public Integer getPageSize() {
      return getParam('pageSize', false);
    }
    public ListRequest setPageSize(Integer pageSize) {
      addParam('pageSize', pageSize);
      return this;
    }

    public String getPageToken() {
      return getParam('pageToken', false);
    }
    public ListRequest setPageToken(String pageToken) {
      addParam('pageToken', pageToken);
      return this;
    }
  }

  /*********************************************************************************************************
   * Inner Classes
   *********************************************************************************************************/

  public class ListRequestVersions {
    // Instance Variables
    private MRR_GoogleAppsScriptModelVersion[] versions; // The list of versions.
    private String nextPageToken; // The token use to fetch the next page of records. if not exist in the response, that means no more versions to list.

    /**
     * Get/Sets
     */
    public MRR_GoogleAppsScriptModelVersion[] getVersions() {
      return versions;
    }
    public ListRequestVersions setVersions(
      MRR_GoogleAppsScriptModelVersion[] versions
    ) {
      this.versions = versions;
      return this;
    }

    public String getNextPageToken() {
      return nextPageToken;
    }
    public ListRequestVersions setNextPageToken(String nextPageToken) {
      this.nextPageToken = nextPageToken;
      return this;
    }
  }
}
