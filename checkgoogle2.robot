*** Settings ***
Library                     SeleniumLibrary
Test Setup                  Open Browser            ${base_url}      ${browser_type}
Test Teardown               Close Browser

*** Variables ***
${base_url}                 http://google.com/
${browser_type}             chrome

*** Test Cases ***
I am access Google Page
    Maximize Browser Window
    sleep                   5s