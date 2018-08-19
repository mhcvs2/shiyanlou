*** Settings ***
Library  Collections

*** Test Cases ***
TestCase001
  ${dict}  create dictionary
  set to dictionary ${dict} a=1 b=2 c=3
  log ${dict}