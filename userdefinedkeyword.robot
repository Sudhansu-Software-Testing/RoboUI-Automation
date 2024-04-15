*** Settings ***
Library  SeleniumLibrary
Resource  /Users/sudhansu/Desktop/Folder/MyProjects/Robot framework/UIAutomation/Resources/resource.robot

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/
${browser}  chrome
*** Test Cases ***
TC1
    ${page_data}=   lunchbrowser  ${url}    ${browser}
    log to console  ${page_data}
    log  ${page_data}
    input text  xpath:/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[2]/td[2]/input   mercury
    input text  xpath://tbody/tr[3]/td[2]/input[1]   mercury
    click element  xpath://tbody/tr[4]/td[2]/div[1]/input[1]




