*** Settings ***
Test Setup  log to console  Login to application.
Test Teardown  log to console   Logout of the application
Suite Setup  log to console     open the browser
Suite Teardown  log to console  close all the browser

*** Test Cases ***
TC1 prepaid
    log to console  prepaid the recharge.
TC2 postpaid
    log to console  postpaid recharge.
TC3 Search item
    log to console  Search the recharge plan

