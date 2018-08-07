require 'selenium-cucumber'
get_traction = GetTraction.new


Given('I input key number 3') do
  navigate_to('http://api.qa5.91dev.tw/scm/v1/sample')
  get_traction.clear_url
  get_traction.input_url
  get_traction.input_token
  get_traction.input_api
  get_traction.input_salt
  sleep 2
end

When('I click button 3') do
  get_traction.js_btn
  get_traction.js_textbox
  get_traction.time_stamp
  get_traction.get_signature
  get_traction.send_data
  sleep 2
end

Then('Result 3') do
  get_traction.scroll_end
  sleep 10
  get_traction.scroll_end
end
