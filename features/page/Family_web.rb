class FamilyWeb
  XPATHS = {

    #全家登入頁元件
      #Button
      login_btn:'//*[@id="btn_login"]',
      #TextBox
      cellphone_textbox:'//*[@id="PageContent_PageContent_tbMobile"]',
      pws_textbox: '//*[@id="PageContent_PageContent_tbPassword"]',
      
      
    #全家首頁元件
      #Tab
      js_tab:'//*[@id="main"]/fieldset/div/div[7]/div/div/div/button[2]',
      my_account_tab:'//*[@id="root"]/div/div[1]/div/div[1]/div/div/nav/div/ul/li[2]',
      my_account_login_tab:'//*[text()="會員登入/註冊"]',
      my_account_logout_tab:'//*[text()="會員登出"]'
    }.freeze

  #全家首頁動登入作定義
    def hover_my_account
      hover_over_element(:xpath, XPATHS[:my_account_tab])
    end
  
    def my_account_login_btn
     is_element_displayed(:xpath, XPATHS[:my_account_login_tab])
     click(:xpath, XPATHS[:my_account_login_tab])
    end
    
  #全家第三方登入頁動作定義
    def cellphone
      enter_text(:xpath, '', XPATHS[:cellphone_textbox])
    end

    def pws
      enter_text(:xpath, '', XPATHS[:pws_textbox])
    end

    def login
      is_element_displayed(:xpath, XPATHS[:login_btn])
      wait(1)
      click(:xpath, XPATHS[:login_btn])
    end

    #全家手頁登出動作定義
    def my_account_logout_btn
      is_element_displayed(:xpath, XPATHS[:my_account_logout_tab])
      click(:xpath, XPATHS[:my_account_logout_tab])
    
    end 
  end