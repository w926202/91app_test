class DeleteTraction
  XPATHS = {
      #Button
      time_stamp_btn:'//*[@data-bind="click: getCurrentTime"]',
      get_signature_btn:'//*[@data-bind="click: getSignature"]',
      send_data_btn:'//*[@data-bind="click: sendData"]',
      
      #TextBox
      clear_textbox:'//*[@name="url"]',
      url_textbox: '//*[@name="url"]',
      token_textbox:'//*[@name="token"]',
      api_textbox: '//*[@name="apikey"]',
      salt_textbox:'//*[@name="saltkey"]',
      js_textbox:'//*[@data-bind="visible: mode() == NineYi.Scm.Api.ViewModels.FormMode.Json, value: dataBox"]',


      #Tab
      js_tab:'//*[@id="main"]/fieldset/div/div[7]/div/div/div/button[2]' 
  
    }.freeze

    def clear_url
      clear_text(:xpath , XPATHS[:clear_textbox])
    end

    def input_url
      enter_text(:xpath, '', XPATHS[:url_textbox])
    end

    def input_token
      enter_text(:xpath, '', XPATHS[:token_textbox])
    end

    def input_api
      enter_text(:xpath, '',XPATHS[:api_textbox])
    end

    def input_salt
      enter_text(:xpath,'',XPATHS[:salt_textbox])
    end

    def js_btn
      is_element_displayed(:xpath, XPATHS[:js_tab])
      wait(1)
      click(:xpath, XPATHS[:js_tab])
    end

    def js_textbox
      enter_text(:xpath, '{
        "ShopId": "64",   
        "LocationId": "14613",            
        "LocationEmployeeId": "0643",      
        "Id": ""}',XPATHS[:js_textbox])
      end

      def time_stamp
          scroll_page('top')
          is_element_displayed(:xpath, XPATHS[:time_stamp_btn])
          wait(1)
          click(:xpath, XPATHS[:time_stamp_btn])
        end

        def get_signature
          scroll_page('end')
          is_element_displayed(:xpath, XPATHS[:get_signature_btn])
          wait(1)
          click(:xpath, XPATHS[:get_signature_btn])
        end

        def send_data
          scroll_page('end')
          is_element_displayed(:xpath, XPATHS[:send_data_btn])
          wait(1)
          click(:xpath, XPATHS[:send_data_btn])
        end

      def scroll_top
          scroll_page('top')
          wait(1)
        end

      def scroll_end
          scroll_page('end')
          wait(1)
      end
  end