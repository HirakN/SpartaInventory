Feature: Items
As a user
I should be able to see which items are overdue in the list of items so that I can quickly asses who needs to be contacted
I should be able to see the lender and borrower on the items page so I can see easily if an item is available

@overdue_items
Scenario: View overdue items
  Given that I am on the item list page
  When there are items for where the return date is the same as or earlier than the current date
  Then the return date will be coloured red in the list

@view_items
Scenario: View borrower and lender of each checked out item
  Given that I am on the items page
  And that there are items which are checked out
  Then the lender and the borrower names will be visible for that item in the list
