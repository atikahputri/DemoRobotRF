*** Settings ***
Library                     SeleniumLibrary
Test Setup                  Open Browser            ${base_url}      ${browser_type}
Test Teardown               Close Browser

*** Variables ***
${base_url}                 https://demoqa.com/checkbox
${browser_type}             chrome

*** Test Cases ***
I click "Notes" in checkbox
    Maximize Browser Window
    Click Element               (//button[@aria-label="Toggle"])[1]
    sleep                       2s
    Click Element               (//button[@aria-label="Toggle"])[2]
    sleep                       2s
    Click Element               (//span[@class="rct-checkbox"])[3]
    sleep                       2s
    Element Should Be Visible   //div[@id="result"]
    Element Should Contain      //span[@class="text-success"]           notes
    sleep                       2s
    #(//span[@class="rct-checkbox"])[3]
    #//label[@for="tree-node-notes"]