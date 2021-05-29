*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
Regtest

    Open Browser    https://www.google.com  ${browser}
    Open Browser    https://www.facebook.com    ${browser}

    Close All Browsers

*** Keywords ***
