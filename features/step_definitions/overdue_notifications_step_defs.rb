Given("that I have checked out an item") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
  items.url
  item_show_page.visit_page
end

And("the item has not been returned") do
  pending
end

And("that I have set a date for its return") do
  pending
end

When("that date is reached") do
  item_show_page.find_due_date
end

Then("I expect the lender to receive a notification") do
  item_show_page.find_success_notification
end
