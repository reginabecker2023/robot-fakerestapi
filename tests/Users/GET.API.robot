*** Settings ***                                                                                       
Resource        ../../resources/services.robot
                                                                                                       
*** Test Cases ***                                                                                     
                                                                                                       
Get Request Users                                                                                       
    Create Session                  users               ${base_uri}
    
    ${resp_users}=                  GET On Session      users           /api/v1/Users

    ${code}=                        Convert To String   ${resp_users.status_code}

    Should Be Equal                 ${code}             200      
                                                                                                       
    Should Be Equal As Strings      ${resp_users.reason}  OK