*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/
*** Test Cases ***
RightAction
    open browser   ${url}   ${browser}
    maximize browser window
    open context menu  xpath://button[contains(text(),'New Browser Window')]
    sleep  3

DoubleAction
    go to  ${url}
    maximize browser window
    double click element  xpath://button[contains(text(),'Copy Text')]
    sleep  3

Drag_and_drop_Action
    go to  ${url}
    maximize browser window
    drag and drop  xpath://p[contains(text(),'Drag me to my target')]      xpath://div[@id='droppable']
    sleep  3

