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
}
