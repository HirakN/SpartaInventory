Given("I enter valid email and password to login") do
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
  items_page.find_item_id_text
  items_page.find_add_new_item_button
end

And("I can see all of the items in the database") do
  #  Confirm the columns for all items there
  items_page.find_item_id_text
end

And("I am on the checkout item page") do
  # Check the check out button is present
  navbar.click_checkout_link
  checkout_item.find_checkout_button
end

When("I select an item and a borrower") do
  checkout_item.choose_item_to_borrow
  checkout_item.choose_borrower
end

And("click the checkout item button") do
  checkout_item.click_checkout_button
end

Then("a log is created") do
  item_show_page.find_success_notification
end

And("I am taken to the show log page") do
  item_show_page.find_back_button
end


#Item_check
And("I am on the logs page") do
#back button is present to show we are on the logs page
  logs_show_page.find_back_to_logs_button
  logs_show_page.click_back_to_logs_button
  logs.find_checkout_item_button
end

When("I click check-in for a log") do
  logs.click_check_in_link
end

And("confirm check in by clicking ok") do
  logs.confirm_ok_on_alert
  sleep 3
end

Then("the returned to and return date for the item are set") do
  logs.find_return_date
end

And("the item appears as returned") do
  expect(logs.find_returned_status).to eq "Returned"
end

And("I am returned to the updated logs page") do
  logs_show_page.find_back_to_logs_button
  logs_show_page.click_back_to_Logs_button
end
