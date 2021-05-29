*** Settings ***

Suite Setup  log to console     Opening Browser

Suite Teardown  log to console     Closing Browser

Test Setup  log to console      Loging to application
Test Teardown  log to console       Logout from application

*** Test Cases ***

TC1 Prepaid Recharge
    Log To Console  This is prepaid recharge testcase
TC2 Postpaid Recharge
    Log To Console  This is postpaid recharge testcase
TC3 Search
    Log To Console  This is search testcase
TC4 Advanced Search
    Log To Console  This is adv search testcase
