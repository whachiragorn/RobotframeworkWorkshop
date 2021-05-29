*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  http://practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Test Radio Buttons and Check Boxs
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed  2seconds
    #Radio Button
    Select Radio Button  sex    Female
    Select Radio Button  exp    5

    #Checkbox
    Select Checkbox  BlackTea
    Select Checkbox  RedTea

    Unselect Checkbox  BlackTea
    Unselect Checkbox  RedTea

    Close All Browsers


*** Keywords ***

