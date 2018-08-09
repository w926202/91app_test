require 'selenium-cucumber'
get_setting = GetSetting.new


Given('填入查詢輸入交易單號Key值') do
  navigate_to('http://api.qa5.91dev.tw/scm/v1/sample')
  get_setting.clear_url
  get_setting.input_url
  get_setting.input_token
  get_setting.input_api
  get_setting.input_salt
  sleep 2
end

When('點選查詢輸入交易單號開關狀態過程中的所有按鈕') do
  get_setting.js_btn
  get_setting.js_textbox
  get_setting.time_stamp
  get_setting.get_signature
  get_setting.send_data
  sleep 2
end

Then('回傳輸入交易單號開關狀態的API結果') do
  get_setting.scroll_end
  sleep 10
  get_setting.scroll_end
end
