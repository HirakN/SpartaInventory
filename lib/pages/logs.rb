require 'capybara/dsl'

class Logs
  include Capybara::DSL

  CHECKOUT_ITEM_BUTTON ||= "html/body/div[2]/div/div/a"
  CHECK_IN_LINK ||= "/html/body/div[2]/div/div/table/tbody/tr[1]/td[7]/a"
  DELETE_LINK ||= "html/body/div[2]/div/div/table/tbody/tr/td[8]/a"
  CHECKOUT_ITEM_HEADING ||= "/html/body/div[2]/div/div/h1"
  MAC_LOG ||= "/html/body/div[2]/div/div/table/tbody"
  RETURN_DATE ||= "body > div:nth-child(3) > div > div > table > tbody > tr > td:nth-child(5)"
  RETURN_STATUS ||= "body > div:nth-child(3) > div > div > table > tbody > tr > td:nth-child(7)"

  def visit_logs_page
    visit('/logs')
  end

  def find_checkout_item_button
    find(:xpath, CHECKOUT_ITEM_BUTTON)
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
    find(:xpath, DELETE_LINK)
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
    find(:xpath, RETURN_STATUS)
  end

  def find_returned_status
    find(:xpath, RETURN_STATUS).text
  end

end
