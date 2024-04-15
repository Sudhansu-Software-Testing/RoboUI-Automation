*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Login to page
    open browser  ${url}    ${browser}
    maximize browser window
    wait until element is visible  xpath://h5[@class="oxd-text oxd-text--h5 orangehrm-login-title"]
    log to console  'The browser has opened successfully'

close browser
    close all browsers

go to page
    go to  ${url}
    wait until element is visible  xpath://h5[@class="oxd-text oxd-text--h5 orangehrm-login-title"]

enter username
    [Arguments]  ${username}
    input text  xpath://input[@name="username"]     ${username}

enter password
    [Arguments]  ${password}
    input text  xpath://input[@name="password"]     ${password}

click on login
    click element  xpath://button[@type="submit"]

click on logout
    click element  xpath://span[@class='oxd-userdropdown-tab']
    click element  xpath:(//a[@class='oxd-userdropdown-link'])[4]

error message should be present
    wait until element is visible  xpath://p[@class="oxd-text oxd-text--p oxd-alert-content-text"]

Dashboard message should be present
    wait until element is visible  xpath://h6[@class="oxd-text oxd-text--h6 oxd-topbar-header-breadcrumb-module"]
