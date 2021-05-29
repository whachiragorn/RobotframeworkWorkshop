*** Settings ***

Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]  ${url}     ${browser}
    Open Browser  ${url}    ${browser}
    Maximize Browser Window

Enter username
    [Arguments]     ${username}
    Input Text  ${txt_loginUserName}    ${username}

Enter password
    [Arguments]     ${password}
    Input Password  ${txt_loginPassword}    ${password}
Click login btn
    Click Button  ${btn_signIn}
Verify successful login
    Page Should Contain  Login Successfully
Close Browser
    Close All Browsers