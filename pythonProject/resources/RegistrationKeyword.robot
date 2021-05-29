*** Settings ***

Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]  ${url}     ${browser}
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
Click Registration Link
    Click Link  ${link_Reg}
Enter Firstname
    [Arguments]  ${firstName}
    Input Text  ${txt_firstName}    ${firstName}
Enter Lastname
    [Arguments]  ${lastName}
    Input Password  ${txt_lastName}     ${lastName}

Enter phone
    [Arguments]  ${phone}
    Input Text  ${txt_phone}    ${phone}

Enter Email
    [Arguments]  ${email}
    Input Text  ${txt_email}    ${email}

Enter Address
    [Arguments]  ${addr}
    Input Text  ${txt_addr1}    ${addr}

Enter City
    [Arguments]  ${city}
    Input Text  ${txt_city}     ${city}

Enter state
    [Arguments]  ${state}
    Input Text  ${txt_state}   ${state}

Enter Postcode
    [Arguments]  ${postcode}
    Input Text  ${txt_postalcode}   ${postcode}

Select country
    [Arguments]  ${country}
    Select From List By Label  ${drp_country}   ${country}

Enter username
    [Arguments]     ${username}
    Input Text  ${txt_username}    ${username}

Enter password
    [Arguments]     ${password}
    Input Password  ${txt_password}    ${password}

Enter conf password
    [Arguments]     ${confpassword}
    Input Password  ${txt_confpassword}    ${confpassword}

Click login btn
    Click Button  ${btn_submit}

Verify registration
    Page Should Contain  Thank you for registering.

Close Browser
    Close All Browsers

