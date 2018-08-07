require 'selenium-cucumber'
#google_page = GOOGLEPAGE.new
create_Traction = CreateTraction.new


Given('I input key number') do
  navigate_to('http://api.qa5.91dev.tw/scm/v1/sample')
  create_Traction.clear_url
  create_Traction.input_url
  create_Traction.input_token
  create_Traction.input_api
  create_Traction.input_salt
  sleep 2
end

When('I click button') do
  create_Traction.js_btn
  create_Traction.js_textbox
  create_Traction.time_stamp
  create_Traction.get_signature
  create_Traction.send_data
  sleep 2
end

Then('Result') do
  create_Traction.scroll_end
  sleep 10
  create_Traction.scroll_end
end
