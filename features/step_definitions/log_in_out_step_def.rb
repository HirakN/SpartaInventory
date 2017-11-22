Given("I have access to the login page") do
  # Instantiate the Module to gain class methods
  login_page.visit_login_page
end

When("I enter in the required fields") do
  # Fill in email and password fields
  login_page.find_email_field
  login_page.fill_in_email_field
  login_page.find_password_field
  login_page.fill_in_password_field
end

And("I submit the credentials") do
  # From the landing log in page
  login_page.find_submit_button
  login_page.click_submit_button
end

Then("I am taken to the logs page") do
  # This will go to the page where you can check out an item
  logs.find_checkout_item_button
end

And("I have access to restricted resources") do
  # Go through to checkout page and confirm landing
  logs.click_checkout_item_button
  logs.find_checkout_text
end

When("I enter in the incorrect details on the login page") do
  # SPLIT INTO TWO TESTS!! WRONG EMAIL AND WRONG PASSWORD
  login_page.find_email_field
  login_page.fill_in_email_field_incorrectly
  login_page.find_password_field
  login_page.fill_in_password_field
  login_page.find_submit_button
  login_page.click_submit_button
end

Then("I am returned to the login page") do
  # Check the email address field is present.
  login_page.find_email_field
end

And("an error message is displayed") do
  #  NO ERROR MESSAGE APPEARS. DELETE
end

Given("I am already logged in") do
  #  Go through the process of logging in
  login_page.visit_login_page
  login_page.find_email_field
  login_page.fill_in_email_field
  login_page.find_password_field
  login_page.fill_in_password_field
  login_page.find_submit_button
  login_page.click_submit_button
end

When("I click the logout button") do
  # Find and click logout
  navbar.find_logout_navbar_link
  navbar.click_logout_navbar_link
end

Then("I am taken to the login page") do
  # Check the email address field is present.
  login_page.find_email_field
end
