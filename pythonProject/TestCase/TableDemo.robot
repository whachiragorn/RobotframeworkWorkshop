*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Table demo test
    Open Browser  http://testautomationpractice.blogspot.com/   chrome
    ${rows}=    Get Element Count  xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${cols}=    Get Element Count  xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th
    Log To Console  ${rows}
    Log To Console  ${cols}

#    FOR     ${i}    IN RANGE    2   ${rows}+1
#        FOR     ${j}    IN RANGE    1   ${cols}+1
#            ${gettext}=  Get Text  xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[${i}]/td[${j}]
#            Log To Console  ${gettext}
#        END
#    END

    Table Column Should Contain     xpath://table[@name='BookTable']  2   Author
    Table Row Should Contain  xpath://table[@name='BookTable']   4   Learn JS
    Table Cell Should Contain  xpath://table[@name='BookTable']  5   2   Mukesh
    Table Header Should Contain  xpath://table[@name='BookTable']   BookName
    Close All Browsers

*** Keywords ***
