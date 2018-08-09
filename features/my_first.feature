Feature: Demo APIs
  @Crt_traction
  Scenario: 使用SCM test tool 產生訂單
    Given 填入產生訂單Key值
    When 點選產生訂單過程中的所有按鈕
    Then 回傳產生訂單的API結果

  @Del_traction
  Scenario:使用SCM test tool 刪除訂單
  Given 填入刪除訂單key值
  When 點選刪除訂單過程中的所有按鈕
  Then 回傳刪除訂單的API結果

  @Get_traction
  Scenario:使用SCM test tool 查詢訂單紀錄
  Given 填入查詢訂單紀錄Key值
  When 點選查詢訂單過程中的所有按鈕
  Then 回傳查詢訂單的API結果

  @Get_setting
  Scenario:使用SCM test tool 查詢輸入交易單號開關狀態
  Given 填入查詢輸入交易單號Key值
  When 點選查詢輸入交易單號開關狀態過程中的所有按鈕
  Then 回傳輸入交易單號開關狀態的API結果
