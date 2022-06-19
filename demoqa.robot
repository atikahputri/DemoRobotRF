*** Settings ***
Library                     SeleniumLibrary

*** Variables ***
${username}                 Atikah Putri Lestari
${email}                    atikahputrilestari@gmail.com
${address_1}                Jl. Bersama sama selamanya No.1, RT.1/RW.1, Kuningan, Kampung Bali, Kecamatan Tanah Abang, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 11111
${address_2}                Jl. In Aja dulu No.99, RT.99/RW.99, Mekarsari, Kampung Bali, Kecamatan Tanah Abang, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 11111
${seacrh}                   Cierra
${firstname}                Atikah
${lastname}                 Lestari

*** Test Cases ***
TC_01 Element for Text Box
    Open Browser            https://demoqa.com/text-box        Chrome
    Maximize Browser Window
    Input Text              //input[@id="userName"]             ${username}    
    Input Text              //input[@id="userEmail"]            ${email}
    Input Text              //textarea[@id="currentAddress"]    ${address_1}
    Input Text              //textarea[@id="permanentAddress"]  ${address_2}   
    sleep                   2s
    Click Element           //button[@id="submit"]
    sleep                   5s
    Close Browser

TC_02 Element for Check Box
    Open Browser            https://demoqa.com/checkbox        Chrome
    Maximize Browser Window  
    Click Element           (//button[@aria-label="Toggle"])[1]     #Home
    Click Element           (//button[@aria-label="Toggle"])[2]     #Desktop
    Click Element           (//span[@class="rct-checkbox"])[3]      #Notes    
    Click Element           (//button[@aria-label="Toggle"])[3]     #Documents    
    Click Element           (//button[@aria-label="Toggle"])[4]     #WorkSpace
    Click Element           (//span[@class="rct-checkbox"])[8]      #Angular
    Click Element           (//button[@aria-label="Toggle"])[5]     #Office
    Click Element           (//span[@class="rct-checkbox"])[11]     #Public
    Click Element           (//span[@class="rct-checkbox"])[12]     #Private
    Click Element           (//button[@aria-label="Toggle"])[6]     #Downloads
    sleep                   2s
    Close Browser

TC_03 Element for Radio Button
    Open Browser            https://demoqa.com/webtables            Chrome
    Maximize Browser Window  
    Click Element           //button[@id="addNewRecordButton"]
    Input Text              //input[@id="firstName"]                ${firstname}
    Input Text              //input[@id="lastName"]                 ${lastname}
    Input Text              //input[@id="userEmail"]                ${email}
    Input Text              //input[@id="age"]                      25
    Input Text              //input[@id="salary"]                   4500000
    Input Text              //input[@id="department"]               IT
    Click Element           //button[@id="submit"]
    sleep                   5s
    Input Text              //input[@id="searchBox"]                ${firstname}
    sleep                   5s
    Click Element           //span[@id="delete-record-4"] 
    sleep                   5s
    Clear Element Text      //input[@id="searchBox"]
    sleep                   5s
    Close Browser

TC_04 Element for Buttons
    Open Browser            https://demoqa.com/links           Chrome
    Maximize Browser Window  
    Click Element           //a[@id="simpleLink"]
    sleep                   2s
    Close Browser