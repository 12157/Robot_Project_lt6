*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=sruthibommisetty_Tl2z97
    ...     browserstack.key=jVHdsuvEsFMH7RT13c5q
    ...     app=bs://c227b7fdf2e2b95c48381e195fb00179d6bffb2c

    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Close Application