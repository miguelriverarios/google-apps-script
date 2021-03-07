@isTest
private class MRR_GoogleAppsScriptModelTest {
  static testMethod void mrr_GoogleAppsScriptModelDeployment() {
    //Create all the required sub-classes
    MRR_GoogleAppsScriptModelDeployment.DeploymentConfig deploymentConfig = new MRR_GoogleAppsScriptModelDeployment.DeploymentConfig();
    deploymentConfig.setScriptId('123ABC')
      .setVersionNumber(5)
      .setManifestFileName('Test')
      .setDescription('Test');

    MRR_GoogleAppsScriptModelDeployment.WebAppConfig webAppConfig = new MRR_GoogleAppsScriptModelDeployment.WebAppConfig();
    webAppConfig.setAccess(MRR_GoogleAppsScriptModelDeployment.Access.MYSELF)
      .setExecuteAs(
        MRR_GoogleAppsScriptModelDeployment.ExecuteAs.USER_ACCESSING
      );
    MRR_GoogleAppsScriptModelDeployment.WebAppEntryPoint webAppEntryPoint = new MRR_GoogleAppsScriptModelDeployment.WebAppEntryPoint();
    webAppEntryPoint.setUrl('www.test.com').setEntryPointConfig(webAppConfig);
    MRR_GoogleAppsScriptModelDeployment.ExecutionApiConfig executionApiConfig = new MRR_GoogleAppsScriptModelDeployment.ExecutionApiConfig();
    executionApiConfig.setAccess(
      MRR_GoogleAppsScriptModelDeployment.Access.MYSELF
    );
    MRR_GoogleAppsScriptModelDeployment.ExecutionApiEntryPoint executionApiEntryPoint = new MRR_GoogleAppsScriptModelDeployment.ExecutionApiEntryPoint();
    executionApiEntryPoint.setEntryPointConfig(executionApiConfig);
    MRR_GoogleAppsScriptModelDeployment.AddOnEntryPoint addOnEntryPoint = new MRR_GoogleAppsScriptModelDeployment.AddOnEntryPoint();
    addOnEntryPoint.setAddOnType(
        MRR_GoogleAppsScriptModelDeployment.AddOnType.GMAIL
      )
      .setTitle('Test')
      .setDescription('Test')
      .setHelpUrl('www.test.com')
      .setReportIssueUrl('www.test.com')
      .setPostInstallTipUrl('www.test.com');
    MRR_GoogleAppsScriptModelDeployment.EntryPoint entryPoint = new MRR_GoogleAppsScriptModelDeployment.EntryPoint();
    entryPoint.setEntryPointType(
        MRR_GoogleAppsScriptModelDeployment.EntryPointType.WEB_APP
      )
      .setWebApp(webAppEntryPoint)
      .setExecutionApi(executionApiEntryPoint)
      .setAddOn(addOnEntryPoint);
    MRR_GoogleAppsScriptModelDeployment.EntryPoint[] entryPoints = new List<MRR_GoogleAppsScriptModelDeployment.EntryPoint>();
    entryPoints.add(entryPoint);

    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleAppsScriptModelDeployment deployment = new MRR_GoogleAppsScriptModelDeployment();
    deployment.setDeploymentId('123ABC')
      .setDeploymentConfig(deploymentConfig)
      .setUpdateTime('2019-10-12T07:20:50.52Z')
      .setEntryPoints(entryPoints);

    //Assert that we get the appropriate return values.
    System.assertEquals(
      deployment.getDeploymentId(),
      '123ABC',
      'Deployment ID\'s do not match'
    );
    System.assertEquals(
      deployment.getDeploymentConfig(),
      deploymentConfig,
      'Deployment configurations do not match'
    );
    System.assertEquals(
      deployment.getUpdateTime(),
      '2019-10-12T07:20:50.52Z',
      'Deployment update times do not match'
    );
    System.assertEquals(
      deployment.getEntryPoints(),
      entryPoints,
      'Deployment entry points do not match'
    );
    System.assertEquals(
      entryPoint.getEntryPointType(),
      MRR_GoogleAppsScriptModelDeployment.EntryPointType.WEB_APP,
      'Entry point type does not match'
    );
    System.assertEquals(
      entryPoint.getWebApp(),
      webAppEntrypoint,
      'Entry point web app does not match'
    );
    System.assertEquals(
      entryPoint.getExecutionApi(),
      executionApiEntryPoint,
      'Entry point execution api does not match'
    );
    System.assertEquals(
      entryPoint.getAddOn(),
      addOnEntryPoint,
      'Entry point add on does not match'
    );
    System.assertEquals(
      addOnEntryPoint.getAddOnType(),
      MRR_GoogleAppsScriptModelDeployment.AddOnType.GMAIL,
      'Add on entry point type does not match'
    );
    System.assertEquals(
      addOnEntryPoint.getTitle(),
      'Test',
      'Add on entry point title does not match'
    );
    System.assertEquals(
      addOnEntryPoint.getDescription(),
      'Test',
      'Add on entry point description does not match'
    );
    System.assertEquals(
      addOnEntryPoint.getHelpUrl(),
      'www.test.com',
      'Add on entry point help URL does not match'
    );
    System.assertEquals(
      addOnEntryPoint.getReportIssueUrl(),
      'www.test.com',
      'Add on entry point report issue URL does not match'
    );
    System.assertEquals(
      addOnEntryPoint.getPostInstallTipUrl(),
      'www.test.com',
      'Add on entry point post install tip URL does not match'
    );
    System.assertEquals(
      executionApiConfig.getAccess(),
      MRR_GoogleAppsScriptModelDeployment.Access.MYSELF,
      'Execution api configuration access does not match'
    );
    System.assertEquals(
      executionApiEntryPoint.getEntryPointConfig(),
      executionApiConfig,
      'Execution api entry point configuration does not match'
    );
    System.assertEquals(
      webAppConfig.getAccess(),
      MRR_GoogleAppsScriptModelDeployment.Access.MYSELF,
      'Web app configuration access does not match'
    );
    System.assertEquals(
      webAppConfig.getExecuteAs(),
      MRR_GoogleAppsScriptModelDeployment.ExecuteAs.USER_ACCESSING,
      'Web app configuration execute as does not match'
    );
    System.assertEquals(
      webAppEntryPoint.getUrl(),
      'www.test.com',
      'Web app entry point url does not match'
    );
    System.assertEquals(
      webAppEntryPoint.getEntryPointConfig(),
      webAppConfig,
      'Web app entry point configuration does not match'
    );
    System.assertEquals(
      deploymentConfig.getScriptId(),
      '123ABC',
      'Deployment configuration script ID\'s do not match'
    );
    System.assertEquals(
      deploymentConfig.getVersionNumber(),
      5,
      'Deployment configuration version number does not match'
    );
    System.assertEquals(
      deploymentConfig.getManifestFileName(),
      'Test',
      'Deployment configuration manifest file does not match'
    );
    System.assertEquals(
      deploymentConfig.getDescription(),
      'Test',
      'Deployment configuration description does not match'
    );
  }
  static testMethod void mrr_GoogleAppsScriptModelMetrics() {
    //Create all the required sub-classes
    MRR_GoogleAppsScriptModelMetrics.MetricsValue metricsValue = new MRR_GoogleAppsScriptModelMetrics.MetricsValue();
    metricsValue.setValue('10')
      .setStartTime('2019-10-12T07:20:50.52Z')
      .setEndTime('2019-10-12T07:20:50.52Z');
    MRR_GoogleAppsScriptModelMetrics.MetricsValue[] metricsValues = new List<MRR_GoogleAppsScriptModelMetrics.MetricsValue>();
    metricsValues.add(metricsValue);

    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleAppsScriptModelMetrics metrics = new MRR_GoogleAppsScriptModelMetrics();
    metrics.setActiveUsers(metricsValues)
      .setTotalExecutions(metricsValues)
      .setFailedExecutions(metricsValues);

    //Assert that we get the appropriate return values.
    System.assertEquals(
      metrics.getActiveUsers(),
      metricsValues,
      'Active users do not match'
    );
    System.assertEquals(
      metrics.getTotalExecutions(),
      metricsValues,
      'Total executions do not match'
    );
    System.assertEquals(
      metrics.getFailedExecutions(),
      metricsValues,
      'Failed executions do not match'
    );
    System.assertEquals(metricsValue.getValue(), '10', 'Values do not match');
    System.assertEquals(
      metricsValue.getStartTime(),
      '2019-10-12T07:20:50.52Z',
      'Start times do not match'
    );
    System.assertEquals(
      metricsValue.getEndTime(),
      '2019-10-12T07:20:50.52Z',
      'End times do not match'
    );
  }
  static testMethod void mrr_GoogleAppsScriptModelProcess() {
    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
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

    //Assert that we get the appropriate return values.
    System.assertEquals(
      process.getProjectName(),
      'Test',
      'Project name does not match'
    );
    System.assertEquals(
      process.getFunctionName(),
      'Test',
      'Function name does not match'
    );
    System.assertEquals(
      process.getProcessType(),
      MRR_GoogleAppsScriptModelProcess.ProcessType.MENU,
      'Process type does not match'
    );
    System.assertEquals(
      process.getProcessStatus(),
      MRR_GoogleAppsScriptModelProcess.ProcessStatus.COMPLETED,
      'Process status does not match'
    );
    System.assertEquals(
      process.getUserAccessLevel(),
      MRR_GoogleAppsScriptModelProcess.UserAccessLevel.OWNER,
      'User access level does not match'
    );
    System.assertEquals(
      process.getStartTime(),
      '2019-10-12T07:20:50.52Z',
      'Start time does not match'
    );
    System.assertEquals(process.getDuration(), '5', 'Duration does not match');
  }
  static testMethod void mrr_GoogleAppsScriptModelProject() {
    //Create all the required sub-classes
    MRR_GoogleAppsScriptModelUser user = new MRR_GoogleAppsScriptModelUser();
    user.setDomain('Test')
      .setEmail('test@gmail.com')
      .setName('Test')
      .setPhotoUrl('www.test.com');

    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleAppsScriptModelProject project = new MRR_GoogleAppsScriptModelProject();
    project.setScriptId('123ABC')
      .setTitle('Test')
      .setParentId('123ABC')
      .setCreateTime('2019-10-12T07:20:50.52Z')
      .setUpdateTime('2019-10-12T07:20:50.52Z')
      .setCreator(user)
      .setLastModifyUser(user);

    //Assert that we get the appropriate return values.
    System.assertEquals(
      project.getScriptId(),
      '123ABC',
      'Script ID does not match'
    );
    System.assertEquals(project.getTitle(), 'Test', 'Title does not match');
    System.assertEquals(
      project.getParentId(),
      '123ABC',
      'Parent ID does not match'
    );
    System.assertEquals(
      project.getCreateTime(),
      '2019-10-12T07:20:50.52Z',
      'Create time does not match'
    );
    System.assertEquals(
      project.getUpdateTime(),
      '2019-10-12T07:20:50.52Z',
      'Update time does not match'
    );
    System.assertEquals(project.getCreator(), user, 'Creator does not match');
    System.assertEquals(
      project.getLastModifyUser(),
      user,
      'Last modify user does not match'
    );
    System.assertEquals(user.getDomain(), 'Test', 'Domain does not match');
    System.assertEquals(
      user.getEmail(),
      'test@gmail.com',
      'Email does not match'
    );
    System.assertEquals(user.getName(), 'Test', 'Name does not match');
    System.assertEquals(
      user.getPhotoUrl(),
      'www.test.com',
      'Photo URL does not match'
    );
  }
}
