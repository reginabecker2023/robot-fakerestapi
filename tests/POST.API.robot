*** Settings ***                                                                                       
Resource    ../resources/services.robot
                                                                                                      
*** Test Cases *** 
New Session
    &{payload}=         Create Dictionary       id=1        userName=Regina     password=184999
    ${resp}=            Post Session            ${payload}

    Log To Console      ${resp.text} 
    Log To Console      ${resp.status_code}
                                                                                                      
    Status Should Be    200                     ${resp}

Empty Name
    &{payload}=         Create Dictionary       id=1        userName=${EMPTY}     password=184999
    ${resp}=            Post Session            ${payload}
    
    Log To Console      ${resp.text} 
    Log To Console      ${resp.status_code}
                                                                                                      
    Status Should Be    200                     ${resp} 

Without Json
    &{payload}=         Create Dictionary
    ${resp}=            Post Session            ${payload}
    
    Status Should Be    200                     ${resp}         
