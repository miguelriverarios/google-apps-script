public with sharing class MRR_GoogleAppsScriptModelProject extends MRR_GoogleAppsScriptModelAbstractObject {
  // Instance variables
  private String scriptId; // The script project's Drive Id
  private String title; // The title for the project
  private String parentId; // The parent's Drive ID that the script will be attached to. This is usually the ID of a Google Document
  // or Google Sheet. This file Id is optional, and if it is not set, a stand-alone script will be created
  private String createTime; // When the script was created (a timestamp in RFC3339 UTC
  // "Zulu" format, with nanosecond resolution and up to nine fractional digits)
  private String updateTime; // When the script was last updated (a timestamp in RFC3339 UTC
  // "Zulu" format, with nanosecond resolution and up to nine fractional digits)
  private mrr_GoogleAppsScriptModelUser creator; // User who originally created the script.
  private mrr_GoogleAppsScriptModelUser lastModifyUser; // User who last modified the script.

  /**
   * Get/Set methods
   */
  public String getScriptId() {
    return scriptId;
  }
  public mrr_GoogleAppsScriptModelProject setScriptId(String scriptId) {
    this.scriptId = scriptId;
    return this;
  }

  public String getTitle() {
    return title;
  }
  public mrr_GoogleAppsScriptModelProject setTitle(String title) {
    this.title = title;
    return this;
  }

  public String getParentId() {
    return parentId;
  }
  public mrr_GoogleAppsScriptModelProject setParentId(String parentId) {
    this.parentId = parentId;
    return this;
  }

  public String getCreateTime() {
    return createTime;
  }
  public mrr_GoogleAppsScriptModelProject setCreateTime(String createTime) {
    this.createTime = createTime;
    return this;
  }

  public String getUpdateTime() {
    return updateTime;
  }
  public mrr_GoogleAppsScriptModelProject setUpdateTime(String updateTime) {
    this.updateTime = updateTime;
    return this;
  }

  public mrr_GoogleAppsScriptModelUser getCreator() {
    return creator;
  }
  public mrr_GoogleAppsScriptModelProject setCreator(
    mrr_GoogleAppsScriptModelUser creator
  ) {
    this.creator = creator;
    return this;
  }

  public mrr_GoogleAppsScriptModelUser getLastModifyUser() {
    return lastModifyUser;
  }
  public mrr_GoogleAppsScriptModelProject setLastModifyUser(
    mrr_GoogleAppsScriptModelUser lastModifyUser
  ) {
    this.lastModifyUser = lastModifyUser;
    return this;
  }
}
