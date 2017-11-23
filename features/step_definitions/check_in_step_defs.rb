And("I am on the items page") do
  logs.click_checkout_item_button
  checkout_item.click_checkout_button
  navbar.click_items_link
  sleep 5
end

When("I click check-in for a item") do
  expect(current_url).to eq 'http://localhost:3000/items'
  sleep 5
  items_page.click_item_check_in
end

And("confirm by clicking ok") do
  items_page.confirm_alert
end

Then("the returned to and return date are set") do
  sleep 5
  expect(logs.find_return_date).to eq Date.today.strftime('%Y-%m-%d')
  expect(logs.find_returned_to).to eq 'Test Test'
end

And("the log appears as returned") do
  expect(logs.find_returned_status).to eq "Returned"
end

And("I am returned to the logs page") do
  sleep 5
  expect(current_url).to eq 'http://localhost:3000/logs'
end
