# given is wrong. LOG PAGE not items page.

Given("I am on the items page") do
    login_page.visit_login_page
    login_page.find_email_field
    login_page.fill_in_email_field
    login_page.find_password_field
    login_page.fill_in_password_field
    login_page.find_submit_button
    login_page.click_submit_button
    sleep 2
    navbar.click_items_link

end

When("I click check-in for a item") do


end

When("confirm by clicking ok") do

  pending # Write code here that turns the phrase above into concrete actions
end

Then("the returned to and return date are set") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the log appears as returned") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am returned to the log page") do
  pending # Write code here that turns the phrase above into concrete actions
end
