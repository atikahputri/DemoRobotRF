*** Settings ***
Library                     SeleniumLibrary
Test Setup                  Open Browser            ${base_url}      ${browser_type}
Test Teardown               Close Browser

*** Variables ***
${base_url}                 http://uitestingplayground.com/textinput
${browser_type}             chrome

*** Test Cases ***
I am typing My Name in the field
    Maximize Browser Window
    Input Text              //input[@class="form-control"]      Atikah Putri
    sleep                   2s
    Click Element           //button[@class="btn btn-primary"]  
    sleep                   2s