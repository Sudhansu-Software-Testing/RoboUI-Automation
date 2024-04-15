*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}     https://demo.nopcommerce.com/

*** Test Cases ***
Tc1
    open browser    ${url}    ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    # Element should be visible and enabled
    inputbox



*** Keywords ***
inputbox
    ${"Email_field"}  set variable  id:Email
    element should be enabled  ${"Email_field"}
    element should be visible  ${"Email_field"}
    input text    ${"Email_field"}  silugouda4107@gmail.com
    sleep  5
    clear element text       ${"Email_field"}
