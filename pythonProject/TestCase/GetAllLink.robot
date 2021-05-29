*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***


GetALLLinksTest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html     chrome
    Maximize Browser Window
    ${GetAllLinks}=     Get Element Count  xpath://a
    Log To Console  ${GetAllLinks}

    ${LinkItems}    Create List
    FOR     ${i}   IN RANGE    1    ${GetAllLinks}+1
        ${linkText}=    Get Text  xpath:(//a)[${i}]
        Log To Console  ${linkText}
    END
    Close All Browsers

