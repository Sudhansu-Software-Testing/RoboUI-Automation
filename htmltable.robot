*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/
*** Test Cases ***
Table
    open browser  ${url}    ${browser}
    maximize browser window
    scroll element into view  xpath://tbody/tr[7]/td[3]
    ${rows}=    get element count  xpath://table[@name='BookTable']/tbody/tr
    ${cols}=    get element count  xpath://table[@name='BookTable']/tbody/tr/th
    log to console  ${rows}
    log to console  ${cols}
    table header should contain  xpath://table[@name='BookTable']/tbody/tr/th[1]    BookName
    table row should contain  xpath://table[@name='BookTable']/tbody/tr[2]  2   Learn Selenium
    table column should contain  xpath://table[@name='BookTable']   2   Amit
    table cell should contain  xpath://table[@name='BookTable']     2   2   Amit
    sleep  5

*** Keywords ***
