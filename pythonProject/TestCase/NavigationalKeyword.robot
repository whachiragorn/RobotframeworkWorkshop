*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
NAVIGATIONTEST

    Open Browser    https://www.google.com/     chrome
    ${loc}=     Get Location
    Log To Console      ${loc}

    Sleep  3

    Go To   https://www.bing.com
    ${loc}=     Get Location
    Log To Console      ${loc}

    Sleep  3

    Go Back
    ${loc}=     Get Location
    Log To Console      ${loc}

    Sleep  3

    Close All Browsers



*** Keywords ***


