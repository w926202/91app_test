require 'selenium-cucumber'
input_source = FamilyWeb.new

Given('填入手機帳密登入') do
  navigate_to('http://mart.family.com.tw/')
  input_source.hover_my_account
  input_source.my_account_login_btn
  input_source.cellphone
  input_source.pws
  input_source.login
  
end

When('點選登出後再重新登入') do
  input_source.hover_my_account
  input_source.my_account_logout_btn
end

Then('持續執行') do
  
end
