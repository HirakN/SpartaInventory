When("I enter an academy name") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
  new_academy.visit_new_academy_page
  new_academy.fill_in_name_field
  sleep 3
end

When("I submit the data") do
  new_academy.fill_in_name_field
  new_academy.find_create_academy_button
  new_academy.click_create_academy_button
  sleep 3
end

Then("I expect a new academy to be created in the database") do
  new_academy.find_back_link
  new_academy.click_back_link
  sleep 3
end

Given("that I am on the create and edit item page") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
  sleep 3
end

When("I select an academy from a list of those available") do
  navbar.click_items_link
  items_page.click_add_new_item_button
  create_item.find_description_field
  create_item.fill_description_field
  create_item.find_serial_field
  create_item.fill_serial_field
  create_item.academies_dropdown
  create_item.click_academies_dropdown
  create_item.choose_location('Leeds')
  sleep 3
end

When("I save the record") do
  create_item.find_save_item_button
  create_item.click_save_item_button
  sleep 3
end

Then("I expect the record to be associated with that academy") do

end
