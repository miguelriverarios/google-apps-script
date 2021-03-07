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
        new ffhttp_JsonDeserializer(Processes.class)
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

    public ListUserProcessesFilter getUserProcessFilter() {
      return (ListUserProcessesFilter) getParamObj('userProcessFilter');
    }
    public ListRequest setUserProcessFilter(
      ListUserProcessesFilter userProcessFilter
    ) {
      addParam('userProcessFilter', userProcessFilter);
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
        new ffhttp_JsonDeserializer(Processes.class)
      );
    }

    /**
     * Request parameters
     */
    public String getScriptId() {
      return getParam('scriptId', (String) null);
    }
    public ListScriptProcessesRequest setScriptId(String scriptId) {
      addParam('scriptId', scriptId);
      return this;
    }

    public ListScriptProcessesFilter getScriptProcessFilter() {
      return (ListScriptProcessesFilter) getParamObj('scriptProcessFilter');
    }
    public ListScriptProcessesRequest setScriptProcessFilter(
      ListScriptProcessesFilter scriptProcessFilter
    ) {
      addParam('scriptProcessFilter', scriptProcessFilter);
      return this;
    }

    public Integer getPageSize() {
      return getParam('pageSize', (Integer) null);
    }
    public ListScriptProcessesRequest setPageSize(Integer pageSize) {
      addParam('pageSize', pageSize);
      return this;
    }

    public String getPageToken() {
      return getParam('pageToken', (String) null);
    }
    public ListScriptProcessesRequest setPageToken(String pageToken) {
      addParam('pageToken', pageToken);
      return this;
    }
  }

  /*********************************************************************************************************
   * Inner Classes
   *********************************************************************************************************/

  public class Processes {
    // Instance Variables
    private MRR_GoogleAppsScriptModelProcess[] processes; // List of processes matching request paramteters
    private String nextPageToken; // Token for the next page of results. If empty, there are no more pages remaining

    /**
     * Get/Sets
     */
    public MRR_GoogleAppsScriptModelProcess[] getProcesses() {
      return processes;
    }
    public Processes setProcesses(
      MRR_GoogleAppsScriptModelProcess[] processes
    ) {
      this.processes = processes;
      return this;
    }

    public String getNextPageToken() {
      return nextPageToken;
    }
    public Processes setNextPageToken(String nextPageToken) {
      this.nextPageToken = nextPageToken;
      return this;
    }
  }

  public class ListUserProcessesFilter {
    // Instance Variables
    private String scriptId; // Optional field used to limit returned processes to those originating from projects with a specific script ID.
    private String deploymentId; // Optional field used to limit returned processes to those originating from projects with a specific deployment ID.
    private String projectName; // Optional field used to limit returned processes to those originating from projects with project names containing a specific string.
    private String functionName; // Optional field used to limit returned processes to those originating from a script function with the given function name.
    private String startTime; // Optional field used to limit returned processes to those that were started on or after the given timestamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
    private String endTime; // Optional field used to limit returned processes to those that completed on or before the given timestamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
    private MRR_GoogleAppsScriptModelProcess.ProcessType[] types; // Optional field used to limit returned processes to those having one of the specified process types.
    private MRR_GoogleAppsScriptModelProcess.ProcessStatus[] statuses; // Optional field used to limit returned processes to those having one of the specified process statuses.
    private MRR_GoogleAppsScriptModelProcess.UserAccessLevel[] userAccessLevels; // Optional field used to limit returned processes to those having one of the specified user access levels.

    /**
     * Get/Sets
     */
    public String getScriptId() {
      return scriptId;
    }
    public ListUserProcessesFilter setScriptId(String scriptId) {
      this.scriptId = scriptId;
      return this;
    }

    public String getDeploymentId() {
      return deploymentId;
    }
    public ListUserProcessesFilter setDeploymentId(String deploymentId) {
      this.deploymentId = deploymentId;
      return this;
    }

    public String getProjectName() {
      return projectName;
    }
    public ListUserProcessesFilter setProjectName(String projectName) {
      this.projectName = projectName;
      return this;
    }

    public String getFunctionName() {
      return functionName;
    }
    public ListUserProcessesFilter setFunctionName(String functionName) {
      this.functionName = functionName;
      return this;
    }

    public String getStartTime() {
      return startTime;
    }
    public ListUserProcessesFilter setStartTime(String startTime) {
      this.startTime = startTime;
      return this;
    }

    public String getEndTime() {
      return endTime;
    }
    public ListUserProcessesFilter setEndTime(String endTime) {
      this.endTime = endTime;
      return this;
    }

    public MRR_GoogleAppsScriptModelProcess.ProcessType[] getTypes() {
      return types;
    }
    public ListUserProcessesFilter setTypes(
      MRR_GoogleAppsScriptModelProcess.ProcessType[] types
    ) {
      this.types = types;
      return this;
    }

    public MRR_GoogleAppsScriptModelProcess.ProcessStatus[] getStatuses() {
      return statuses;
    }
    public ListUserProcessesFilter setStatuses(
      MRR_GoogleAppsScriptModelProcess.ProcessStatus[] statuses
    ) {
      this.statuses = statuses;
      return this;
    }

    public MRR_GoogleAppsScriptModelProcess.UserAccessLevel[] getUserAccessLevels() {
      return userAccessLevels;
    }
    public ListUserProcessesFilter setUserAccessLevels(
      MRR_GoogleAppsScriptModelProcess.UserAccessLevel[] userAccessLevels
    ) {
      this.userAccessLevels = userAccessLevels;
      return this;
    }
  }

  public class ListScriptProcessesFilter {
    // Instance Variables
    private String deploymentId; // Optional field used to limit returned processes to those originating from projects with a specific deployment ID.
    private String functionName; // Optional field used to limit returned processes to those originating from a script function with the given function name.
    private String startTime; // Optional field used to limit returned processes to those that were started on or after the given timestamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
    private String endTime; // Optional field used to limit returned processes to those that completed on or before the given timestamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
    private MRR_GoogleAppsScriptModelProcess.ProcessType[] types; // Optional field used to limit returned processes to those having one of the specified process types.
    private MRR_GoogleAppsScriptModelProcess.ProcessStatus[] statuses; // Optional field used to limit returned processes to those having one of the specified process statuses.
    private MRR_GoogleAppsScriptModelProcess.UserAccessLevel[] userAccessLevels; // Optional field used to limit returned processes to those having one of the specified user access levels.

    /**
     * Get/Sets
     */
    public String getDeploymentId() {
      return deploymentId;
    }
    public ListScriptProcessesFilter setDeploymentId(String deploymentId) {
      this.deploymentId = deploymentId;
      return this;
    }

    public String getFunctionName() {
      return functionName;
    }
    public ListScriptProcessesFilter setFunctionName(String functionName) {
      this.functionName = functionName;
      return this;
    }

    public String getStartTime() {
      return startTime;
    }
    public ListScriptProcessesFilter setStartTime(String startTime) {
      this.startTime = startTime;
      return this;
    }

    public String getEndTime() {
      return endTime;
    }
    public ListScriptProcessesFilter setEndTime(String endTime) {
      this.endTime = endTime;
      return this;
    }

    public MRR_GoogleAppsScriptModelProcess.ProcessType[] getTypes() {
      return types;
    }
    public ListScriptProcessesFilter setTypes(
      MRR_GoogleAppsScriptModelProcess.ProcessType[] types
    ) {
      this.types = types;
      return this;
    }

    public MRR_GoogleAppsScriptModelProcess.ProcessStatus[] getStatuses() {
      return statuses;
    }
    public ListScriptProcessesFilter setStatuses(
      MRR_GoogleAppsScriptModelProcess.ProcessStatus[] statuses
    ) {
      this.statuses = statuses;
      return this;
    }

    public MRR_GoogleAppsScriptModelProcess.UserAccessLevel[] getUserAccessLevels() {
      return userAccessLevels;
    }
    public ListScriptProcessesFilter setUserAccessLevels(
      MRR_GoogleAppsScriptModelProcess.UserAccessLevel[] userAccessLevels
    ) {
      this.userAccessLevels = userAccessLevels;
      return this;
    }
  }
}
