require 'selenium-webdriver' 
 require 'webdrivers' 
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com' 
driver.manage.window.resize_to(500, 800)
sleep 3
driver.quit 