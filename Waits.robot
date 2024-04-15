*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}     chrome
${url}   https://rahulshettyacademy.com/angularpractice/
*** Test Cases ***
TC1
    Navigation
    ${'time'}=  get selenium speed
    log to console  ${'time'}
    set selenium speed  3 seconds
    Fill the form
    log to console  ${'time'}
    close browser
TC2
    Navigation
    ${'time'}=  get selenium implicit wait
    log to console  ${'time'}
    set selenium implicit wait  3 seconds
    fill the form
    log to console  ${'time'}
    close browser

*** Keywords ***
Navigation
    open browser  ${url}    ${browser}
    maximize browser window
Fill the form
    input text  xpath://body/app-root[1]/form-comp[1]/div[1]/form[1]/div[1]/input[1]     Sudhansu
    input text  xpath://body/app-root[1]/form-comp[1]/div[1]/form[1]/div[2]/input[1]    silugouda4107@gmail.com
    input text  xpath://input[@id='exampleInputPassword1']   qwerty