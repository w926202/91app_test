#require '...\page\scm_xpath'
API_JSON.new

class SCMPAGE
    XPATHS = {
        #Button
        time_stamp_btn:'//*[@data-bind="click: getCurrentTime"]',
        get_signature_btn:'//*[@data-bind="click: getSignature"]',
        send_data_btn:'//*[@data-bind="click: sendData"]',
        
        #TextBox
        url_textbox: '//*[@name="url"]',
        token_textbox:'//*[@name="token"]',
        api_textbox: '//*[@name="apikey"]',
        salt_textbox:'//*[@name="saltkey"]',
        js_textbox:'//*[@data-bind="visible: mode() == NineYi.Scm.Api.ViewModels.FormMode.Json, value: dataBox"]',

        #Tab
        js_tab:'//*[@id="main"]/fieldset/div/div[7]/div/div/div/button[2]' 
    
      }.freeze

      def input_url
        enter_text(:xpath, '/v2/location/CreateTransactionMapping', XPATHS[:url_textbox])
      end

      def input_token
        enter_text(:xpath, '55688990', XPATHS[:token_textbox])
      end

      def input_api
        enter_text(:xpath, '8c443eb2-68d9-465c-9825-a8c226d53661',XPATHS[:api_textbox])
      end

      def input_salt
        enter_text(:xpath,'154b7d8b',XPATHS[:salt_textbox])
      end

      def js_btn
        is_element_displayed(:xpath, XPATHS[:js_tab])
        wait(1)
        click(:xpath, XPATHS[:js_tab])
      end

      def js_textbox
        enter_text(:xpath, '{
          "ShopId": "11203",   
          "LocationId": "13836",            
          "LocationEmployeeId": "603338",      
          "TransactionNumber": "test31",
          "TransactionDateTime": "2018-07-23",
          "CashierNumber": "1",
          "MemberOuterId": "TWTBT0000863"
}',XPATHS[:js_textbox])
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