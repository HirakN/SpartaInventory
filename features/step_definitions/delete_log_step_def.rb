Given("I am logged in as a user") do
    login_page.visit_login_page
    login_page.find_email_field
    login_page.fill_in_email_field
    login_page.find_password_field
    login_page.fill_in_password_field
    login_page.find_submit_button
    login_page.click_submit_button
end

When("I click delete") do



end

When("I click ok on the confirmation") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the log is removed from the database") do
  pending # Write code here that turns the phrase above into concrete actions
end
