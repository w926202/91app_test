
class GOOGLEPAGE
  XPATHS = {
    btn: '//*[@value="Google 搜尋"]',
    textbox: '//*[@name="q"]'
  }.freeze

  def input_w926202
    enter_text(:xpath, 'w926202', XPATHS[:textbox])
  end

  def clear_something
    clear_text(:xpath, XPATHS[:textbox])
  end

  def input_cutechun
    enter_text(:xpath, 'cutechun', XPATHS[:textbox])
  end

  def click_btn
    is_element_displayed(:xpath, XPATHS[:btn])
    wait(1)
    click(:xpath, XPATHS[:btn])
  end

  def scroll_end
    scroll_page('end')
    wait(1)
  end

end