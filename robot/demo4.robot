*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***
${MY_NAME}   janu
${ROLE}  intern
@{COLORS}   red     green    yellow

*** Test Cases ***
TC1
   Log To Console    ${MY_NAME}
   ${name}  Set Variable   janu
   Log To Console    ${name}
   
TC2
   Log To Console    ${MY_NAME}
   Log To Console    ${ROLE}
   Log To Console    ${COLORS}
   Log To Console    ${COLORS}[0]

 TC3
    @{fruits}  Create List    apple   grapes    orange
    Log To Console    ${fruits}[1]
    Append To List  ${fruits}   Pineapple
    Log To Console  ${fruits}
    Remove From List    ${fruits}    1
    Log To Console   ${fruits}
    Insert Into List     ${fruits}    2     Mango
    Log To Console   ${fruits}


