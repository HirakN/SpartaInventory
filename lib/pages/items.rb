
require 'capybara/dsl'

class Item
  include Capybara::DSL

  URL ||= 'http://localhost:3000/'
  ADD_NEW_ITEM_BUTTON ||= '//*[@id="items"]/div/div/a'
  DESCRIPTION_LINK ||= '//*[@id=“items"]/div/div/table/tbody/tr/td[2]/a'
  ITEM_EDIT_XPATH ||= '//*[@id="items"]/div/div/table/tbody/tr[1]/td[2]/a'
  DELETE_ITEM_LINK ||= '//*[@id="items"]/div/div/table/tbody/tr/td[5]/a’'
  ITEM_ID_HEADER ||= '//*[@id="items"]/div/div/table/thead/tr/th[1]'

  def url
    visit(URL)
  end

  def find_add_new_item_button
    find(:xpath, ADD_NEW_ITEM_BUTTON)
  end

  def click_add_new_item_button
    find_add_new_item_button.click
  end

  def description_link
    find(:xpath, DESCRIPTION_LINK)
  end

  def delete_item_link
    find(:xpath, DELETE_ITEM_LINK)
  end

  def find_item_id_text
    find(:xpath, ITEM_ID_HEADER)
  end

  def find_item_xpath
    find(:xpath, ITEM_EDIT_XPATH)
  end

  def click_edit_item
    find_item_xpath.click
  end

end
