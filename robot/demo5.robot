*** Settings ***
Library    Collections
*** Variables ***
&{MY_DETAILS}   name=janu   role=intern     location=vjw

*** Test Cases ***
TC1
   Log To Console    ${MY_DETAILS}{name}
   Log To Console    ${MY_DETAILS}{role}

TC2
   @{fruits}    Create List     apple   grapes    orange    mango
   FOR  ${i}  IN RANGE   0   4   1
       Log  ${fruits}[${i}]
   END

 TC3
    @{fruits}    Create List    apple   grapes  orange  mango
    FOR    ${fruit}    IN    @{fruits}
        Log    ${fruit}
     END

