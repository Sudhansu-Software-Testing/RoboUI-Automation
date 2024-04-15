*** Settings ***
Library  SeleniumLibrary
Resource    /Users/sudhansu/Desktop/Folder/MyProjects/Robot framework/UIAutomation/Resources/Register.robot

*** Variables ***
${siteurl}  https://demo.guru99.com/test/newtours/index.php
${browser}  chrome

*** Test Cases ***
Registration
    open application  ${siteurl}    ${browser}
    open registration link
    Enter FirstName  Qwerty
    Enter LastName  Qwerty
    Enter PhoneNumber   37454939
    Enter Email     Qwerty@gmail.com
    Enter Address   Ganjam,Odisha,India
    Enter city      Aska
    Enter state     Odisha
    Enter postal    761111
    Enter country  INDIA
    log to console  Country selected.
    Enter username     Qwerty
    log to console  username selected.
    Enter userpassword     Qwerty
    Enter confirm password      Qwerty
    submit
    sleep  10
    Registration successfull