Given("I am already logged in") do
  # Process for logging in
  login_page.visit_login_page
  login_page.find_email_field
  login_page.fill_in_email_field
  login_page.find_password_field
  login_page.fill_in_password_field
  login_page.find_submit_button
  login_page.click_submit_button
end

When("I click on the items link") do
  # Find and click items in navigation bar
  navbar.find_items_link
  navbar.click_items_link
end

Then("I am taken to the items page") do
  # Confirm landing on item page by "add new item" button presence
  items.find_add_new_item_button
end

And("I can see all of the items in the database") do
  #  Confirm the columns for all items there
  items.find_item_id_text
end

And("I am on the create new items page") do
  # Click the add new item button and check landing
  items.find_add_new_item_button
  items.click_add_new_item_button
  create_item.find_description_field
end

When("I enter in a description and a serial") do
  # CURRENTLY ACADEMY NOT NEEDED. OR PRESENT
  create_item.find_description_field
  create_item.fill_description_field
  create_item.find_serial_field
  create_item.fill_serial_field
end

And("I click save item") do
  # CURRENTLY ACADEMY NOT NEEDED
  # Find and click save item
  create_item.find_save_item_button
  create_item.click_save_item_button
end

Then("a record is created") do
  # Back button present to confirm record created
  item_show_page.find_back_button
end

And("the record is displayed") do
  # Item successfully created notification
  # FLAKY TEST!! SHOULD BE ABOVE!
  item_show_page.find_success_notification
end

And("I am on the checkout item page") do

  pending # Write code here that turns the phrase above into concrete actions
end

When("I select an item and a borrower") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("click the checkout item button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a log is created") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I am taken to the show log page") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I am on the logs page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click check-in for a log") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("confirm by clicking ok") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the returned to and return date are set") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("the log appears as returned") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I am returned to the logs page") do
  pending # Write code here that turns the phrase above into concrete actions
end
