Given("I have access to the login page") do
  # Instantiate the Module to gain class methods
  @inventory = InventoryApp.new
  @inventory.login_page.visit_login_page
end

When("I enter in the required fields") do
  # Fill in email and password fields
  @inventory.login_page.find_email_field
  @inventory.login_page.fill_in_email_field
  @inventory.login_page.find_password_field
  @inventory.login_page.fill_in_password_field
end

And("I submit the credentials") do
  # From the landing log in page
  @inventory.login_page.find_submit_button
  @inventory.login_page.click_submit_button
end

Then("I am taken to the logs page") do
  # This will go to the page where you can check out an item
  @inventory.logs.find_checkout_item_button
end

And("I have access to restricted resources") do
  # Go through to checkout page and confirm landing
  @inventory.logs.click_checkout_item_button
  @inventory.logs.find_checkout_text
end

When("I enter in the incorrect details on the login page") do
  # SPLIT INTO TWO TESTS!! WRONG EMAIL AND WRONG PASSWORD
  @inventory.login_page.find_email_field
  @inventory.login_page.fill_in_email_field_incorrectly
  @inventory.login_page.find_password_field
  @inventory.login_page.fill_in_password_field
  @inventory.login_page.find_submit_button
  @inventory.login_page.click_submit_button
end

Then("I am returned to the login page") do
  # Check the email address field is present.
  @inventory.login_page.find_email_field
end

And("an error message is displayed") do
  #  NO ERROR MESSAGE APPEARS. DELETE
end

When("I click the logout button") do
  # Find and click logout
  @inventory.navbar.find_logout_navbar_link
  @inventory.navbar.click_logout_navbar_link
end

Then("I am taken to the login page") do
  # Check the email address field is present.
  @inventory.login_page.find_email_field
end
