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
  }
  static testMethod void mrr_GoogleAppsScriptModelVersion() {
    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleAppsScriptModelVersion version = new MRR_GoogleAppsScriptModelVersion();
    version.setScriptId('123ABC')
      .setVersionNumber(5)
      .setDescription('Test')
      .setCreateTime('2019-10-12T07:20:50.52Z');

    //Assert that we get the appropriate return values.
    System.assertEquals(
      version.getScriptId(),
      '123ABC',
      'Script ID does not match'
    );
    System.assertEquals(
      version.getVersionNumber(),
      5,
      'Version number does not match'
    );
    System.assertEquals(
      version.getDescription(),
      'Test',
      'Description does not match'
    );
    System.assertEquals(
      version.getCreateTime(),
      '2019-10-12T07:20:50.52Z',
      'Create time does not match'
    );
  }
  static testMethod void mrr_GoogleAppsScriptModelFile() {
    //Create all the required sub-classes
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

    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleAppsScriptModelFile file = new MRR_GoogleAppsScriptModelFile();
    file.setName('Test')
      .setType(MRR_GoogleAppsScriptModelFile.FileType.HTML)
      .setSource('Test')
      .setLastModifyUser(user)
      .setCreateTime('2019-10-12T07:20:50.52Z')
      .setUpdateTime('2019-10-12T07:20:50.52Z')
      .setFunctionSet(functionSet);

    //Assert that we get the appropriate return values.
    System.assertEquals(file.getName(), 'Test', 'Name does not match');
    System.assertEquals(
      file.getType(),
      MRR_GoogleAppsScriptModelFile.FileType.HTML,
      'Type does not match'
    );
    System.assertEquals(file.getSource(), 'Test', 'Source does not match');
    System.assertEquals(
      file.getLastModifyUser(),
      user,
      'Last modify user does not match'
    );
    System.assertEquals(
      file.getCreateTime(),
      '2019-10-12T07:20:50.52Z',
      'Create time does not match'
    );
    System.assertEquals(
      file.getUpdateTime(),
      '2019-10-12T07:20:50.52Z',
      'Update time does not match'
    );
    System.assertEquals(
      file.getFunctionSet(),
      functionSet,
      'Function set does not match'
    );
    System.assertEquals(
      functionSet.getValues(),
      functions,
      'Functions do not match'
    );
    System.assertEquals(function.getName(), 'Test', 'Name does not match');
  }
  static testMethod void mrr_GoogleAppsScriptModelUser() {
    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleAppsScriptModelUser user = new MRR_GoogleAppsScriptModelUser();
    user.setDomain('Test')
      .setEmail('test@gmail.com')
      .setName('Test')
      .setPhotoUrl('www.test.com');

    //Assert that we get the appropriate return values.
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
  static testMethod void mrr_GoogleAppsScriptModelContent() {
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
    MRR_GoogleAppsScriptModelContent content = new MRR_GoogleAppsScriptModelContent();
    content.setScriptId('123ABC').setFiles(files);

    //Assert that we get the appropriate return values.
    System.assertEquals(
      content.getScriptId(),
      '123ABC',
      'Script ID does not match'
    );
    System.assertEquals(content.getFiles(), files, 'Files do not match');
  }
  static testMethod void mrr_GoogleAppsScriptModelListDeployments() {
    //Create all the required sub-classes
    MRR_GoogleAppsScriptModelDeployment[] deployments = new List<MRR_GoogleAppsScriptModelDeployment>();
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
    MRR_GoogleAppsScriptModelDeployment deployment = new MRR_GoogleAppsScriptModelDeployment();
    deployment.setDeploymentId('123ABC')
      .setDeploymentConfig(deploymentConfig)
      .setUpdateTime('2019-10-12T07:20:50.52Z')
      .setEntryPoints(entryPoints);
    deployments.add(deployment);

    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleAppsScriptModelListDeployments deploymentsList = new MRR_GoogleAppsScriptModelListDeployments();
    deploymentsList.setDeployments(deployments).setNextPageToken('123');

    //Assert that we get the appropriate return values.
    System.assertEquals(
      deploymentsList.getDeployments(),
      deployments,
      'Deployments do not match'
    );
    System.assertEquals(
      deploymentsList.getNextPageToken(),
      '123',
      'Next page token does not match'
    );
  }
  static testMethod void mrr_GoogleAppsScriptModelListVersions() {
    //Create all the required sub-classes
    MRR_GoogleAppsScriptModelVersion[] versions = new List<MRR_GoogleAppsScriptModelVersion>();
    MRR_GoogleAppsScriptModelVersion version = new MRR_GoogleAppsScriptModelVersion();
    version.setScriptId('123ABC')
      .setVersionNumber(5)
      .setDescription('Test')
      .setCreateTime('2019-10-12T07:20:50.52Z');
    versions.add(version);

    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleAppsScriptModelListVersions versionsList = new MRR_GoogleAppsScriptModelListVersions();
    versionsList.setVersions(versions).setNextPageToken('123');

    //Assert that we get the appropriate return values.
    System.assertEquals(
      versionsList.getVersions(),
      versions,
      'Versions do not match'
    );
    System.assertEquals(
      versionsList.getNextPageToken(),
      '123',
      'Next page token does not match'
    );
  }
  static testMethod void mrr_GoogleAppsScriptModelListProcesses() {
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
    MRR_GoogleAppsScriptModelListProcesses processesList = new MRR_GoogleAppsScriptModelListProcesses();
    processesList.setProcesses(processes).setNextPageToken('123');

    //Assert that we get the appropriate return values.
    System.assertEquals(
      processesList.getProcesses(),
      processes,
      'Processes do not match'
    );
    System.assertEquals(
      processesList.getNextPageToken(),
      '123',
      'Next page token does not match'
    );
  }
}
