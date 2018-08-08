Feature: Demo APIs
  @Crt_traction
  Scenario: I want to use SCM test tool get the create traction result
    Given I input key number
    When I click button
    Then Result

  @Del_traction
  Scenario:I want to use SCM test tool get the delete traction result
  Given I input key number 2
  When I click button 2
  Then Result 2

  @Get_traction
  Scenario:I want to use SCM test tool get the traction result
  Given I input key number 3
  When I click button 3
  Then Result 3

  @Get_setting
  Scenario:I want to use SCM test tool get the status result
  Given I input key number 4
  When I click button 4
  Then Result 4
