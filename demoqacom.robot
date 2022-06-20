*** Settings ***
Library                     SeleniumLibrary
Test Setup                  Open Browser            ${base_url}      ${browser_type}
Test Teardown               Close Browser

*** Variables ***
${base_url}                 https://demoqa.com/radio-button
${browser_type}             chrome

*** Test Cases ***
I will click radio button in Impressive data
    Maximize Browser Window
    Click Element                   //label[@for="impressiveRadio"]
    sleep                           2s
    Element Should Be Visible       //p[@class="mt-3"]  
    Sleep                           2s           
    Element Should Contain          //span[@class="text-success"]   Impressive
    sleep                           2s
    
I will click radio button in Yes data
    Maximize Browser Window
    Click Element                   //label[@for="yesRadio"]
    sleep                           2s
    Element Should Be Visible       //p[@class="mt-3"]  
    Sleep                           2s           
    Element Should Contain          //span[@class="text-success"]   Yes
    sleep                           2s    