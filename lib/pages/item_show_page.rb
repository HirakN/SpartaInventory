
require 'capybara/dsl'

class ItemShowPage
  include Capybara::DSL

  URL = 'http://development.local:3000/'
  BACK_BUTTON ||= '/html/body/div[2]/div/div/a'

  def visit_page
    visit(URL)
  end

  def back_button
    find(BACK_BUTTON)
  end

end
