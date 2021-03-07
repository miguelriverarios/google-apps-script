public with sharing class MRR_GoogleAppsScriptModelListProcesses extends ffhttp_AbstractJsonSerializable {
  // Instance Variables
  private MRR_GoogleAppsScriptModelProcess[] processes; // List of processes matching request paramteters
  private String nextPageToken; // Token for the next page of results. If empty, there are no more pages remaining

  /**
   * Get/Sets
   */
  public MRR_GoogleAppsScriptModelProcess[] getProcesses() {
    return processes;
  }
  public MRR_GoogleAppsScriptModelListProcesses setProcesses(
    MRR_GoogleAppsScriptModelProcess[] processes
  ) {
    this.processes = processes;
    return this;
  }

  public String getNextPageToken() {
    return nextPageToken;
  }
  public MRR_GoogleAppsScriptModelListProcesses setNextPageToken(
    String nextPageToken
  ) {
    this.nextPageToken = nextPageToken;
    return this;
  }
}
