@isTest
private class MRR_GoogleAppsScriptTest {
  static testMethod void testGoogleAppsScriptClient() {
    ffhttp_Client.IAccessTokenCredentials credentials = new ffhttp_Client.AccessTokenCredentials(
      'Bearer',
      'Test'
    );
    MRR_GoogleAppsScript gas = new MRR_GoogleAppsScript(credentials);

    System.assertEquals(
      ((ffhttp_Client.IAccessTokenCredentials) gas.getCredentials())
        .getAccessToken(),
      'Test',
      'Credentials do not match'
    );
  }

  /**
   * MRR_GoogleAppsScriptProcesses tests
   */
  static testMethod void mrr_GoogleAppsScriptProcessesListRequest() {
    MRR_GoogleAppsScriptProcesses processes = createGoogleAppsScriptProcesses();
    MRR_GoogleAppsScriptProcesses.ListRequest listRequest = processes.listRequest();
    assertRequestEndpointAndMethod(
      listRequest,
      'https://script.googleapis.com/v1/processes',
      'GET'
    );

    MRR_GoogleAppsScriptModelProcess.ProcessType[] types = new List<MRR_GoogleAppsScriptModelProcess.ProcessType>();
    types.add(MRR_GoogleAppsScriptModelProcess.ProcessType.EDITOR);
    MRR_GoogleAppsScriptModelProcess.ProcessStatus[] statuses = new List<MRR_GoogleAppsScriptModelProcess.ProcessStatus>();
    statuses.add(MRR_GoogleAppsScriptModelProcess.ProcessStatus.COMPLETED);
    MRR_GoogleAppsScriptModelProcess.UserAccessLevel[] userAccessLevels = new List<MRR_GoogleAppsScriptModelProcess.UserAccessLevel>();
    userAccessLevels.add(
      MRR_GoogleAppsScriptModelProcess.UserAccessLevel.OWNER
    );
    MRR_GoogleAppsScriptProcesses.ListUserProcessesFilter listUserProcessesFilter = new MRR_GoogleAppsScriptProcesses.ListUserProcessesFilter();
    listUserProcessesFilter.setScriptId('123ABC')
      .setDeploymentId('123ABC')
      .setProjectName('Test')
      .setFunctionName('Test')
      .setStartTime('2019-10-12T07:20:50.52Z')
      .setEndTime('2019-10-12T07:20:50.52Z')
      .setTypes(types)
      .setStatuses(statuses)
      .setUserAccessLevels(userAccessLevels);

    System.assertEquals(
      listRequest.getUserProcessFilter(),
      null,
      'User process filters do not match'
    );
    System.assertEquals(
      listRequest.getPageToken(),
      null,
      'Page token does not match'
    );
    System.assertEquals(
      listRequest.getPageSize(),
      null,
      'Page size does not match'
    );
    listRequest.setUserProcessFilter(listUserProcessesFilter);
    listRequest.setPageToken('123');
    listRequest.setPageSize(2);
    System.assertEquals(
      listRequest.getUserProcessFilter(),
      listUserProcessesFilter,
      'User process filters do not match'
    );
    System.assertEquals(
      listRequest.getPageToken(),
      '123',
      'Page token does not match'
    );
    System.assertEquals(
      listRequest.getPageSize(),
      2,
      'Page size does not match'
    );
    System.assertEquals(
      listUserProcessesFilter.getScriptId(),
      '123ABC',
      'Script ID does not match'
    );
    System.assertEquals(
      listUserProcessesFilter.getDeploymentId(),
      '123ABC',
      'Deployment ID does not match'
    );
    System.assertEquals(
      listUserProcessesFilter.getProjectName(),
      'Test',
      'Project name does not match'
    );
    System.assertEquals(
      listUserProcessesFilter.getFunctionName(),
      'Test',
      'Function name does not match'
    );
    System.assertEquals(
      listUserProcessesFilter.getStartTime(),
      '2019-10-12T07:20:50.52Z',
      'Start time does not match'
    );
    System.assertEquals(
      listUserProcessesFilter.getEndTime(),
      '2019-10-12T07:20:50.52Z',
      'End time does not match'
    );
    System.assertEquals(
      listUserProcessesFilter.getTypes(),
      types,
      'Types do not match'
    );
    System.assertEquals(
      listUserProcessesFilter.getStatuses(),
      statuses,
      'Statuses do not match'
    );
    System.assertEquals(
      listUserProcessesFilter.getUserAccessLevels(),
      userAccessLevels,
      'User access levels do not match'
    );
  }
  static testMethod void mrr_GoogleAppsScriptListScriptProcessesRequest() {
    MRR_GoogleAppsScriptProcesses processes = createGoogleAppsScriptProcesses();
    MRR_GoogleAppsScriptProcesses.ListScriptProcessesRequest listScriptProcessesRequest = processes.listScriptProcessesRequest();
    assertRequestEndpointAndMethod(
      listScriptProcessesRequest,
      'https://script.googleapis.com/v1/processes:listScriptProcesses',
      'GET'
    );

    MRR_GoogleAppsScriptModelProcess.ProcessType[] types = new List<MRR_GoogleAppsScriptModelProcess.ProcessType>();
    types.add(MRR_GoogleAppsScriptModelProcess.ProcessType.EDITOR);
    MRR_GoogleAppsScriptModelProcess.ProcessStatus[] statuses = new List<MRR_GoogleAppsScriptModelProcess.ProcessStatus>();
    statuses.add(MRR_GoogleAppsScriptModelProcess.ProcessStatus.COMPLETED);
    MRR_GoogleAppsScriptModelProcess.UserAccessLevel[] userAccessLevels = new List<MRR_GoogleAppsScriptModelProcess.UserAccessLevel>();
    userAccessLevels.add(
      MRR_GoogleAppsScriptModelProcess.UserAccessLevel.OWNER
    );
    MRR_GoogleAppsScriptProcesses.ListScriptProcessesFilter listScriptProcessesFilter = new MRR_GoogleAppsScriptProcesses.ListScriptProcessesFilter();
    listScriptProcessesFilter.setDeploymentId('123ABC')
      .setFunctionName('Test')
      .setStartTime('2019-10-12T07:20:50.52Z')
      .setEndTime('2019-10-12T07:20:50.52Z')
      .setTypes(types)
      .setStatuses(statuses)
      .setUserAccessLevels(userAccessLevels);

    System.assertEquals(
      listScriptProcessesRequest.getScriptId(),
      null,
      'Script ID does not match'
    );
    System.assertEquals(
      listScriptProcessesRequest.getScriptProcessFilter(),
      null,
      'Script process filter does not match'
    );
    System.assertEquals(
      listScriptProcessesRequest.getPageToken(),
      null,
      'Page token does not match'
    );
    System.assertEquals(
      listScriptProcessesRequest.getPageSize(),
      null,
      'Page size does not match'
    );
    listScriptProcessesRequest.setScriptId('123');
    listScriptProcessesRequest.setScriptProcessFilter(
      listScriptProcessesFilter
    );
    listScriptProcessesRequest.setPageToken('123');
    listScriptProcessesRequest.setPageSize(2);
    System.assertEquals(
      listScriptProcessesRequest.getScriptId(),
      '123',
      'Script ID does not match'
    );
    System.assertEquals(
      listScriptProcessesRequest.getScriptProcessFilter(),
      listScriptProcessesFilter,
      'Script process filter does not match'
    );
    System.assertEquals(
      listScriptProcessesRequest.getPageToken(),
      '123',
      'Page token does not match'
    );
    System.assertEquals(
      listScriptProcessesRequest.getPageSize(),
      2,
      'Page size does not match'
    );
    System.assertEquals(
      listScriptProcessesFilter.getDeploymentId(),
      '123ABC',
      'Deployment ID does not match'
    );
    System.assertEquals(
      listScriptProcessesFilter.getFunctionName(),
      'Test',
      'Function name does not match'
    );
    System.assertEquals(
      listScriptProcessesFilter.getStartTime(),
      '2019-10-12T07:20:50.52Z',
      'Start time does not match'
    );
    System.assertEquals(
      listScriptProcessesFilter.getEndTime(),
      '2019-10-12T07:20:50.52Z',
      'End time does not match'
    );
    System.assertEquals(
      listScriptProcessesFilter.getTypes(),
      types,
      'Types do not match'
    );
    System.assertEquals(
      listScriptProcessesFilter.getStatuses(),
      statuses,
      'Statuses do not match'
    );
    System.assertEquals(
      listScriptProcessesFilter.getUserAccessLevels(),
      userAccessLevels,
      'User access levels do not match'
    );
  }
  static testMethod void mrr_GoogleAppsScriptListResponse() {
    //Create all the required sub-classes
    MRR_GoogleAppsScriptModelProcess[] processes = new List<MRR_GoogleAppsScriptModelProcess>();
    MRR_GoogleAppsScriptModelProcess process = new MRR_GoogleAppsScriptModelProcess();
    process.setProjectName('Test')
      .setFunctionName('Test')
      .setProcessType(MRR_GoogleAppsScriptModelProcess.ProcessType.MENU)
      .setProcessStatus(
        MRR_GoogleAppsScriptModelProcess.ProcessStatus.COMPLETED
      )
      .setUserAccessLevel(
        MRR_GoogleAppsScriptModelProcess.UserAccessLevel.OWNER
      )
      .setStartTime('2019-10-12T07:20:50.52Z')
      .setDuration('5');
    processes.add(process);

    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleAppsScriptProcesses.Processes processesResponse = new MRR_GoogleAppsScriptProcesses.Processes();
    processesResponse.setProcesses(processes).setNextPageToken('123');

    //Assert that we get the appropriate return values.
    System.assertEquals(
      processesResponse.getProcesses(),
      processes,
      'Processes do not match'
    );
    System.assertEquals(
      processesResponse.getNextPageToken(),
      '123',
      'Next page token does not match'
    );
  }

