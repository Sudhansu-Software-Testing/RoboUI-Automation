*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Windows.html

*** Test Cases ***
#Tabbed_window
#    open browser  ${url}    ${browser}
#    maximize browser window
#    click element  xpath://body/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/a[1]/button[1]
#    sleep  5
#    ${titles}=  Get Window Titles
#    log to console  ${titles}
#    select window  title=Selenium
#    sleep   3
#    click element  xpath://*[@id="navbarDropdown"]
#    close browser
TC2
    open browser  ${url}    ${browser}
    maximize browser window
    sleep  3

    open browser  https://www.bing.com/     ${browser}
    maximize browser window

    switch browser  1
    ${get_title}=   get title
    log to console  ${get_title}
    sleep  3
    close all browsers

*** Keywords ***
