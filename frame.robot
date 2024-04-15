*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}     chrome
${url}      https://www.hyrtutorials.com/p/frames-practice.html
*** Test Cases ***
Handle_Frames
    open browser  ${url}    ${browser}
    maximize browser window
    click element   id:frm1

    sleep  3
    select frame  frm1
    click element  xpath://*[@id="frm1"]
    unselect frame

#    sleep  3
#    select frame  frm2
#    click element  id:selectnav2
#    unselect frame
#
#    sleep  3
#    select frame  frm3
#    click element  id:selectnav2
#    unselect frame

*** Keywords ***
