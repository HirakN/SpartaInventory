Given("that I am on the item list page") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
  items.url
  sleep 3
end

When("there are items for where the return date is the same as or earlier than the current date") do
  item_show_page.find_due_date
  sleep 3
end

Then("the return date will be coloured red in the list") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("that I am on the items page") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
  items.url
  sleep 3
end

Given("that there are items which are checked out") do
  item_show_page.visit_page
  item_show_page.find_success_notification
  sleep 3
end

Then("the lender and the borrower names will be visible for that item in the list") do
  item_show_page.visit_page
  item_show_page.find_success_notification
  item_show_page.find_back_button
  sleep 3
end
