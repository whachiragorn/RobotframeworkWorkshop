*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/login_resource.robot
Library  DataDriver     ../TestData/LoginData.csv
Suite Setup  Open my browser
Suite Teardown  Close Browser
Test Template  InvalidLogin

*** Test Cases ***
LoginTestWithCSV using ${username} and ${password}

*** Keywords ***
InvalidLogin
    [Arguments]  ${username}    ${password}
    Input Username  ${username}
    Input Pwd   ${password}
    Click Login Btn
    Error Message Should Be Visible
