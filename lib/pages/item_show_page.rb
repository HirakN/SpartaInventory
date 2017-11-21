
require 'capybara/dsl'

class ItemShowPage
  include Capybara::DSL

  URL = 'http://localhost:3000/'
  BACK_BUTTON ||= '/html/body/div[2]/div/div/a'
  SUCCESS_NOTIFICATION ||= '/html/body/div[1]/div/div/p[1]'
  DUE_DATE ||= '/html/body/div[2]/div/div/table/tbody/tr/td[6]'

  def visit_page
    visit(URL)
  end

  def find_success_notification
    find(:xpath, SUCCESS_NOTIFICATION)
  end

  def find_back_button
    find(:xpath, BACK_BUTTON)
  end

  def find_due_date
    find(:xpath, DUE_DATE)
  end

end
