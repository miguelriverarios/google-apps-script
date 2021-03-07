public with sharing class MRR_GoogleAppsScriptModelProcess extends MRR_GoogleAppsScriptModelAbstractObject {
  //Instance variables
  private String projectName; //The name of the script being executed
  private String functionName; //The name of the function that started the execution
  private ProcessType processType; //The executions type
  private ProcessStatus processStatus; //The executions status
  private UserAccessLevel userAccessLevel; //The executing users access level to the script
  private String startTime; //The time the execution started (a timestamp in RFC3339 UTC
  //"Zulu" format, with nanosecond resolution and up to nine fractional digits)
  private String duration; //The duration the execution spent executing (a duration in seconds
  //with up to nine fractional digits, terminated by 's')

  /**
   * Get/Set methods
   */
  public String getProjectName() {
    return projectName;
  }
  public mrr_GoogleAppsScriptModelProcess setProjectName(String projectName) {
    this.projectName = projectName;
    return this;
  }

  public String getFunctionName() {
    return functionName;
  }
  public mrr_GoogleAppsScriptModelProcess setFunctionName(String functionName) {
    this.functionName = functionName;
    return this;
  }

  public ProcessType getProcessType() {
    return processType;
  }
  public mrr_GoogleAppsScriptModelProcess setProcessType(
    ProcessType processType
  ) {
    this.processType = processType;
    return this;
  }

  public ProcessStatus getProcessStatus() {
    return processStatus;
  }
  public mrr_GoogleAppsScriptModelProcess setProcessStatus(
    ProcessStatus processStatus
  ) {
    this.processStatus = processStatus;
    return this;
  }

  public UserAccessLevel getUserAccessLevel() {
    return userAccessLevel;
  }
  public mrr_GoogleAppsScriptModelProcess setUserAccessLevel(
    UserAccessLevel userAccessLevel
  ) {
    this.userAccessLevel = userAccessLevel;
    return this;
  }

  public String getStartTime() {
    return startTime;
  }
  public mrr_GoogleAppsScriptModelProcess setStartTime(String startTime) {
    this.startTime = startTime;
    return this;
  }

  public String getDuration() {
    return duration;
  }
  public mrr_GoogleAppsScriptModelProcess setDuration(String duration) {
    this.duration = duration;
    return this;
  }

  /**
   * Enums
   */
  public enum ProcessType {
    PROCESS_TYPE_UNSPECIFIED,
    ADD_ON,
    EXECUTION_API,
    TIME_DRIVEN,
    TRIGGERX, //TRIGGER is a reserved word, so apending an 'X' and will remove later
    WEBAPP,
    EDITOR,
    SIMPLE_TRIGGER,
    MENU,
    BATCH_TASK
  }
  public enum ProcessStatus {
    PROCESS_STATUS_UNSPECIFIED,
    RUNNING,
    PAUSED,
    COMPLETED,
    CANCELED,
    FAILED,
    TIMED_OUT,
    UNKNOWN,
    DELAYED
  }
  public enum UserAccessLevel {
    USER_ACCESS_LEVEL_UNSPECIFIED,
    NONE,
    READ,
    WRITE,
    OWNER
  }
}
