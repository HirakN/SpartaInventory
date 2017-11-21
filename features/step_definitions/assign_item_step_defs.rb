
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
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter in a description and a serial") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click save item") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a record is created") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the record is displayed") do
  pending # Write code here that turns the phrase above into concrete actions
end
