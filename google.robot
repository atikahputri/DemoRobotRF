*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser            ${base_url}             ${browser_type}
Test Teardown           Close Browser

*** Variables ***
${base_url}             https://www.google.com/
${browser_type}         Chrome

*** Test Cases ***
I am typing My Name in the field Google Page                 
    Maximize Browser Window
    Input Text                  //input[@class="gLFyf gsfi"]               Cara supaya tidak lapar
    Click Element               (//input[@class="gNO89b"])[2]
    #//input[@data-ved="0ahUKEwi4-4zFibL4AhWnUGwGHeoABBcQ4dUDCAw"] 
    # //input[@class="gNO89b"]         
    Sleep                       5s