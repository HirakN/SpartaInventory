@description
Feature: Write Description
As a user
I expect all items to have a non-empty description

Scenario: All item descriptions should be filled in
  Given that I am logged in
  And Im on the create new items page
  When I leave an empty description
  And I click save item
  Then I see an error message
  And no record is created
