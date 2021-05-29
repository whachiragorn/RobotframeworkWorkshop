*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
ScrollingTest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html     chrome
    Maximize Browser Window
#    Execute Javascript      window.scrollTo(0,2500)
#    Scroll Element Into View  xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[82]/td[1]/img
    Execute Javascript      window.scrollTo(0,document.body.scrollHeight)   #end of page
    Sleep  3
    Execute Javascript      window.scrollTo(0,-document.body.scrollHeight)  #starting point


*** Keywords ***

