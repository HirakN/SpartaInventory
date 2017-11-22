Given("I am signed in") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
end

And("I am on the edit item page") do
  navbar.click_items_link
  items_page.click_edit_item
end

When("I change the details") do
  edit_items.fill_in_description_box
  edit_items.fill_in_item_serial
  edit_items.choose_location('Leeds')
end

And("click save item") do
  edit_items.click_save_button
end

Then("I am taken to the show page for the item") do
  expect(current_url).to eq 'http://localhost:3000/items/1'
end

And("the item details are changed in the database") do
  expect(edit_items.header_css.text).to eq 'This is the new information'
end
