*** Settings ***
Library  SeleniumLibrary
Resource    /Users/sudhansu/Desktop/Folder/MyProjects/Robot framework/UIAutomation/Resources/loginkeyword.robot
*** Variables ***
${browser}  headlesschrome
${siteurl}  https://demo.guru99.com/test/newtours/index.php
${user}     mercury
${pwd}      mercury
*** Test Cases ***
Login Test
    open Application    ${siteurl}  ${browser}
    Enter UserName  ${user}
    Enter password  ${pwd}
    Login
    close browser
*** Keywords ***
