*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://testautomationpractice.blogspot.com
${browser}  chrome

*** Test Cases ***
alrt

    Open Browser    ${url}  ${browser}
    Click Button    xpath://button[contains(text(),'Click Me')]

    Sleep  3
#    Handle Alert    Accept
#    Handle Alert    Dismiss
#    Handle Alert
     Alert Should Not Be Present    Press a button!
    Sleep  3

    Close All Browsers

*** Keywords ***
