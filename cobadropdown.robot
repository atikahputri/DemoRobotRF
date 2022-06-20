*** Settings ***
Library                     SeleniumLibrary
#step 1. buka browser dan open url
Suite Setup                  Open Browser            ${base_url}      ${browser_type}
#step 6. close browser
Suite Teardown               Close Browser

*** Variables ***
${base_url}                 https://the-internet.herokuapp.com/dropdown
${browser_type}             chrome

*** Test Cases ***
I am selecting "option 2" in dropdown list
    #step 2. maximize halaman browser
    Maximize Browser Window
    #step 3. validasi dropdown apakah muncul
    Element Should Be Visible                               //select[@id="dropdown"]
    #step 4. kita pilih option "2"
    Select From List By Index                               //select[@id="dropdown"]        2
    #step 5. kita validasi pilihan kita yaitu option 2
    List Selection Should Be                                //select[@id="dropdown"]        Option 2

I am selecting "option 1" in dropdown list
    #step 2. maximize halaman browser
    Maximize Browser Window
    #step 3. validasi dropdown apakah muncul
    Element Should Be Visible                               //select[@id="dropdown"]
    #step 4. kita pilih option "2"
    Press Keys                                              //select[@id="dropdown"]        1
    #step 5. kita validasi pilihan kita yaitu option 2
    List Selection Should Be                                //select[@id="dropdown"]        Option 1   