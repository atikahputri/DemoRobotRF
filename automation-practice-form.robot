*** Settings ***
Library                     SeleniumLibrary
Test Setup                  Open Browser            ${base_url}      ${browser_type}
Test Teardown               Close Browser

*** Variables ***
${base_url}                https://demoqa.com/automation-practice-form
${browser_type}             chrome
${first_name}               Atikah
${last_name}                Lestari
${email}                    atikahputrilestari@gmail.com
${phone}                    089696387424
${DOB}                      20061997
${subject_1}                Computer
${subject_2}                English
${address}                  Jl. Bersama sama selamanya No.1, RT.1/RW.1, Kuningan, Kampung Bali, Kecamatan Tanah Abang, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 11111
${state}                    Uttar

*** Test Cases ***
I am typing on Name Field
    #Maximize Browser Window
    Set Window Size             600                                         800
    execute javascript          window.scrollTo(0,2000)
    #step 1 input name field
    Input Text                  //input[@id="firstName"]                    ${first_name} 
    sleep                       2s
    Input Text                  //input[@id="lastName"]                     ${last_name} 
    sleep                       2s
    #step 2 input email field
    Scroll Element Into View    //input[@id="userEmail"]
    Input Text                  //input[@id="userEmail"]                    ${email} 
    sleep                       2s
    #step 3 select female gender
    Click Element               //label[@for="gender-radio-2"]
    sleep                       2s
    #step 4 input mobile phone number
    Input Text                  //input[@id="userNumber"]                   ${phone} 
    sleep                       2s
    #step 5 select DOB
    #step 6 input Subjects field
    Press Keys                  //input[@id="subjectsInput"]                ${subject_1}                  RETURN 
    Press Keys                  //input[@id="subjectsInput"]                ${subject_2}                  RETURN     
    sleep                       2s
    #step 7 select hobby
    Click Element               //label[@for="hobbies-checkbox-1"]
    Click Element               //label[@for="hobbies-checkbox-2"]
    Click Element               //label[@for="hobbies-checkbox-3"]
    sleep                       2s
    #step 8 upload picture
    #step 9 input Current Address field
    Input Text                  //textarea[@id="currentAddress"]            ${address} 
    sleep                       2s
    #step 10 select state and city
    Press Keys                  //div[@id="state"]                          ${state}                    RETURN
    Press Keys                  //div[@id="city"]                           RETURN
    sleep                       2s
    #step 11 click submit button
    Click Element               //button[@id="submit"]
    sleep                       5s