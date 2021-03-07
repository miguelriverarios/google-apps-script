public with sharing class MRR_GoogleAppsScriptModelVersion extends MRR_GoogleAppsScriptModelAbstractObject {
  // Instance Variables
  private String scriptId; // The script project's Drive ID
  private Long versionNumber; // The incremental ID that is created by Apps Script when a version is created. This is system assigned number and is immutable once created
  private String description; // The description for this version
  private String createTime; // When the version was created (a timestamp in RFC3339 UTC
  //"Zulu" format, with nanosecond resolution and up to nine fractional digits)

  /**
   * Get/Sets
   */
  public String getScriptId() {
    return scriptId;
  }
  public mrr_GoogleAppsScriptModelVersion setScriptId(String scriptId) {
    this.scriptId = scriptId;
    return this;
  }

  public Long getVersionNumber() {
    return versionNumber;
  }
  public mrr_GoogleAppsScriptModelVersion setVersionNumber(Long versionNumber) {
    this.versionNumber = versionNumber;
    return this;
  }

  public String getDescription() {
    return description;
  }
  public mrr_GoogleAppsScriptModelProject setDescription(String description) {
    this.description = description;
    return this;
  }

  public String getCreateTime() {
    return createTime;
  }
  public mrr_GoogleAppsScriptModelProject setCreateTime(String createTime) {
    this.createTime = createTime;
    return this;
  }
}
