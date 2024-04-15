*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Register.html
${path}     /Users/sudhansu/Desktop/Folder/My Projects/Robot framework/UIAutomation/screenshot
*** Test Cases ***
TC1:
    open browser  ${url}    ${browser}
    maximize browser window

    capture element screenshot  xpath://*[@id="header"]/div/div/div/div[2]/h1   ${path}/image.png
    capture page screenshot  ${path}/page.png
*** Keywords ***
