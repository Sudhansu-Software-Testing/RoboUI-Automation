*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Register.html
*** Test Cases ***
TC1
    open browser  ${url}    ${browser}
    maximize browser window

    ${get_location}=    get location
    log to console  ${get_location}

    go to  https://www.bing.com/
    ${get_location}=    get location
    log to console  ${get_location}

    go back
    ${get_location}=    get location
    log to console  ${get_location}
*** Keywords ***
