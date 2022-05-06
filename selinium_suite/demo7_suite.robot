*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
TC1
   Append To Environment Variable   Path     C:\\Users\\User\\PycharmProjects\\pythonProject4\\selinium_suite\\drive
   Open Browser   browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://netbanking.hdfcbank.com/netbanking/
   Select Frame    xpath=//frame[@name='login_page']
   Input Text    name=fldLoginUserId    test123
   Click Element    link=CONTINUE
   Unselect Frame


