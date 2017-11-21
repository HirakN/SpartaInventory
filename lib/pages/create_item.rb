require 'capybara/dsl'

class CreateItem
  include Capybara::DSL

  URL = 'http://localhost:3000/'
  DESCRIPTION ||= '//*[@id=“item_description"]'
  SERIAL_FIELD ||= '//*[@id=“item_serial"]'
  ACADEMY_DROPDOWN ||= '//*[@id=“item_academy_id"]'
  SAVE_ITEM_BUTTON ||= '//*[@id=“new_item"]/div[4]/input'
  ERROR_MESSAGE_DIV ||= '//*[@id="error_explanation"]'

  def visit_page
    visit(URL)
  end

  def find_description_field
    find(:xpath, DESCRIPTION)
  end

  def fill_description_field
    description = find_description_field
    description.set('Boardroom projector')
  end

  def find_serial_field
    find(:xpath, SERIAL_FIELD)
  end

  def fill_serial_field
    serial = find_serial_field
    serial.set('P002')
  end

  def find_academy_dropdown
    find(:xpath, ACADEMY_DROPDOWN)
  end

  def select_richmond_from_dropdown
    dropdown = find_academy_dropdown
    select "Richmond", :from => dropdown
  end

  def find_save_item_button
    find(:xpath, SAVE_ITEM_BUTTON)
  end

  def click_save_item_button
    find_save_item_button.click
  end

  def find_error_div
    find(:xpath, ERROR_MESSAGE_DIV)
  end

end
