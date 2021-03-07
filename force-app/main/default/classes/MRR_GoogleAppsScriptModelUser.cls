public with sharing class MRR_GoogleAppsScriptModelUser extends MRR_GoogleAppsScriptModelAbstractObject {
  // Instance variables
  private String domain; // The user's domain
  private String email; // The user's identifying email address
  private String name; // The user's display name
  private String photoUrl; // The user's photo

  /**
   * Get/Set methods
   */
  public String getDomain() {
    return domain;
  }
  public mrr_GoogleAppsScriptModelUser setDomain(String domain) {
    this.domain = domain;
    return this;
  }

  public String getEmail() {
    return email;
  }
  public mrr_GoogleAppsScriptModelUser setEmail(String email) {
    this.email = email;
    return this;
  }

  public String getName() {
    return name;
  }
  public mrr_GoogleAppsScriptModelUser setName(String name) {
    this.name = name;
    return this;
  }

  public String getPhotoUrl() {
    return photoUrl;
  }
  public mrr_GoogleAppsScriptModelUser setPhotoUrl(String photoUrl) {
    this.photoUrl = photoUrl;
    return this;
  }
}
