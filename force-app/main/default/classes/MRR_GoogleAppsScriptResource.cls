public with sharing class MRR_GoogleAppsScriptResource {
  // OAuth Scopes
  public static final String SCOPE_PROCESSES = 'https://www.googleapis.com/auth/script.processes';
  public static final String SCOPE_PROJECTS = 'https://www.googleapis.com/auth/script.projects';
  public static final String SCOPE_PROJECTS_READONLY = 'https://www.googleapis.com/auth/script.projects.readonly';
  public static final String SCOPE_SCRIPT_METRICS = 'https://www.googleapis.com/auth/script.metrics';
  public static final String SCOPE_DEPLOYMENTS = 'https://www.googleapis.com/auth/script.deployments';
  public static final String SCOPE_DEPLOYMENTS_READONLY = 'https://www.googleapis.com/auth/script.deployments.readonly';

  // Endpoints
  public static final String MAIN_ENDPOINT = 'https://script.googleapis.com/v1/';

  public static final String ENDPOINT_PROCESSES = 'processes';
  public static final String ENDPOINT_PROJECTS = 'projects/';
  public static final String ENDPOINT_DEPLOYMENTS = 'deployments/';
  public static final String ENDPOINT_VERSIONS = 'versions/';

  public static final String COMMAND_CONTENT = 'content';
  public static final String COMMAND_METRICS = 'metrics';
  public static final String COMMAND_LIST_PROCESSES = ':listScriptProcesses';

  public static final String URL_SEPARATOR = '/';

  private MRR_GoogleAppsScript service;

  /**
   * Constructor
   */
  public MRR_GoogleAppsScriptResource(MRR_GoogleAppsScript service) {
    this.service = service;
  }

  /**
   * Get/Sets
   */
  public MRR_GoogleAppsScript getService() {
    return service;
  }
  public MRR_GoogleAppsScriptResource setService(MRR_GoogleAppsScript service) {
    this.service = service;
    return this;
  }

  /*********************************************************************************************************
   * Abstract inner classes
   *********************************************************************************************************/

  /**
   * Google Apps Script Request
   */
  public abstract class GoogleAppsScriptRequest extends ffhttp_Client.AbstractClientRequest {
    protected GoogleAppsScriptRequest(
      MRR_GoogleAppsScriptResource resource,
      String mainEndpoint,
      String subEndpoint,
      string method,
      ffhttp_IHttpContent content,
      ffhttp_IDeserialize responseDeserializer
    ) {
      super(
        resource.getService(),
        mainEndpoint + subEndpoint,
        method,
        content,
        responseDeserializer
      );
    }

    public String getFields() {
      return getParam('fields', (String) null);
    }
    public GoogleAppsScriptRequest setFields(String fieldList) {
      addParam('fields', fieldList);
      return this;
    }
    public Boolean getPrettyPrint() {
      return getParam('prettyPrint', true);
    }
    public GoogleAppsScriptRequest setPrettyPrint(Boolean prettyPrint) {
      addParam('prettyPrint', prettyPrint);
      return this;
    }
  }
}
