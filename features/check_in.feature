@check_in
Feature: Check In
As a user
I should be able to check in an item from the items page so that I don't have to filter the logs to find a specific item

Scenario: Check in items from item page
  Given that I am logged in
  And I am on the items page
  When I click check-in for a item
  And confirm by clicking ok
  Then the returned to and return date are set
  And the log appears as returned
  And I am returned to the log page
