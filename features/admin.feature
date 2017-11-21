Feature: Admin commands
As an admin
I should be able to assign an item to an academy so that I can see where that item is kept
I should be able to check in an item from the items page so that I don't have to filter the logs to find a specific item
I should be able to create an academy
I should be able to see which items are overdue in the list of items so that I can quickly asses who needs to be contacted
I expect all items to have a non-empty description

@overdue_items

# Background:

Scenario: View overdue items
  Given that I am on the item list page
  When there are items for where the return date is the same as or earlier than the current date
  Then the return date will be coloured red in the list

@create_academy
Scenario: Create a new academy
  Given that I am logged in
  When I enter an academy name
  And I choose an academy inventory manager from a list of administrators
  And I submit the data
  Then I expect a new academy to be created in the database

@assign_items_academy
Scenario: Assign created items to an academy
  Given that I am on the create/edit item page
  When I select an academy from a list of those available
  And I save the record
  Then I expect the record to be associated with that academy



@description
Scenario: All item descriptions should be filled in
  Given that I am logged in
  And I am on the create new items page
  When I leave an empty description
  And I click save item
  Then I see an error message
  And no record is created