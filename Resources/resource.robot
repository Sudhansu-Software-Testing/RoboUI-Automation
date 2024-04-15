*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
lunchbrowser
    [Arguments]  ${appurl}  ${browser_name}
    open browser    ${appurl}   ${browser_name}
    maximize browser window
    ${page_title}=  get title
    [RETURN]  ${page_title}