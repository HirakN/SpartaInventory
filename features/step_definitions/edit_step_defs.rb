Given("I am logged in") do
  login_page.visit_login_page
  login_page.fill_in_email_field
  login_page.fill_in_password_field
  login_page.click_submit_button
end

And("I am on the edit item page") do
  navbar.click_items_link
  items_page
end

When("I change the details") do

  pending # Write code here that turns the phrase above into concrete actions
end

And("click save item") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am taken to the show page for the item") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("the item details are changed in the database") do
  pending # Write code here that turns the phrase above into concrete actions
end
