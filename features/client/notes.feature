Feature: Documents Dashboard
  Background:
    Given I am in Dashboard

  Scenario: Open new document dialog
    When I click in "Nova Nota" button
    Then open "Edição de Nota" view

