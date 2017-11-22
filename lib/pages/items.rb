
require 'capybara/dsl'

class Item
  include Capybara::DSL

  URL ||= 'http://localhost:3000/'
  ADD_NEW_ITEM_BUTTON ||= '//*[@id=“items”]/div/div/a'
  DESCRIPTION_LINK ||= '//*[@id=“items"]/div/div/table/tbody/tr/td[2]/a'
  ITEM_EDIT_XPATH ||= '//*[@id="items"]/div/div/table/tbody/tr[1]/td[2]/a'
  DELETE_ITEM_LINK ||= '//*[@id="items"]/div/div/table/tbody/tr/td[5]/a’'
  ITEM_ID_HEADER ||= '//*[@id="items"]/div/div/table/thead/tr/th[1]'
  ITEM_STATUS_SELECTOR ||= '#items > div > div > table > tbody > tr:nth-child(1) > td.checked-out > a'
  RETURN_DATE_XPATH ||= '/html/body/div[2]/div/div/table/tbody/tr[1]/td[5]'
  DUE_DATE_XPATH ||= '/html/body/div[2]/div/div/table/tbody/tr[1]/td[6]'
  STATUS_XPATH ||= '/html/body/div[2]/div/div/table/tbody/tr[1]/td[7]'

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

  def find_item_check_in
    find(:css, ITEM_STATUS_SELECTOR)
  end

  def click_item_check_in
    find_item_check_in.click
  end

  def click_edit_item
    find_item_xpath.click
  end

  def confirm_alert
    page.driver.browser.switch_to.alert.accept
  end

  def find_return_date
    find(:xpath, RETURN_DATE_XPATH).text
  end

  def find_due_date
    find(:xpath, DUE_DATE_XPATH).text
  end

  def find_status
    find(:xpath, STATUS_XPATH).text
  end

end
