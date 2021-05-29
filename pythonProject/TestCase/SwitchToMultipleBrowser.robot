*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Testing tabbled windows

    Open Browser    https://www.google.com      chrome

    Maximize Browser Window

    Sleep  3

    Open Browser  https://www.bing.com      chrome

    Maximize Browser Window

    Sleep  3

    Switch Browser  2
    ${title}=   Get Title
    Log To Console  ${title}

    Switch Browser  1
    ${title2}=   Get Title
    Log To Console  ${title2}

    Sleep  3

    Close All Browsers

*** Keywords ***
