*** Settings ***
Library  SeleniumLibrary
Resource    /Users/sudhansu/Desktop/Folder/MyProjects/Robot framework/UIAutomation/Resources/login.robot
Suite Setup  Login to page
Suite Teardown  close browser
Test Template   invalid login
*** Test Cases ***      username    password
Right user and wrong password   Admin   admin
wrong user and right password   admi   admin123
wrong user and wrong password   admin   admin
right user and right password   Admin   admin123

*** Keywords ***
invalid login
    [Arguments]  ${username}    ${password}
    enter username  ${username}
    enter password  ${password}
    click on login
    log to console  'Login action performed.'
    error message should be present
