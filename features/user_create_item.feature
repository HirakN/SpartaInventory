Feature: Item usage
  @item_view
  Scenario: As a user I should be able to see the items
    Given I enter valid email and password to login
    When I click on the items link
    Then I am taken to the items page
    And I can see all of the items in the database

  @item_checkout
  Scenario: As a user I should be able to checkout an item so that I can keep a record of all of the people who hold items
    Given I am already logged in
    And I am on the checkout item page
    When I select an item and a borrower
    And click the checkout item button
    Then a log is created
    And I am taken to the show log page

  @item_check
  Scenario: As a user I should be able to check in an item so that I can keep a record of returned items
    Given I am already logged in
    And I am on the logs page
    When I click check-in for a log
    And confirm by clicking ok
    Then the returned to and return date are set
    And the log appears as returned
    And I am returned to the logs page
