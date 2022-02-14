Feature: Item
  @TALLER_FINAL_ITEM
  Scenario: as user i want to create update delete a item
    Given i have access to todo.ly
    When send POST request to CREATE_ITEM using
    """
    {
      "Content":"Cucumber_Item"
    }
    """
    Then the expected code should be 200
    And the expected body should be
  """
    {
      "Id": "IGNORE",
      "Content": "Cucumber_Item",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": null,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": null,
      "Priority": 4,
      "LastSyncedDateTime": "IGNORE",
      "Children": [

      ],
      "DueDateTime": null,
      "CreatedDate": "IGNORE",
      "LastCheckedDate": null,
      "LastUpdatedDate": "IGNORE",
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "IGNORE"
    }
    """
    And save the Id on ID_ITEM
    When send PUT request to UPDATE_ITEM with ID_ITEM using
    """
    {
      "Content":"Cucumber_Item_UPDATE"
    }
    """
    Then the expected code should be 200
    And the expected body should be
    """
    {
      "Id": "IGNORE",
      "Content": "Cucumber_Item_UPDATE",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": null,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": null,
      "Priority": 4,
      "LastSyncedDateTime": "IGNORE",
      "Children": [

      ],
      "DueDateTime": null,
      "CreatedDate": "IGNORE",
      "LastCheckedDate": null,
      "LastUpdatedDate": "IGNORE",
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "IGNORE"
    }
    """
    When send GET request to READ_ITEM with ID_ITEM using
    """
    """
    Then the expected code should be 200
    And the expected body should be
    """
    {
      "Id": "IGNORE",
      "Content": "Cucumber_Item_UPDATE",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": null,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": null,
      "Priority": 4,
      "LastSyncedDateTime": "IGNORE",
      "Children": [

      ],
      "DueDateTime": null,
      "CreatedDate": "IGNORE",
      "LastCheckedDate": null,
      "LastUpdatedDate": "IGNORE",
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "IGNORE"
    }
    """
    When send DELETE request to DELETE_ITEM with ID_ITEM using
    """
    """
    Then the expected code should be 200
    And the expected body should be
    """
    {
      "Id": "IGNORE",
      "Content": "Cucumber_Item_UPDATE",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": null,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": null,
      "Priority": 4,
      "LastSyncedDateTime": "IGNORE",
      "Children": [

      ],
      "DueDateTime": null,
      "CreatedDate": "IGNORE",
      "LastCheckedDate": null,
      "LastUpdatedDate": "IGNORE",
      "Deleted": true,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "IGNORE"
    }
    """
    And verify all assert






