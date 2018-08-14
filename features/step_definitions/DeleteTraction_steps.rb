require 'selenium-cucumber'
delete_traction = DeleteTraction.new

Given('填入刪除訂單key值') do
  navigate_to('http://qa.api.91dev.tw/scm/v1/sample')
  delete_traction.clear_url
  delete_traction.input_url
  delete_traction.input_token
  delete_traction.input_api
  delete_traction.input_salt
  
end

When('點選刪除訂單過程中的所有按鈕') do
  delete_traction.js_btn
  delete_traction.js_textbox
  delete_traction.time_stamp
  delete_traction.get_signature
  delete_traction.send_data
  
end

Then('回傳刪除訂單的API結果') do
  delete_traction.scroll_end
  sleep 10
  delete_traction.scroll_end
end