public inherited sharing class MRR_GoogleAppsScriptModelDeployment extends MRR_GoogleAppsScriptModelAbstractObject {
  // Instance Variables
  private String deploymentId; // The deployment ID for this deployment
  private DeploymentConfig deploymentConfig; // The deployment configuration
  private String updateTime; // Last modified date time stamp (a timestamp in RFC3339 UTC
  // "Zulu" format, with nanosecond resolution and up to nine fractional digits)
  private EntryPoint[] entryPoints; //The deployment's entry points

  public with sharing class DeploymentConfig extends ffhttp_AbstractJsonSerializable {
    // Instance Variables
    private String scriptId; // The script project's Drive ID
    private Long versionNumber; // The version number on which this deployment is based
    private String manifestFileName; // The manifest file name for this deployment
    private String description; // The description for this deployment

    /**
     * Get/Sets
     */
    public String getScriptId() {
      return scriptId;
    }
    public DeploymentConfig setScriptId(String scriptId) {
      this.scriptId = scriptId;
      return this;
    }

    public Long getVersionNumber() {
      return versionNumber;
    }
    public DeploymentConfig setVersionNumber(Long versionNumber) {
      this.versionNumber = versionNumber;
      return this;
    }

    public String getManifestFileName() {
      return manifestFileName;
    }
    public DeploymentConfig setManifestFileName(String manifestFileName) {
      this.manifestFileName = manifestFileName;
      return this;
    }

    public String getDescription() {
      return description;
    }
    public DeploymentConfig setDescription(String description) {
      this.description = description;
      return this;
    }
  }

  public class EntryPoint extends ffhttp_AbstractJsonSerializable {
    // Instance Variables
    private EntryPointType entryPointType; // The type of the entry point
    private WebAppEntryPoint webApp; // An entry point specification for web apps
    private ExecutionApiEntryPoint executionApi; // An entry point specification for Apps Script API execution calls
    private AddOnEntryPoint addOn; // Add-on properties

    /**
     * Get/Sets
     */
    public String getScriptId() {
      return scriptId;
    }
    public DeploymentConfig setScriptId(String scriptId) {
      this.scriptId = scriptId;
      return this;
    }

    public Long getVersionNumber() {
      return versionNumber;
    }
    public DeploymentConfig setVersionNumber(Long versionNumber) {
      this.versionNumber = versionNumber;
      return this;
    }

    public String getManifestFileName() {
      return manifestFileName;
    }
    public DeploymentConfig setManifestFileName(String manifestFileName) {
      this.manifestFileName = manifestFileName;
      return this;
    }

    public String getDescription() {
      return description;
    }
    public DeploymentConfig setDescription(String description) {
      this.description = description;
      return this;
    }
  }

  public class WebAppEntryPoint extends ffhttp_AbstractJsonSerializable {
    // Instance Variables
    private String url; // The URL for the web application
    private WebAppConfig entryPointConfig; // The entry point's configuration;

    /**
     * Get/Sets
     */
    public String getUrl() {
      return url;
    }
    public WebAppEntryPoint setUrl(String url) {
      this.url = url;
      return this;
    }

    public WebAppConfig getEntryPointConfig() {
      return entryPointConfig;
    }
    public WebAppEntryPoint setEntryPointConfig(WebAppConfig entryPointConfig) {
      this.entryPointConfig = entryPointConfig;
      return this;
    }
  }

  public class WebAppConfig extends ffhttp_AbstractJsonSerializable {
    // Instance Variables
    private Access access; // Who has permission to run the web app
    private ExecuteAs executeAs; // Who to execute the web app as

    /**
     * Get/Sets
     */
    public Access getAccess() {
      return access;
    }
    public WebAppConfig setAccess(Access access) {
      this.access = access;
      return access;
    }

    public ExecuteAs getExecuteAs() {
      return executeAs;
    }
    public WebAppConfig setExecuteAs(ExecuteAs executeAs) {
      this.executeAs = executeAs;
      return executeAs;
    }
  }

  public class ExecutionApiEntryPoint extends ffhttp_AbstractJsonSerializable {
    // Instance Variables
    private ExecutionApiConfig entryPointConfig; // The entry point's configuration;

    /**
     * Get/Sets
     */
    public ExecutionApiConfig getEntryPointConfig() {
      return entryPointConfig;
    }
    public ExecutionApiConfig setEntryPointConfig(
      ExecutionApiConfig entryPointConfig
    ) {
      this.entryPointConfig = entryPointConfig;
      return this;
    }
  }

  public class ExecutionApiConfig extends ffhttp_AbstractJsonSerializable {
    // Instance Variables
    private Access access; // Who has permission to run the web app

    /**
     * Get/Sets
     */
    public Access getAccess() {
      return access;
    }
    public WebAppConfig setAccess(Access access) {
      this.access = access;
      return access;
    }
  }

  public class AddOnEntryPoint extends ffhttp_AbstractJsonSerializable {
    // Instance Variables
    private AddOnType addOnType; // The add-on's required list of supported container types
    private String title; // The add-on's required title
    private String description; // The add-on's optional description
    private String helpUrl; // The add-on's optional help URL
    private String reportIssueUrl; // The add-on's optional report issue URL
    private String postInstallTipUrl; //The add-on's required post install tip URL

    /**
     * Get/Sets
     */
    public AddOnType getAddOnType() {
      return addOnType;
    }
    public AddOnEntryPoint setAddOnType(AddOnType addOnType) {
      this.addOnType = addOnType;
      return this;
    }

    public String getTitle() {
      return title;
    }
    public AddOnEntryPoint setTitle(String title) {
      this.title = title;
      return this;
    }

    public String getDescription() {
      return description;
    }
    public AddOnEntryPoint setDescription(String description) {
      this.description = description;
      return this;
    }

    public String getHelpUrl() {
      return helpUrl;
    }
    public AddOnEntryPoint setHelpUrl(String helpUrl) {
      this.helpUrl = helpUrl;
      return this;
    }

    public String getReportIssueUrl() {
      return helpUrl;
    }
    public AddOnEntryPoint setReportIssueUrl(String reportIssueUrl) {
      this.reportIssueUrl = reportIssueUrl;
      return this;
    }

    public String getPostInstallTipUrl() {
      return postInstallTipUrl;
    }
    public AddOnEntryPoint setPostInstallTipUrl(String postInstallTipUrl) {
      this.postInstallTipUrl = postInstallTipUrl;
      return this;
    }
  }

  // Enums
  public enum EntryPointType {
    ENTRY_POINT_TYPE_UNSPECIFIED, // An unspecified entry point
    WEB_APP, // A web application entry point
    EXECUTION_API, // An API executable entry point
    ADD_ON // An Add-On entry point
  }

  public enum Access {
    UNKNOWN_ACCESS, // Default value, should not be used
    MYSELF, // Only the user who deployed the web app or executable can access it. Note that this is not necessarily the owner of the script project
    DOMAIN, // Only users in the same domain as the user who deployed the web app or executable can access it
    ANYONE, // Any logged in user can access the web app or executable
    ANYONE_ANONYMOUS // Any user, logged in or not, can access the web app or executable
  }

  public enum ExecuteAs {
    UNKNOWN_EXECUTE_AS, // Default value, should not be used
    USER_ACCESSING, // The script runs as the user accessing the web app
    USER_DEPLOYING // The script runs as the user who deployed the web app. Note that this is not necessarily the owner of the script project
  }

  public enum AddOnType {
    UNKNOWN_ADDON_TYPE, // Default value, unknown add-on type
    GMAIL, // Add-on type for Gmail
    DATA_STUDIO // Add-on type for Data Studio
  }
}
