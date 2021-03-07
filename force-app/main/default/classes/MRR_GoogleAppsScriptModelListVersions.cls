public with sharing class MRR_GoogleAppsScriptModelListVersions extends ffhttp_AbstractJsonSerializable {
  // Instance Variables
  private MRR_GoogleAppsScriptModelVersion[] versions; // The list of versions.
  private String nextPageToken; // The token use to fetch the next page of records. if not exist in the response, that means no more versions to list.

  /**
   * Get/Sets
   */
  public MRR_GoogleAppsScriptModelVersion[] getVersions() {
    return versions;
  }
  public MRR_GoogleAppsScriptModelListVersions setVersions(
    MRR_GoogleAppsScriptModelVersion[] versions
  ) {
    this.versions = versions;
    return this;
  }

  public String getNextPageToken() {
    return nextPageToken;
  }
  public MRR_GoogleAppsScriptModelListVersions setNextPageToken(
    String nextPageToken
  ) {
    this.nextPageToken = nextPageToken;
    return this;
  }
}
