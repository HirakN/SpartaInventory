require 'capybara/dsl'

class EditItem
  include Capybara::DSL

  DESCRIPTION_BOX_ID ||= 'item_description'
  ITEM_SERIAL_ID ||= 'item_serial'
  ACADEMIES_DROPDOWN_ID ||= 'item_academy_id'
  SAVE_ITEM_BUTTON_XPATH ||= '//*[@id="edit_item_1"]/div[4]/input'
  HEADING_SELECTOR ||= 'body > div:nth-child(3) > div > div > h1'

  def find_description_box
    find(:id, DESCRIPTION_BOX_ID)
  end

  def fill_in_description_box
    description = find_description_box
    description.set('This is the new information')
  end

  def find_serial_field
    find(:id, ITEM_SERIAL_ID)
  end

  def fill_in_item_serial
    serial = find_serial_field
    serial.set('TYVBSG12IR34')
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

  def find_save_button_xpath
    find(:xpath, SAVE_ITEM_BUTTON_XPATH)
  end

  def click_save_button
    find_save_button_xpath.click
  end

  def header_css
    find(:css, HEADING_SELECTOR)
  end
end
