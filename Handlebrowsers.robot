*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}     chrome
${url}   https://rahulshettyacademy.com/angularpractice/
*** Test Cases ***
TC1
    open browser  ${url}    ${browser}
    maximize browser window

    open browser  https://www.youtube.com/  ${browser}
    maximize browser window
    close all browsers