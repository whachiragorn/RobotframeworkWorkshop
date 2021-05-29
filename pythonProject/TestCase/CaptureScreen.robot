*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
LoginTC
    Open Browser  https://opensource-demo.orangehrmlive.com/    chrome
    Input Text  txtUsername    Admin
    Input Password  txtPassword   admin123
    Capture Element Screenshot  xpath://*[@id="divLogo"]/img    /Users/wisdomvast/PycharmProjects/pythonProject/logo.png
    Capture Page Screenshot  /Users/wisdomvast/PycharmProjects/pythonProject/LoginTC.png
#    Click Button  btnLogin
    Close All Browsers
