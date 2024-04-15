*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://rahulshettyacademy.com/angularpractice/
*** Test Cases ***
TC1 Login
    [Tags]  Smoke
    log to console  Login test performed
    log to console  Login test is over.
TC2 Dashboard
    [Tags]  Sanity
    log to console  Dashboard test performed
    log to console  Dashboard test completed.
TC3 Menu
    [Tags]  Sanity
    log to console  Menu test performed.
    log to console  Menu test is over.
TC4 Logout
    [Tags]  Smoke
    log to console  Logout test is performed
    log to console  Logout test is over.
TC5 CreateUser
    [Tags]  Regression
    log to console  CreateUser test is performed.
    log to console  CreateUser test is over.

*** Keywords ***
