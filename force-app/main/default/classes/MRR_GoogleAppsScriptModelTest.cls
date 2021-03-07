@isTest
private class MRR_GoogleAppsScriptModelTest {
  static testMethod void mrr_GoogleDriveModelDeployment() {
    //Create all the required sub-classes
    MRR_GoogleDriveModelDeployment.DeploymentConfig deploymentConfig = new MRR_GoogleDriveModelDeployment.DeploymentConfig();
    deploymentConfig.setScriptId('123ABC')
      .setVersionNumber(5)
      .setManifestFileName('Test')
      .setDescription('Test');

    MRR_GoogleDriveModelDeployment.WebAppConfig webAppConfig = new MRR_GoogleDriveModelDeployment.WebAppConfig();
    webAppConfig.setAccess(MRR_GoogleDriveModelDeployment.Access.MYSELF)
      .setExecuteAs(MRR_GoogleDriveModelDeployment.ExecuteAs.USER_ACCESSING);
    MRR_GoogleDriveModelDeployment.WebAppEntryPoint webAppEntryPoint = new MRR_GoogleDriveModelDeployment.WebAppEntryPoint();
    webAppEntryPoint.setUrl('www.test.com').setEntryPointConfig(webAppConfig);
    MRR_GoogleDriveModelDeployment.ExecutionApiConfig executionApiConfig = new MRR_GoogleDriveModelDeployment.ExecutionApiConfig();
    executionApiConfig.setAccess(MRR_GoogleDriveModelDeployment.Access.MYSELF);
    MRR_GoogleDriveModelDeployment.ExecutionApiEntryPoint executionApiEntryPoint = new MRR_GoogleDriveModelDeployment.ExecutionApiEntryPoint();
    executionApiEntryPoint.setEntryPointConfig(executionApiConfig);
    MRR_GoogleDriveModelDeployment.AddOnEntryPoint addOnEntryPoint = new MRR_GoogleDriveModelDeployment.AddOnEntryPoint();
    addOnEntryPoint.setAddOnType(MRR_GoogleDriveModelDeployment.AddOnType.GMAIL)
      .setTitle('Test')
      .setDescription('Test')
      .setHelpUrl('www.test.com')
      .setReportIssueUrl('www.test.com')
      .setPostInstallTipUrl('www.test.com');
    MRR_GoogleDriveModelDeployment.EntryPoint entryPoint = new MRR_GoogleDriveModelDeployment.EntryPoint();
    entryPoint.setEntryPointType(
        MRR_GoogleDriveModelDeployment.EntryPointType.WEB_APP
      )
      .setWebApp(webAppEntryPoint)
      .setExecutionApi(executionApiEntryPoint)
      .setAddOn(addOnEntryPoint);
    MRR_GoogleDriveModelDeployment.EntryPoint[] entryPoints = new List<MRR_GoogleDriveModelDeployment.EntryPoint>();
    entryPoints.add(entryPoint);

    //Create the file class. Chain the set calls so that we can check that we correctly return the file object.
    MRR_GoogleDriveModelDeployment deployment = new MRR_GoogleDriveModelDeployment();
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
      MRR_GoogleDriveModelDeployment.EntryPointType.WEB_APP,
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
      MRR_GoogleDriveModelDeployment.AddOnType.GMAIL,
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
      MRR_GoogleDriveModelDeployment.Access.MYSELF,
      'Execution api configuration access does not match'
    );
    System.assertEquals(
      executionApiEntryPoint.getEntryPointConfig(),
      executionApiConfig,
      'Execution api entry point configuration does not match'
    );
    System.assertEquals(
      webAppConfig.getAccess(),
      MRR_GoogleDriveModelDeployment.Access.MYSELF,
      'Web app configuration access does not match'
    );
    System.assertEquals(
      webAppConfig.getExecuteAs(),
      MRR_GoogleDriveModelDeployment.ExecuteAs.USER_ACCESSING,
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
}
