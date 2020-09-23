require 'selenium-webdriver' 
 require 'webdrivers' 
driver = Selenium::WebDriver.for :chrome
driver.get 'https://itmscoaching.herokuapp.com/form' 

driver.manage.window.maximize


text_box = driver.find_element(id: "first-name")
text_box.click
text_box.send_keys("iTMS")

text_box = driver.find_element(id: "last-name")
text_box.click
text_box.send_keys("Huấn luyện viên")

text_box = driver.find_element(id: "job-title")
text_box.click
text_box.send_keys("QA")

radio_button = driver.find_element(xpath: "//div[4]//div[3]")
radio_button.click

check_box = driver.find_element(xpath: "//div[5]//div[2]")
check_box.click

options = driver.find_element(id: "select-menu")
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:text, "2-4")

input = driver.find_element(id: "datepicker")
input.send_keys("27/10/2025")


button_submit = driver.find_element(xpath: "//a[@class='btn btn-lg btn-primary']")
button_submit.click

sleep 3
driver.quit  
