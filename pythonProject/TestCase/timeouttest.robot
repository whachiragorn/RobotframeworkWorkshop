*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
Regtest



    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Set Selenium Timeout  10 seconds
    Wait Until Page Contains  Register #5sec
    Select Radio Button     Gender      M
    Input Text  FirstName   Whachiragorn
    Input Text  LastName    Tongcote
    Input Text  Email       Whachiragorn_13oss@hotmail.com
    Input Password  Password    1234567890
    Input Password  ConfirmPassword     1234567890
#    Click Button  register-button
    Close Browser
    ${time}= Get Selenium Timeout
    Log To Console  ${time}

*** Keywords ***
