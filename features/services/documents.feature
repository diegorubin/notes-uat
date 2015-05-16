Feature: Documents API

  Scenario: Create a new document
    When I use "/documents" API
    And send valid attributes
    Then response should contains a new id
    And status should be "201"

  Scenario: List all documents
    When I use "/documents" API
    Then response should contains a list of documents
    And status should be "200"

