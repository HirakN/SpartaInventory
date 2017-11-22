require 'capybara/dsl'

class EditItem
  include Capybara::DSL

  DESCRIPTION_BOX_ID ||= '#item_description'
  ITEM_SERIAL_ID ||= '#item_serial'
  SAVE_ITEM_BUTTON_XPATH ||= '//*[@id="edit_item_1"]/div[4]/input'
  ACADEMY_DROPDOWN_ID ||= 'item_academy_id'


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
    
  end

  def find_academy_dropdown
    find(:xpath, ACADEMY_DROPDOWN_ID)
  end

  def select_richmond_from_dropdown
    dropdown = find_academy_dropdown
    select "Leeds", :from => dropdown
  end
end
