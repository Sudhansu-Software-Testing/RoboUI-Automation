*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/
${browser}  chrome
*** Test Cases ***
Getalllinks
    open browser  ${url}    ${browser}
    maximize browser window
    ${linkcount}=   get element count   xpath://a
    log to console  ${linkcount}

    FOR     ${i}    IN RANGE    1   ${linkcount}+1
    ${text_value}=  get text    xpath:(//a)[${i}]
    log to console  ${text_value}
    END

*** Keywords ***
