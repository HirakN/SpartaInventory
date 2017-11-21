@Items
Feature: Assign Item

Scenario: I should be able to create an item
  Given I am logged in
  And I am on the create new items options page
  And I click on add item button
  When I enter in a description and a serial
  And I click save item
  Then a record is created
  And the record is displayed
