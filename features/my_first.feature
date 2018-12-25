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
  Then 回傳查詢訂單的API結果Crt

  @Get_setting
  Scenario:使用SCM test tool 查詢輸入交易單號開關狀態
  Given 填入查詢輸入交易單號Key值
  When 點選查詢輸入交易單號開關狀態過程中的所有按鈕
  Then 回傳輸入交易單號開關狀態的API結果

  @Purchase
  Scenario:使用SCM test tool 查詢滿額會員差額還傳狀態
  Given 填入key值
  When 點選滿額差額查詢過程中的所有按鈕
  Then 回傳滿額差額的API結果

  @Get_App_First_DownloadInfo
  Scenario:使用SCM test tool查詢App首下載狀態及時間
  Given 填入查詢Key值
  When 點選查詢App首下載狀態及時間過程中所有按鈕
  Then 回傳查詢App首下載狀態及時間API結果

  @Search_double_account
  Scenario:使用ERP後台查詢已經被註銷掉的雙帳號
  Given 填入手機號號碼查詢
  When 點選查詢雙帳號按鈕
  Then 顯示無法查詢到的雙帳號 

  @Relogin_family
  Scenario:不斷重新登入/登出全家官網
  Given 填入手機帳密登入
  When 點選登出後再重新登入
  Then 持續執行
