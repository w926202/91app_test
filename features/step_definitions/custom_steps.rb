require 'selenium-cucumber'
google_page = GOOGLEPAGE.new
scm_page = SCMPAGE.new

Given('I input key number') do
  navigate_to('http://api.qa5.91dev.tw/scm/v1/sample')
  scm_page.clear_url
  scm_page.input_url
  scm_page.input_token
  scm_page.input_api
  scm_page.input_salt
  sleep 2
end

When('I click button') do
  scm_page.js_btn
  scm_page.js_textbox
  scm_page.time_stamp
  scm_page.get_signature
  scm_page.send_data
  sleep 2
end

Then('Result') do
  scm_page.scroll_end
  sleep 10
  scm_page.scroll_end
end
