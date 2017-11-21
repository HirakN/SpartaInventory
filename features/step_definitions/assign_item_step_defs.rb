<<<<<<< HEAD

=======
>>>>>>> b8f52bf2ac1e7445b51a9da211e26327afd2b706
Given("I am already logged in") do
  login_page.visit_login_page
  login_page.find_email_field
  login_page.fill_in_email_field
  login_page.find_password_field
  login_page.fill_in_password_field
  login_page.find_submit_button
  login_page.click_submit_button
end

Given("I am on the create new items page") do
<<<<<<< HEAD
  pending # Write code here that turns the phrase above into concrete actions
=======
navbar.find_items_link
sleep 5
navbar.click_items_link
sleep 5
end


And("I click on add item button") do
  items.click_add_new_item_button
>>>>>>> b8f52bf2ac1e7445b51a9da211e26327afd2b706
end

When("I enter in a description and a serial") do
  pending # Write code here that turns the phrase above into concrete actions
end

<<<<<<< HEAD
When("I click save item") do
=======
And("I click save item") do
>>>>>>> b8f52bf2ac1e7445b51a9da211e26327afd2b706
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a record is created") do
  pending # Write code here that turns the phrase above into concrete actions
end

<<<<<<< HEAD
Then("the record is displayed") do
=======
And("the record is displayed") do
>>>>>>> b8f52bf2ac1e7445b51a9da211e26327afd2b706
  pending # Write code here that turns the phrase above into concrete actions
end
