*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
Regtest

    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    ${implicit}=    Get Selenium Implicit Wait
    Log To Console  ${implicit}
    Set Selenium Implicit Wait  10 seconds
    ${implicit}=    Get Selenium Implicit Wait
    Log To Console  ${implicit}

    Select Radio Button     Gender      M
    Input Text  FirstName1   Whachiragorn
    Input Text  LastName    Tongcote
    Input Text  Email       Whachiragorn_13oss@hotmail.com
    Input Password  Password    1234567890
    Input Password  ConfirmPassword     1234567890
#    Click Button  register-button
    Close Browser

*** Keywords ***
