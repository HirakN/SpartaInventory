When("I enter an academy name") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
  new_academy.visit_new_academy_page
  new_academy.fill_in_name_field
end

When("I choose an academy inventory manager from a list of administrators") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I submit the data") do
  new_academy.find_create_academy_button
  new_academy.click_create_academy_button
end

Then("I expect a new academy to be created in the database") do
  new_academy.find_back_link
  new_academy.click_back_link
end

Given("that I am on the create/edit item page") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
end

When("I select an academy from a list of those available") do
  create_item.find_academy_dropdown
  create_item.select_richmond_from_dropdown
end

When("I save the record") do
  create_item.find_save_item_button
  create_item.click_save_item_button
end

Then("I expect the record to be associated with that academy") do
  pending # Write code here that turns the phrase above into concrete actions
end
