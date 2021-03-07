public with sharing class MRR_GoogleAppsScript extends ffhttp_Client.AbstractClient {
  /**
   * Constructor
   *
   * @param credentials HTTP request credentials required for authentication
   * @return The Google Apps Script API HTTP client giving access to all API calls
   */
  public MRR_GoogleAppsScript(ffhttp_Client.ICredentials credentials) {
    this.setCredentials(credentials);
  }

  /**
   * An accessor for creating requests from the Processes collection
   *
   * @return The resources collection
   */
  public MRR_GoogleAppsScriptProcesses processes() {
    return new MRR_GoogleAppsScriptProcesses(this);
  }

  /**
   * An accessor for creating requests from the Projects collection
   *
   * @return The resources collection
   */
  public MRR_GoogleAppsScriptProjects projects() {
    return new MRR_GoogleAppsScriptProjects(this);
  }

  /**
   * An accessor for creating requests from the Project Deployments collection
   *
   * @return The resources collection
   */
  public MRR_GoogleAppsScriptDeployments deployments() {
    return new MRR_GoogleAppsScriptDeployments(this);
  }

  /**
   * An accessor for creating requests from the Project Versions collection
   *
   * @return The resources collection
   */
  public MRR_GoogleAppsScriptVersions versions() {
    return new MRR_GoogleAppsScriptVersions(this);
  }
}
