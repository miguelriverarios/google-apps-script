public with sharing class MRR_GoogleAppsScriptModelFile extends ffhttp_AbstractJsonSerializable {
  // Instance Variables
  private String name; // The name of the file. The file extension is not part of the file name, which can be identified from the type field.
  private FileType type; // The type of the file.
  private String source; // The file content.
  private MRR_GoogleAppsScriptModelUser lastModifyUser; // The user who modified the file most recently. This read-only field is only visible to users who have WRITER permission for the script project.
  private String createTime; // Creation date timestamp. This read-only field is only visible to users who have WRITER permission for the script project. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  private String updateTime; // Last modified date timestamp. This read-only field is only visible to users who have WRITER permission for the script project. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  private FunctionSet functionSet; // The defined set of functions in the script file, if any.

  /**
   * Get/Sets
   */
  public String getName() {
    return name;
  }
  public MRR_GoogleAppsScriptModelFile setName(String name) {
    this.name = name;
    return this;
  }

  public FileType getType() {
    return type;
  }
  public MRR_GoogleAppsScriptModelFile setType(FileType type) {
    this.type = type;
    return this;
  }

  public String getSource() {
    return source;
  }
  public MRR_GoogleAppsScriptModelFile setSource(String source) {
    this.source = source;
    return this;
  }

  public MRR_GoogleAppsScriptModelUser getLastModifyUser() {
    return lastModifyUser;
  }
  public MRR_GoogleAppsScriptModelFile setLastModifyUser(
    MRR_GoogleAppsScriptModelUser lastModifyUser
  ) {
    this.lastModifyUser = lastModifyUser;
    return this;
  }

  public String getCreateTime() {
    return createTime;
  }
  public MRR_GoogleAppsScriptModelFile setCreateTime(String createTime) {
    this.createTime = createTime;
    return this;
  }

  public String getUpdateTime() {
    return updateTime;
  }
  public MRR_GoogleAppsScriptModelFile setUpdateTime(String updateTime) {
    this.updateTime = updateTime;
    return this;
  }

  public FunctionSet getFunctionSet() {
    return functionSet;
  }
  public MRR_GoogleAppsScriptModelFile setFunctionSet(FunctionSet functionSet) {
    this.functionSet = functionSet;
    return this;
  }

  public class FunctionSet {
    // Instance Variables
    private Function[] values; // A list of functions composing the set.

    /**
     * Get/Sets
     */
    public Function[] getValues() {
      return values;
    }
    public FunctionSet setValues(Function[] values) {
      this.values = values;
      return this;
    }
  }

  public class Function {
    // Instance Variables
    private String name; // The function name in the script project.

    /**
     * Get/Sets
     */
    public String getName() {
      return name;
    }
    public Function setName(String name) {
      this.name = name;
      return this;
    }
  }

  // Enums
  public enum FileType {
    ENUM_TYPE_UNSPECIFIED, // Undetermined file type; never actually used.
    SERVER_JS, // An Apps Script server-side code file.
    HTML, // A file containing client-side HTML.
    JSON // A file in JSON format. This type is only used for the script project's manifest. The manifest file content must match the structure of a valid ScriptManifest
  }
}
