require 'capybara/dsl'

class CreateItem
  include Capybara::DSL

  URL = 'http://localhost:3000/'
  DESCRIPTION ||= '//*[@id=“item_description"]'
  SERIAL_FIELD ||= '*[@id=“item_serial"]'
  ACADEMY_DROPDOWN ||= '//*[@id=“item_academy_id"]'
  SAVE_ITEM_BUTTON ||= '//*[@id=“new_item"]/div[4]/input'
  ERROR_MESSAGE_DIV_CSS ||= '#error_explanation > h2'
  ITEM_DESCRIPTION_BOX_ID ||= 'item_description'
  SERIAL_FIELD_ID ||= 'item_serial'
  SAVE_BUTTON_CSS ||= '#new_item > div:nth-child(6) > input'

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
    find(:id, SERIAL_FIELD_ID)
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
    find(:css, SAVE_BUTTON_CSS)
  end

  def click_save_item_button
    find_save_item_button.click
  end

  def find_error_div
    find(:css, ERROR_MESSAGE_DIV_CSS)
  end

  def find_error_div_text
    find_error_div.text
  end

  def find_item_description_box_id
    find(:id, ITEM_DESCRIPTION_BOX_ID)
  end
end
