*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demo.automationtesting.in/Windows.html
${browser}  chrome

*** Test Cases ***
Testing tabbled windows

    Open Browser    ${url}  ${browser}
    Click Element   xpath://*[@id="Tabbed"]/a/button
    Switch Window   title=SeleniumHQ Browser Automation
    Click Link      xpath://a[contains(text(),'Downloads')]


    Close All Browsers

*** Keywords ***
