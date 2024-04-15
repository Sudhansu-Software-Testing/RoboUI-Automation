*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handle the alerts
    open browser  ${url}    ${browser}
    maximize browser window
    click element  xpath://*[@id="HTML9"]/div[1]/button[2]
    sleep  3
#    handle alert  ACCEPT
#    handle alert  DISMISS
     alert should be present  Press a button!
     handle alert  ACCEPT
    close browser
