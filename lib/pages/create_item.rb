require 'capybara/dsl'

class CreateItem
  include Capybara::DSL


  URL = 'http://localhost:3000/'
  DESCRIPTION ||= '//*[@id="item_description"]'
  SERIAL_FIELD ||= '//*[@id="item_serial"]'
  ACADEMY_DROPDOWN ||= '//*[@id="item_academy_id"]'
  SAVE_ITEM_BUTTON ||= '//*[@id="new_item"]/div[4]/input'
  ERROR_MESSAGE_DIV ||= '//*[@id="error_explanation"]'
  DESCRIPTION_ID ||= 'item_description'
  SERIAL_FIELD_ID ||= 'item_serial'
  ACADEMIES_DROPDOWN_ID ||= 'item_academy_id'
  SAVE_ITEM_BUTTON ||= 'new_item'
  ERROR_MESSAGE_DIV_ID ||= 'error_explanation'


  def visit_page
    visit(URL)
  end

  def find_description_field
    find(:id, DESCRIPTION_ID)
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

  def academies_dropdown
   find_by_id(ACADEMIES_DROPDOWN_ID)
 end

 def click_academies_dropdown
   academies_dropdown.click
 end

 def choose_location(location)
   click_academies_dropdown.select(location)
 end

  def find_save_item_button
    find(:id, SAVE_ITEM_BUTTON)
  end

  def click_save_item_button
    find_save_item_button.click
  end

  def find_error_div
    find(:xpath, ERROR_MESSAGE_DIV_ID)
  end

end
