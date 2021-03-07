public with sharing class MRR_GoogleAppsScriptModelListDeployments extends ffhttp_AbstractJsonSerializable {
  // Instance Variables
  private MRR_GoogleAppsScriptModelDeployment[] deployments; // The list of deployments.
  private String nextPageToken; // The token that can be used in the next call to get the next page of results.

  /**
   * Get/Sets
   */
  public MRR_GoogleAppsScriptModelDeployment[] getDeployments() {
    return deployments;
  }
  public MRR_GoogleAppsScriptModelListDeployments setDeployments(
    MRR_GoogleAppsScriptModelDeployment[] deployments
  ) {
    this.deployments = deployments;
    return this;
  }

  public String getNextPageToken() {
    return nextPageToken;
  }
  public MRR_GoogleAppsScriptModelListDeployments setNextPageToken(
    String nextPageToken
  ) {
    this.nextPageToken = nextPageToken;
    return this;
  }
}
