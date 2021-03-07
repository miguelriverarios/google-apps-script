public with sharing class MRR_GoogleAppsScriptModelMetrics {
  // Instance Variables
  private MetricsValue[] activeUsers; // Number of active users
  private MetricsValue[] totalExecutions; // Number of total executions
  private MetricsValue[] failedExecutions; // Number of failed executions

  /**
   * Get/Sets
   */
  public MetricsValue[] getActiveUsers() {
    return activeUsers;
  }

  public MetricsValue[] getTotalExecutions() {
    return totalExecutions;
  }

  public MetricsValue[] getFailedExecutions() {
    return failedExecutions;
  }

  public class MetricsValue {
    // Instance variables
    private String value; // Indicates the number of executions counted
    private String startTime; // Required field indicating the start time of the interval (a timestamp in RFC3339 UTC
    //"Zulu" format, with nanosecond resolution and up to nine fractional digits)
    private String endTime; // Required field indicating the end time of the interval (a timestamp in RFC3339 UTC
    //"Zulu" format, with nanosecond resolution and up to nine fractional digits)

    /**
     * Get/Sets
     */
    public String getValue() {
      return value;
    }

    public String getStartTime() {
      return startTime;
    }

    public String getEndTime() {
      return endTime;
    }
  }
}
