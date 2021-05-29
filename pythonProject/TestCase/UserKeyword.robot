*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/resources.robot
*** Variables ***
${url}  http://testautomationpractice.blogspot.com/
${browser}  chrome
*** Test Cases ***
TC1
    ${Pagetitle}=   Launchbrowser   ${url}  ${browser}
    Log To Console  ${Pagetitle}
    Log  ${Pagetitle}
    fill_username
    fill_password
    Close All Browsers


