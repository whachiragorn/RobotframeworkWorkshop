*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
Regtest
    ${spead}=   Get Selenium Speed
    Log To Console  ${spead}
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Set Selenium Speed  2

    Select Radio Button     Gender      M
    Input Text  FirstName   Whachiragorn
    Input Text  LastName    Tongcote
    Input Text  Email       Whachiragorn_13oss@hotmail.com
    Input Password  Password    1234567890
    Input Password  ConfirmPassword     1234567890
#    Click Button  register-button
    Close Browser
    ${spead}=   Get Selenium Speed
    Log To Console  ${spead}

*** Keywords ***
