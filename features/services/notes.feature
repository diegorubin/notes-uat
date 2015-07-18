Feature: notes API

  Scenario: Create a new note
    When I use "/notes" API
    And send valid attributes
    Then response should contains a new id
    And status should be "201"

  Scenario: List all notes
    When I use "/notes" API
    Then response should contains a list of notes
    And status should be "200"

