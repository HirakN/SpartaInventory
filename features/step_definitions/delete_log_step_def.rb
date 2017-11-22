Given("I am logged in as a user") do
    login_page.visit_login_page
    login_page.find_email_field
    login_page.fill_in_email_field
    login_page.find_password_field
    login_page.fill_in_password_field
    login_page.find_submit_button
    login_page.click_submit_button
    sleep 2
end

When("I click delete") do
    navbar.click_logs_link
    sleep 2
    logs.click_delete_link
    sleep 2
end

And("I click ok on the confirmation") do
    logs.confirm_deletion_on_alert
end

Then("the log is removed from the database") do
    expect(logs.find_mac_log).to_not have_selector('td')
end
