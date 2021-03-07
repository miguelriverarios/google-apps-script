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
