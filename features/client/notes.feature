Feature: Notes Dashboard
  Background:
    Given I am in Dashboard

  Scenario: Open new note dialog
    When I click in "Nova Nota" button
    Then show "Cancelar" button
    And show "Concluir" button

