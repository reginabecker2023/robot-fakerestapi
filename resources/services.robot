*** Settings ***                                                                                       
Library         Collections                                                                                 
Library         RequestsLibrary

*** Variables ***
${base_uri}     http://fakerestapi.azurewebsites.net

*** Keywords ***
Post Session
    [Arguments]     ${payload}

    Create Session  users           ${base_uri}

    &{headers}=     Create Dictionary   Content-Type=application/json
#               METODO             ALIAS  ROTA    
    ${resp}=    POST On Session    users  /api/v1/Users  json=${payload}  headers=${headers}

    [return]    ${resp}