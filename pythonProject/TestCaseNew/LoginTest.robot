*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/LoginKeyword.robot

*** Variables ***
${Browser}  headlesschrome
${SiteUrl}  http://demo.guru99.com/test/newtours/index.php
${usr}  tutorial
${pwd}  tutorial

*** Test Cases ***
LoginTest
    Open my browser  ${SiteUrl}  ${Browser}
    Enter Username  ${usr}
    Enter Password  ${pwd}
    Click login btn
#    Sleep  3 seconds
    Verify successful login
    Close Browser
