*** Settings ***
Documentation  A hello world test suit for Shiyanlou

Library  String

*** Variables ***
${ACTION} hi
@{MESSAGES} word shiyanlou

*** Keywords ***
Print Welcome Message
  [Arguments]  ${act} ${message}
  Log To Console  ${act} ${message}!!
  [Return]  Success

*** Test Cases ***
Should See Welcome Message and Result
  :FOR ${message} IN @{MESSAGES}
  \ ${result} = Print Welcome Message  ${ACTION} ${message}
  \ Log To Console  Result: ${result}