* Settings *
Library    AppiumLibrary
Test Teardown      Close Application
* Test Cases *
Tc1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=sruthibommisetty_Tl2z97
    ...     browserstack.key=jVHdsuvEsFMH7RT13c5q
    ...     app=
    ...     device=Samsung Galaxy S10e
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test



    Set Appium Timeout    50s
    Click Element    xpath=//*[@text='Dismiss']
    Click Element    xpath=//*[@content-desc='Settings']
    Click Element    xpath=//*[@text='Sign in']
    Click Element    xpath=//*[@text='Sign up with email']
    Input Text       xpath=//*[@text='First name']    Janu
    Input Text       xpath=//*[@text='Last name']    Setty
