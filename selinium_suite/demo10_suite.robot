* Settings *
Library     SeleniumLibrary
Library    OperatingSystem
* Test Cases *
Tc1
    Append To Environment Variable   Path    C:\\Users\\User\\PycharmProjects\\pythonProject4\\selinium_suite\\drive
    Open Browser     browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://smallpdf.com/pdf-to-word
    Choose File    xpath=//input[@type='file']   C:${/}Users${/}User${/}Downloads${/}linux.pdf
    ${title}     Get Title
    Log To Console    ${title}
    ${loc} Get Location
    Log To Console    ${location}

