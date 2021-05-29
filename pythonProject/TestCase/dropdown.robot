*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${url}  http://practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Hnd drpdown list
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    #Dropdown
    Select From List By Label  continents   USA
    Select From List By Index  continents   2
#    Select From List By Value  continents   Antartica
    #List
    Select From List By Label  selenium_commands    Wait Commands
    Select From List By Label  selenium_commands    Switch Commands
    Unselect All From List  selenium_commands   Switch Commands


    Close Browser

*** Keywords ***

