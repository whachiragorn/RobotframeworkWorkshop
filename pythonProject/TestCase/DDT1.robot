*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/login_resource.robot
Suite Setup  Open My Browser
Suite Teardown  Close Browser
Test Template  Invalid login

*** Variables ***


*** Test Cases ***
Right user empty pwd    admin@yourstore.com     ${EMPTY}
Right user wrong pwd    admin@yourstore.com     xyz
Wrong user right pwd    adn@yourstore.com       admin
Wrong user wrong pwd    adn@yourstore.com       adminasdasd
Wrong user empth pwd    adn@yourstore.com       ${EMPTY}

*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input Username  ${username}
    Input Pwd  ${password}
    Click Login Btn
    Error Message Should Be Visible
