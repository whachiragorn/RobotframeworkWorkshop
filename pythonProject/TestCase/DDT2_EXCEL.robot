*** Settings ***

Library  SeleniumLibrary
Resource  ../resources/login_resource.robot
Library  DataDriver     ../TestData/LoginData.xlsx      sheet_name=Sheet 1

Suite Setup  Open my browser
Suite Teardown  Close Browser
Test Template  InvalidLogin

*** Test Cases ***
LoginTestWithExcel using ${username} ${password}

*** Keywords ***
InvalidLogin
    [Arguments]     ${username}     ${password}
    Input Username  ${username}
    Input Pwd  ${password}
    Click Login Btn
    Error Message Should Be Visible