*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
MouseOperation
    #Right click/open context menu
    Open Browser  https://swisnl.github.io/jQuery-contextMenu/demo.html     chrome
    Maximize Browser Window
    Open Context Menu  xpath://span[contains(text(),'right click me')]
    Sleep  3

    #Double click
    Go To  http://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element  xpath://button[contains(text(),'Copy Text')]
    Sleep  3

    #Drag and Drop
    Go To  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop  id:box6  id:box106
    Sleep  3


    Close All Browsers



*** Keywords ***
