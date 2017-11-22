And("I am on the items page") do
  logs.click_checkout_item_button
    sleep 5
  checkout_item.click_checkout_button
  navbar.click_items_link

end

When("I click check-in for a item") do
  expect(current_url).to eq 'http://localhost:3000/items'
  items_page.click_item_check_in
end

And("confirm by clicking ok") do
  items_page.confirm_alert
end

Then("the returned to and return date are set") do
  expect(items_page.find_return_date)
  expect(items_page.find_due_date)
end

And("the log appears as returned") do
  logs_show_page.url
end

And("I am returned to the logs page") do
  logs_show_page.click_back_to_Logs_button
end
