require 'selenium-cucumber'
#google_page = GOOGLEPAGE.new
create_Traction = CreateTraction.new


Given('填入產生訂單Key值') do
  navigate_to('http://qa.api.91dev.tw/scm/v1/sample')
  create_Traction.clear_url
  create_Traction.input_url
  create_Traction.input_token
  create_Traction.input_api
  create_Traction.input_salt
  
end

When('點選產生訂單過程中的所有按鈕') do
  create_Traction.js_btn
  create_Traction.js_textbox
  create_Traction.time_stamp
  create_Traction.get_signature
  create_Traction.send_data
  
end

Then('回傳產生訂單的API結果') do
  create_Traction.scroll_end
  sleep 10
  create_Traction.scroll_end
end
