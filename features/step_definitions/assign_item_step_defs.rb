#Logs you in
Given("I am logged in") do
  login_page.visit_login_page
  login_page.find_email_field
  login_page.fill_in_email_field
  login_page.find_password_field
  login_page.fill_in_password_field
  login_page.find_submit_button
  login_page.click_submit_button
end
#checks if the Item link is on the page and clicks it
Given("I am on the create new items options page") do
  navbar.find_items_link
  sleep 5
  navbar.click_items_link
  sleep 5
end

And("I click on add item button") do
  items_page.click_add_new_item_button
end

When("I enter in a description and a serial") do
  create_item.fill_description_field
  create_item.fill_serial_field
end

And("I click save item") do
  create_item.click_save_item_button
end

Then("a record is created") do
  item_show_page.find_success_notification
end
#checks if the notification is present as well as the back button
And("the record is displayed") do
  item_show_page.find_success_notification
  item_show_page.find_back_button
end
