*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome
*** Test Cases ***
TC1
    open browser    ${url}  ${browser}
    maximize browser window
    execute javascript  window.scrollTo(0,1500)
    scroll element into view  xpath://body/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]/div[4]/div[3]/div[1]/aside[1]/div[1]/div[6]/div[1]/div[1]/span[1]
    execute javascript  window.scrollTo(0,document.body.scrollHeight)

*** Keywords ***
