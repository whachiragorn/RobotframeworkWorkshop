*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html?org/openqa/selenium/package-summary.html
${browser}  chrome

*** Test Cases ***
Testing framed

    Open Browser    ${url}  ${browser}
    Select Frame  packageListFrame  #id name xpath
    Click Link  org.openqa.selenium
    Unselect Frame
    Sleep  3

    Select Frame  packageFrame
    Click Link  WebDriver
    Unselect Frame
    Sleep  3

    Select Frame  classFrame
    Click Link  Help
    Unselect Frame
    Sleep  3

    Close All Browsers

*** Keywords ***
