*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
   Append To Environment Variable    path C:\\Users\\User\\PycharmProjects\\pythonProject4\\selinium_suite\\drive
   Open Browser     browser=chrome
   Maximize Browser Window
    Set Selenium Implicit Wait    30s
   Go To    url=https://www.medibuddy.in/
   Click Element    id=wzrk-cancel
   Click Element    link=For Employer
   Switch Window    MediBuddy LaunchPad
   Input Text    id=getInTouchName    Janu
   Input Text    id=getInTouchEmail    janu@gmail.com
   Input Text    id=getInTouchMobile    12345
   Input Text    id=getInTouchDesignation    LT
   Input Text    id=getInTouchEmpCount    40
   Click Element    xpath=//button[text()='Get in Touch']
   Element Text Should Be   xpath=//div[contains(text(),'10 digits')]    Mobile Number should be 10 digits





