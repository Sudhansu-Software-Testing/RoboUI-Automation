*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}     https://demo.nopcommerce.com/

*** Test Cases ***
Login_testcase
        open browser  ${url}   ${browser}
        Login
        close browser

*** Keywords ***
Login
     click link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
     input text  id:Email   silugouda4107@gmail.com
     input text  id:Password   qwerty
     click element  xpath://button[contains(text(),'Log in')]