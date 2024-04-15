*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Register.html
*** Test Cases ***
TC1
    open browser  ${url}    ${browser}
    maximize browser window
    title should be  Register
    set selenium speed  3seconds
    Checkbox and radio button
    close browser

*** Keywords ***
Checkbox and radio button
    # Note-While giving the parameter for the radio button please provide the name with the ID
    select radio button  radiooptions    Male
    select checkbox  checkbox1
    sleep  3
    unselect checkbox  checkbox1