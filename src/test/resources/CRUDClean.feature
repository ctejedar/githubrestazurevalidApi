Feature: Project
  @JBGROUP
  Scenario: as user i want to create update delete a project

    Given i have access to todo.ly
    When send POST request to CREATE_PROJECT using
    """
    {
      "Content":"Cucumber",
      "Icon":5
    }
    """
    Then the expected code should be 200
    And the expected body should be
    """
    {
        "Id": "IGNORE",
        "Content": "Cucumber",
        "ItemsCount": 0,
        "Icon": 5,
        "ItemType": 2,
        "ParentId": null,
        "Collapsed": false,
        "ItemOrder": "IGNORE",
        "Children": [
        ],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "IGNORE",
        "LastUpdatedDate": "IGNORE",
        "Deleted": false,
        "SyncClientCreationId": null
    }
    """
    And save the Id on ID_PROJECT
    When send PUT request to UPDATE_PROJECT with ID_PROJECT using
    """
    {
      "Content":"CucumberUPDATE"
    }
    """
    Then the expected code should be 200
    And the expected body should be
    """
    {
        "Id": "IGNORE",
        "Content": "CucumberUPDATE",
        "ItemsCount": 0,
        "Icon": 5,
        "ItemType": 2,
        "ParentId": null,
        "Collapsed": false,
        "ItemOrder": "IGNORE",
        "Children": [
        ],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "IGNORE",
        "LastUpdatedDate": "IGNORE",
        "Deleted": false,
        "SyncClientCreationId": null
    }
    """
    When send GET request to READ_PROJECT with ID_PROJECT using
    """
    """
    Then the expected code should be 200
    And the expected body should be
    """
    {
        "Id": "IGNORE",
        "Content": "CucumberUPDATE",
        "ItemsCount": 0,
        "Icon": 5,
        "ItemType": 2,
        "ParentId": null,
        "Collapsed": false,
        "ItemOrder": "IGNORE",
        "Children": [
        ],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "IGNORE",
        "LastUpdatedDate": "IGNORE",
        "Deleted": false,
        "SyncClientCreationId": null
    }
    """
    When send DELETE request to DELETE_PROJECT with ID_PROJECT using
    """
    """
    Then the expected code should be 200
    And the expected body should be
    """
    {
        "Id": "IGNORE",
        "Content": "CucumberUPDATE",
        "ItemsCount": 0,
        "Icon": 5,
        "ItemType": 2,
        "ParentId": null,
        "Collapsed": false,
        "ItemOrder": "IGNORE",
        "Children": [
        ],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "IGNORE",
        "LastUpdatedDate": "IGNORE",
        "Deleted": true,
        "SyncClientCreationId": null
    }
    """
    And verify all assert