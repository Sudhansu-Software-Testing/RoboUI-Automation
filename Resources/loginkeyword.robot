*** Settings ***
Library  SeleniumLibrary
Variables   /Users/sudhansu/Desktop/Folder/MyProjects/Robot framework/UIAutomation/pageobjects/locator.py

*** Keywords ***
open Application
    [Arguments]  ${siteurl}     ${browser}
    open browser    ${siteurl}  ${browser}
    maximize browser window

Enter UserName
    [Arguments]  ${username}
    input text  ${btn_username}     ${username}

Enter password
    [Arguments]  ${password}
    input text  ${btn_password}     ${password}

Login
    click button  ${btn_login}

Validate the successfully
    page should contain  Login Successfully

close browser
    close all browsers