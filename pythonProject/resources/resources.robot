*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Launchbrowser
    [Arguments]  ${appurl}  ${appbrowser}
    Open Browser  ${appurl}    ${appbrowser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}

fill_username
    Input Text  id:field1   babossza

fill_password
    Input Text  id:field2   helloadmin