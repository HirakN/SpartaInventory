Given("that I am logged in") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
end

And("Im on the create new items page") do
  navbar.click_items_link
  items_page.click_add_new_item_button
  sleep 5
end

When("I leave an empty description") do
  create_item.fill_serial_field
end

And("I click save item") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I see an error message") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("no record is created") do
  pending # Write code here that turns the phrase above into concrete actions
end
