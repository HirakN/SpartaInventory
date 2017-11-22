Feature: Academy
As a User
I should be able to create an academy
I should be able to assign an item to an academy so that I can see where that item is kept

@assign_items_academy
Scenario: Assign created items to an academy
  Given that I am on the create and edit item page
  When I select an academy from a list of those available
  And I save the record
  Then I expect the record to be associated with that academy

@create_academy
Scenario: Create a new academy
  Given that I am logged in
  When I enter an academy name
  And I choose an academy inventory manager from a list of administrators
  And I submit the data
  Then I expect a new academy to be created in the database
