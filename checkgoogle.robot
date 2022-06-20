*** Settings ***
Library                     SeleniumLibrary


*** Test Cases ***
I am access Google Page
    Open Browser             http://google.com/      Chrome
    Maximize Browser Window
    sleep                   5s
    Close Browser