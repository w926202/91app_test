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
    end