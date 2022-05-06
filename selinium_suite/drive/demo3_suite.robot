*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path  C:\\Users\\User\\PycharmProjects\\pythonProject4\\selinium_suite\\drive
    Open Browser        url=https://www.goto.com/meeting/   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element       id=truste-consent-button
    Click Element    Link=Try Free
    Input Text    id=first-name  John
    Input Text    id=last-name    Wick
    Input Text    id=login__email  john@gmail.com
    Input Text   id=contact-number   8989989999
    Select From List By Label     id=CompanySize    10 - 99
    Click Element   xpath=//button[text()='Start My Trial']
#    //button[@data-button='trial-submit']

