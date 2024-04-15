*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Register.html
*** Test Cases ***
TC1
    open browser  ${url}    ${browser}
    maximize browser window
    dropdown

*** Keywords ***
dropdown
    ${'skills'}  set variable  id:Skills
    select from list by index  ${'skills'}  1
    select from list by value  ${'skills'}   Analytics
