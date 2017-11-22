require 'capybara/dsl'
# require 'cucumber'

class CheckoutItem
  include Capybara::DSL

  URL ||= 'http://localhost:3000/'
  CHOOSE_ITEM ||= '/html/body/div[2]/div/div/form/div[1]/select'
  BORROWER ||= '/html/body/div[2]/div/div/form/div[1]/select'
  DUE_DATE ||= '/html/body/div[2]/div/div/form/div[3]/input'
  CHECKOUT ||= '/html/body/div[2]/div/div/form/div[4]/input'
  MAC_2 ||= '/html/body/div[2]/div/div/form/div[1]/select/option[2]'
  SELECT_BORROWER ||= '/html/body/div[2]/div/div/form/div[1]/select/option[1]'

  def visit_page
    visit(URL)
  end

  def find_choose_item
    find(:xpath, CHOOSE_ITEM)
  end

  def find_borrower
    find(:xpath, BORROWER)
  end

  def find_due_date
    find(:xpath, DUE_DATE)
  end

  def find_checkout_button
    find(:xpath, CHECKOUT)
  end

  def click_checkout_button
    button = find_checkout_button
    button.click
  end

  def choose_item_to_borrow
    find(:xpath, MAC_2).click
  end

  def choose_borrower
    find(:xpath, SELECT_BORROWER).click
  end
end
