@cli @skipOnLDAP @local_storage
Feature: create local storage from the command line
  As an admin
  I want to list all created local storage from the command line
  So that I can view available local storage

  Scenario: List the created local storages
    Given the administrator has created the local storage mount "local_storage2"
    And the administrator has uploaded file with content "this is a file in local storage" to "/local_storage2/file-in-local-storage.txt"
    When the administrator lists all the created local storage using command line
    Then the following local storages should exist
      | localStorage   |
      | local_storage2 |