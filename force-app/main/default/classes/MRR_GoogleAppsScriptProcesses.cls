public with sharing class MRR_GoogleAppsScriptProcesses extends MRR_GoogleAppsScriptResource {
  /**
   * Constructor
   *
   * @param service the MRR_GoogleAppsScript service
   * @return access to the Processes API calls
   */
  public MRR_GoogleAppsScriptProcesses(MRR_GoogleAppsScript service) {
    super(service);
  }

  /*********************************************************************************************************
   * Requests
   *********************************************************************************************************/

  /**
   * List information about processes made by or on behalf of a user, such as process type and current status.
   *
   * Create a request for the method processes.list
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @return the request
   */
  public ListRequest listRequest() {
    return new ListRequest(this);
  }

  /**
   * List information about a script's executed processes, such as process type and current status.
   *
   * Create a request for the method processes.listScriptProcesses
   *
   * This request holds the parameters needed by the drive server. After setting any optional
   * parameters, call the execute method to invoke the remote operation
   *
   * @return the request
   */
  public ListScriptProcessesRequest listScriptProcessesRequest() {
    return new ListScriptProcessesRequest(this);
  }

  /*********************************************************************************************************
   * API Callout Inner Classes
   *********************************************************************************************************/

  public class ListRequest extends GoogleAppsScriptRequest {
    ListRequest(MRR_GoogleAppsScriptProcesses processes) {
      super(
        processes,
        MAIN_ENDPOINT,
        ENDPOINT_PROCESSES,
        REQUEST_METHOD_GET,
        null,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelProcess.class)
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

  public class ListScriptProcessesRequest extends GoogleAppsScriptRequest {
    ListScriptProcessesRequest(MRR_GoogleAppsScriptProcesses processes) {
      super(
        processes,
        MAIN_ENDPOINT,
        ENDPOINT_PROCESSES + COMMAND_LIST_PROCESSES,
        REQUEST_METHOD_GET,
        null,
        new ffhttp_JsonDeserializer(MRR_GoogleAppsScriptModelProcess.class)
      );
    }

    /**
     * Request parameters
     */
    public Integer getScriptId() {
      return getParam('scriptId', false);
    }
    public ListScriptProcessesRequest setScriptId(String scriptId) {
      addParam('scriptId', scriptId);
      return this;
    }

    public Integer getPageSize() {
      return getParam('pageSize', false);
    }
    public ListScriptProcessesRequest setPageSize(Integer pageSize) {
      addParam('pageSize', pageSize);
      return this;
    }

    public String getPageToken() {
      return getParam('pageToken', false);
    }
    public ListScriptProcessesRequest setPageToken(String pageToken) {
      addParam('pageToken', pageToken);
      return this;
    }
  }
}
