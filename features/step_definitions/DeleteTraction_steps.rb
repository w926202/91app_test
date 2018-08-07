require 'selenium-cucumber'
delete_traction = DeleteTraction.new

Given('I input key number2') do
  navigate_to('http://api.qa5.91dev.tw/scm/v1/sample')
  delete_traction.clear_url
  delete_traction.input_url
  delete_traction.input_token
  delete_traction.input_api
  delete_traction.input_salt
  sleep 2
end

When('I click button 2') do
  delete_traction.js_btn
  delete_traction.js_textbox
  delete_traction.time_stamp
  delete_traction.get_signature
  delete_traction.send_data
  sleep 2
end

Then('Result 2') do
  delete_traction.scroll_end
  sleep 10
  delete_traction.scroll_end
end