  /**
   * MRR_GoogleAppsScriptProjects tests
   */
  static testMethod void mrr_GoogleAppsScriptProjectsCreateRequest() {
    MRR_GoogleAppsScriptModelProject project = new MRR_GoogleAppsScriptModelProject();
    project.setTitle('Test').setParentId('123ABC');

    MRR_GoogleAppsScriptProjects projects = createGoogleAppsScriptProjects();
    MRR_GoogleAppsScriptProjects.CreateRequest createRequest = projects.createRequest(
      project
    );
    assertRequestEndpointAndMethod(
      createRequest,
      'https://script.googleapis.com/v1/projects/',
      'POST'
    );
  }
  static testMethod void mrr_GoogleAppsScriptProjectsGetRequest() {
    MRR_GoogleAppsScriptProjects projects = createGoogleAppsScriptProjects();
    MRR_GoogleAppsScriptProjects.GetRequest getRequest = projects.getRequest(
      '123ABC'
    );
    assertRequestEndpointAndMethod(
      getRequest,
      'https://script.googleapis.com/v1/projects/123ABC',
      'GET'
    );
  }
  static testMethod void mrr_GoogleAppsScriptProjectsGetContentRequest() {
    MRR_GoogleAppsScriptProjects projects = createGoogleAppsScriptProjects();
    MRR_GoogleAppsScriptProjects.GetContentRequest getContentRequest = projects.getContentRequest(
      '123ABC'
    );
    assertRequestEndpointAndMethod(
      getContentRequest,
      'https://script.googleapis.com/v1/projects/123ABC/content',
      'GET'
    );

    System.assertEquals(
      getContentRequest.getVersionNumber(),
      null,
      'Version numbers do not match'
    );

    getContentRequest.setVersionNumber(2);

    System.assertEquals(
      getContentRequest.getVersionNumber(),
      2,
      'Version numbers do not match'
    );
  }
  static testMethod void mrr_GoogleAppsScriptGetContentResponse() {
    //Create all the required sub-classes
    MRR_GoogleAppsScriptModelFile[] files = new List<MRR_GoogleAppsScriptModelFile>();
    MRR_GoogleAppsScriptModelFile.Function function = new MRR_GoogleAppsScriptModelFile.Function();
    function.setName('Test');
    MRR_GoogleAppsScriptModelFile.Function[] functions = new List<MRR_GoogleAppsScriptModelFile.Function>();
    functions.add(function);
    MRR_GoogleAppsScriptModelFile.FunctionSet functionSet = new MRR_GoogleAppsScriptModelFile.FunctionSet();
    functionSet.setValues(functions);
    MRR_GoogleAppsScriptModelUser user = new MRR_GoogleAppsScriptModelUser();
    user.setDomain('Test')
      .setEmail('test@gmail.com')
      .setName('Test')
      .setPhotoUrl('www.test.com');
    MRR_GoogleAppsScriptModelFile file = new MRR_GoogleAppsScriptModelFile();
    file.setName('Test')
      .setType(MRR_GoogleAppsScriptModelFile.FileType.HTML)
      .setSource('Test')
      .setLastModifyUser(user)
      .setCreateTime('2019-10-12T07:20:50.52Z')
      .setUpdateTime('2019-10-12T07:20:50.52Z')
      .setFunctionSet(functionSet);
    files.add(file);

    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleAppsScriptProjects.Content filesResponse = new MRR_GoogleAppsScriptProjects.Content();
    filesResponse.setScriptId('123ABC').setFiles(files);

    //Assert that we get the appropriate return values.
    System.assertEquals(
      filesResponse.getScriptId(),
      '123ABC',
      'Script ID does not match'
    );
    System.assertEquals(filesResponse.getFiles(), files, 'Files do not match');
  }
  static testMethod void mrr_GoogleAppsScriptProjectsGetMetricsRequest() {
    MRR_GoogleAppsScriptProjects projects = createGoogleAppsScriptProjects();
    MRR_GoogleAppsScriptProjects.GetMetricsRequest getMetricsRequest = projects.getMetricsRequest(
      '123ABC'
    );
    assertRequestEndpointAndMethod(
      getMetricsRequest,
      'https://script.googleapis.com/v1/projects/123ABC/metrics',
      'GET'
    );

    MRR_GoogleAppsScriptProjects.MetricsFilter metricsFilter = new MRR_GoogleAppsScriptProjects.MetricsFilter();
    metricsFilter.setDeploymentId('123ABC');

    System.assertEquals(
      getMetricsRequest.getMetricsGranularity(),
      null,
      'Metrics granularity does not match'
    );
    System.assertEquals(
      getMetricsRequest.getMetricsFilter(),
      null,
      'Metrics filter does not match'
    );

    getMetricsRequest.setMetricsGranularity(
      MRR_GoogleAppsScriptModelMetrics.MetricsGranularity.DAILY
    );
    getMetricsRequest.setMetricsFilter(metricsFilter);

    System.assertEquals(
      getMetricsRequest.getMetricsGranularity(),
      MRR_GoogleAppsScriptModelMetrics.MetricsGranularity.DAILY,
      'Metrics granularity does not match'
    );
    System.assertEquals(
      getMetricsRequest.getMetricsFilter(),
      metricsFilter,
      'Metrics filter does not match'
    );
    System.assertEquals(
      metricsFilter.getDeploymentId(),
      '123ABC',
      'Deployment ID does not match'
    );
  }
  static testMethod void mrr_GoogleAppsScriptProjectsUpdateContentRequest() {
    MRR_GoogleAppsScriptProjects projects = createGoogleAppsScriptProjects();
    MRR_GoogleAppsScriptProjects.UpdateContentRequest updateContentRequest = projects.updateContentRequest(
      '123ABC',
      Blob.valueOf('Testing Blob')
    );
    assertRequestEndpointAndMethod(
      updateContentRequest,
      'https://script.googleapis.com/v1/projects/123ABC/content',
      'PUT'
    );
  }

