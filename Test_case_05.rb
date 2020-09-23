require 'selenium-webdriver' 
 require 'webdrivers' 
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com' 

driver.manage.window.maximize

# html = driver.attribute("html")
# element.attribute("innerHTML")
puts "Page source is #{driver.page_source}"
sleep 3
driver.quit  