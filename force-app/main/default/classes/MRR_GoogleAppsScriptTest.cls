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
}
