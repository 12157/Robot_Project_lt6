*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
TC1
   Append To Environment Variable   Path     C:\\Users\\User\\PycharmProjects\\pythonProject4\\selinium_suite\\drive
   Open Browser   browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
   Click Element    xpath=//img[@alt='Go']
   ${alert_text}  Handle Alert   action=Accept
   Log To Console    ${alert_text}
   Log  ${alert_text}