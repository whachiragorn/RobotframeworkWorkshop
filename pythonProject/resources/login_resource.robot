*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}     https://admin-demo.nopcommerce.com/
${BROWSER}      chrome

*** Keywords ***
Open my browser
    Open Browser  ${LOGIN URL}  ${BROWSER}
    Maximize Browser Window
Close Browser
    Close All Browsers
Go To Login
    Go To  ${LOGIN URL}
Input Username
    [Arguments]  ${username}
    Input Text  xpath://input[@id='Email']  ${username}
Input Pwd
    [Arguments]  ${password}
    Input Password  xpath://input[@id='Password']   ${password}
Click login btn
    Click Button  xpath://button[contains(text(),'Log in')]
Click logout btn
    Click Element  xpath://a[contains(text(),'Logout')]
Error message should be visible
    Page Should Contain    Login was unsuccessful
Dashboard should contain
    Page Should Contain  Dashboard



