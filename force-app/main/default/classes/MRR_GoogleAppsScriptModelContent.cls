public with sharing class MRR_GoogleAppsScriptModelContent extends ffhttp_AbstractJsonSerializable {
  // Instance Variables
  private String scriptId; // The script project's Drive ID.
  private MRR_GoogleAppsScriptModelFile[] files; // The list of script project files. One of the files is a script manifest;
  // it must be named "appsscript", must have type of JSON, and include the manifest configurations for the project.

  /**
   * Get/Sets
   */
  public String getScriptId() {
    return scriptId;
  }
  public MRR_GoogleAppsScriptModelContent setScriptId(String scriptId) {
    this.scriptId = scriptId;
    return this;
  }

  public MRR_GoogleAppsScriptModelFile[] getFiles() {
    return files;
  }
  public MRR_GoogleAppsScriptModelContent setFiles(
    MRR_GoogleAppsScriptModelFile[] files
  ) {
    this.files = files;
    return this;
  }
}
