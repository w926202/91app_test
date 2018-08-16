require 'selenium-cucumber'
get_traction = GetTraction.new


Given('填入查詢訂單紀錄Key值') do
  navigate_to('')
  get_traction.clear_url
  get_traction.input_url
  get_traction.input_token
  get_traction.input_api
  get_traction.input_salt
  sleep 2
end

When('點選查詢訂單過程中的所有按鈕') do
  get_traction.js_btn
  get_traction.js_textbox
  get_traction.time_stamp
  get_traction.get_signature
  get_traction.send_data
  sleep 2
end

Then('回傳查詢訂單的API結果') do
  get_traction.scroll_end
  sleep 10
  get_traction.scroll_end
end
