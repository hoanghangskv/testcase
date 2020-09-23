require 'selenium-webdriver' 
 require 'webdrivers' 
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com' 

driver.manage.window.maximize

# Tìm kiếm với từ 'iTMS Coaching' 
element = driver.find_element(name: 'q')
element.send_keys "iTMS Coaching"
element.submit
# Nhận tiêu đề trang và in nó 
puts driver.title 

sleep 3
driver.quit  