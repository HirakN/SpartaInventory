require 'capybara/dsl'

class Logs
  include Capybara::DSL

  CHECKOUT_ITEM_BUTTON_SELECTOR ||= "body > div:nth-child(3) > div > div > a"
  CHECK_IN_LINK ||= "/html/body/div[2]/div/div/table/tbody/tr[1]/td[7]/a"
  DELETE_LINK_CSS ||= "body > div:nth-child(3) > div > div > table > tbody > tr:nth-child(3) > td:nth-child(8) > a"
  CHECKOUT_ITEM_HEADING ||= "/html/body/div[2]/div/div/h1"
  RETURN_DATE ||= "body > div:nth-child(3) > div > div > table > tbody > tr:nth-child(1) > td:nth-child(5)"
  RETURN_STATUS ||= "/html/body/div[2]/div/div/table/tbody/tr[1]/td[7]"
  MAC_LOG ||= "/html/body/div[2]/div/div/table/tbody"
  RETURNED_TO_CSS ||= 'body > div:nth-child(3) > div > div > table > tbody > tr:nth-child(1) > td:nth-child(4)'

  def visit_logs_page
    visit('/logs')
  end

  def find_checkout_item_button
    find(:css, CHECKOUT_ITEM_BUTTON_SELECTOR)
  end

  def click_checkout_item_button
    find_checkout_item_button.click
  end

  def find_checkout_text
    find(:xpath, CHECKOUT_ITEM_HEADING)
  end

  def find_check_in_link
    find_link(CHECK_IN_LINK)
  end

  def click_check_in_link
    find_check_in_link.click
  end

  def confirm_ok_on_alert
    page.driver.browser.switch_to.alert.accept
  end

  def find_delete_link
    find(:css, DELETE_LINK_CSS)
  end

  def click_delete_link
    find_delete_link.click
  end

  def confirm_deletion_on_alert
    page.driver.browser.switch_to.alert.accept
  end

  def find_mac_log
    find(:xpath, MAC_LOG)
  end

  def find_return_date
    find(:css, RETURN_DATE).text
  end

  def find_returned_to
    find(:css, RETURNED_TO_CSS).text
  end

  def find_returned_status
    find(:xpath, RETURN_STATUS).text
  end

end
