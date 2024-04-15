*** Settings ***
Library  SeleniumLibrary
Variables   /Users/sudhansu/Desktop/Folder/MyProjects/Robot framework/UIAutomation/pageobjects/locator.py
*** Keywords ***
Open Application
    [Arguments]     ${siteurl}    ${browser}
    open browser  ${siteurl}    ${browser}
    maximize browser window

open registration link
    click link  ${register_link}
    wait until element is visible  ${information_text}

Enter FirstName
    [Arguments]  ${fname}
    input text  ${First_name}   ${fname}

Enter LastName
    [Arguments]  ${Lname}
    input text  ${Last_name}    ${Lname}

Enter PhoneNumber
    [Arguments]  ${phone_number}
    input text  ${phone}    ${phone_number}

Enter Email
    [Arguments]  ${mail}
    input text  ${Email}    ${mail}

Enter Address
    [Arguments]  ${Add}
    input text  ${Address}  ${Add}

Enter city
    [Arguments]  ${city_name}
    input text  ${city}     ${city_name}

Enter state
    [Arguments]  ${state_name}
    input text  ${state}    ${state_name}

Enter postal
    [Arguments]  ${post}
    input text  ${postal}   ${post}

Enter country
    [Arguments]  ${country_name}
    select from list by value  ${country}   ${country_name}

Enter username
    [Arguments]  ${uname}
    input text  ${username}     ${uname}

Enter userpassword
    [Arguments]  ${upassword}
    input text  ${userpassword}    ${upassword}

Enter confirm password
        [Arguments]  ${c_password}
        input text  ${confirmpassword}      ${c_password}

submit
    click button  ${submit}

Registration successfull
    title should be  Register: Mercury Tours






