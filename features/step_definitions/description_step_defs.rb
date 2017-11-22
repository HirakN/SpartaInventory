Given("that I am logged in") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
end

And("Im on the create new items page") do
  navbar.click_items_link
  items_page.click_add_new_item_button
end

When("I leave an empty description") do
  expect(create_item.find_item_description_box_id.text).to eq ''
  create_item.fill_serial_field
end

And("I click save") do
  create_item.click_save_item_button
end

Then("I see an error message") do
  expect(create_item.find_error_div_text).to eq '1 error prohibited this item from being saved:'
end

And("no record is created") do
  expect(current_url).to eq 'http://localhost:3000/items'
end
