
class SCMPAGE_XAPTH

  def time_stamp_btn
    time_stamp_btn:'//*[@data-bind="click: getCurrentTime"]'
  end
  
  def get_signature_btn
    get_signature_btn:'//*[@data-bind="click: getSignature"]'
  end

  def send_data_btn
    send_data_btn:'//*[@data-bind="click: sendData"]'
  end

  def url_textbox
    url_textbox:'//*[@name="url"]'
  end

  def token_textbox
    token_textbox:'//*[@name="token"]'
  end

  def salt_textbox
    salt_textbox:'//*[@name="saltkey"]'
  end
  
  def def_textbox
    js_textbox:'//*[@data-bind="visible: mode() == NineYi.Scm.Api.ViewModels.FormMode.Json, value: dataBox"]'
  end

  def js_textbox
    js_textbox:'//*[@data-bind="visible: mode() == NineYi.Scm.Api.ViewModels.FormMode.Json, value: dataBox"]'
  end

  def js_tab
    js_tab:'//*[@id="main"]/fieldset/div/div[7]/div/div/div/button[2]'
  end
end
