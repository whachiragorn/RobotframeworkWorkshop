*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/RegistrationKeyword.robot

*** Variables ***
${Browser}  headlesschrome
${URL}  http://demo.guru99.com/test/newtours/index.php
${fname}    boss
${lname}    wha
${phone}    1234
${email}    boss.wha@mail.com
${addr}     123/123
${city}     Phetchabun
${state}    Naimueng
${postcode}     1212312121
${country}      THAILAND
${username}     boss
${password}     1234
${confpassword}     1234

*** Test Cases ***
RegistrationTest
    Open my browser     ${URL}  ${Browser}
    Click Registration Link
    Enter Firstname     ${fname}
    Enter Lastname      ${lname}
    Enter phone     ${phone}
    Enter Email     ${email}
    Enter Address   ${addr}
    Enter City      ${city}
    Enter State     ${state}
    Enter Postcode      ${postcode}
    Select Country      ${country}
    Enter username      ${username}
    Enter Password      ${password}
    Enter Conf Password     ${confpassword}
    Click Login Btn
    Verify Registration
#    Sleep  3 seconds
    Close Browser
