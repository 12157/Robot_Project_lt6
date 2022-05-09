* Settings *
Library    AppiumLibrary
Test Teardown      Close Application
* Test Cases *
Tc1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=sruthibommisetty_Tl2z97
    ...     browserstack.key=jVHdsuvEsFMH7RT13c5q
    ...     app=bs://e657639afea5980f22127fa22c1920db6c931c35
    ...     device=Samsung Galaxy S10e
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    Set Appium Timeout    50s
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']  50s
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']  50s
    Click Element    xpath=//*[@text='Sign in']
    Wait Until Page Contains Element    xpath=//*[@text='Sign in']  50s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Enter an e-mail address or username']  50s
    Input Text    xpath=//*[@text='Enter an e-mail address or username']  hello@gmail.com

    Wait Until Page Contains Element    xpath=//*[@text='Password']  50s
    Input Password    xpath=//*[@text='Password']     123456
    Wait Until Page Contains Element    xpath=//*[@text='Sign in']  50s
    Click Element    xpath=//*[@text='Sign in']
     Click Element    xpath=(//*[@text='Sign in'])[2]
     Element Text Should Be    xpath=//*[contains(@text,'issue')]    There was an issue signing in
