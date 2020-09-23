require 'selenium-webdriver' 
 require 'webdrivers' 
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com' 
# target_size = Selenium::WebDriver::Dimension.new(1280, 1050)
# @driver.manage.window.size = target_size
driver.manage.window.resize_to(500, 800)
sleep 3
puts driver.current_url
driver.quit 