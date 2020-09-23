require 'selenium-webdriver' 
 require 'webdrivers' 
driver = Selenium::WebDriver.for :chrome
driver.get 'https://itmscoaching.herokuapp.com/form' 

# Tối đa hóa kích thước 
driver.manage.window.maximize

# Nhập mẫu với dữ liệu sau:
# - Tên: iTMS
text_box = driver.find_element(id: "first-name")
text_box.click
text_box.send_keys("iTMS")
# - Họ: Huấn luyện viên
text_box = driver.find_element(id: "last-name")
text_box.click
text_box.send_keys("Huấn luyện viên")
# - Tiêu đề công việc: QA
text_box = driver.find_element(id: "job-title")
text_box.click
text_box.send_keys("QA")
############# Radio Button #########################
# - Trình độ giáo dục cao nhất: Cao đẳng
radio_button = driver.find_element(xpath: "//div[4]//div[3]")
radio_button.click
############# Check Box ############################
# - Tình dục: Nam
check_box = driver.find_element(xpath: "//div[5]//div[2]")
check_box.click
############# Dropdown / Select #####################
# - Năm kinh nghiệm: 2-4
options = driver.find_element(id: "select-menu")
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:text, "2-4")

############# Insert date ###########################
# - Ngày: 27/10/2025
input = driver.find_element(id: "datepicker")
input.send_keys("27/10/2025")

# Nhấp vào Gửi
button_submit = driver.find_element(xpath: "//a[@class='btn btn-lg btn-primary']")
button_submit.click

sleep 3
driver.quit  