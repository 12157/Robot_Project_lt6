*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable   Path    C:\\Users\\User\\PycharmProjects\\pythonProject4\\selinium_suite\\drive\\
    Open Browser    url=https://www.facebook.com/    browser=chrome
    Input Text    id=email   janu@gmail.com
    Input Password    id=pass    123456
    Click Element   name=login