  /**
   * Helper methods
   */

  private static MRR_GoogleAppsScript createGoogleAppsScript() {
    return new MRR_GoogleAppsScript(
      new ffhttp_Client.AccessTokenCredentials('Bearer', 'Dummy Access Token')
    );
  }
  private static MRR_GoogleAppsScriptProcesses createGoogleAppsScriptProcesses() {
    MRR_GoogleAppsScript gas = createGoogleAppsScript();
    MRR_GoogleAppsScriptProcesses processes = gas.processes();
    System.assert(processes != null, 'Processes should not be null.');
    System.assertEquals(processes.getService(), gas, 'Service does not match');

    processes.setService(null);
    System.assertEquals(processes.getService(), null, 'Service does not match');

    processes.setService(gas);

    return processes;
  }
  private static MRR_GoogleAppsScriptProjects createGoogleAppsScriptProjects() {
    MRR_GoogleAppsScript gas = createGoogleAppsScript();
    MRR_GoogleAppsScriptProjects projects = gas.projects();
    System.assert(projects != null, 'Projects should not be null.');
    System.assertEquals(projects.getService(), gas, 'Service does not match');

    projects.setService(null);
    System.assertEquals(projects.getService(), null, 'Service does not match');

    projects.setService(gas);

    return projects;
  }
  private static void assertRequestEndpointAndMethod(
    MRR_GoogleAppsScriptResource.GoogleAppsScriptRequest request,
    String endpoint,
    String method
  ) {
    System.HttpRequest httpRequest = request.buildHttpRequest();
    System.assertEquals(httpRequest.getEndpoint(), endpoint);
    System.assertEquals(httpRequest.getMethod(), method);
  }
}
