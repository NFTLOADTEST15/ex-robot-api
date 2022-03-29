*** Settings ***
Resource    ../../resources/imports.robot

*** Keywords ***
Should Be Return Success
    [Documentation]    should be return success
    [Arguments]    ${response}
    Should Be Equal As Integers    200    ${http_response_code}

Assert Http Status Code Is 200 Ok
    [Documentation]    verify http status code is 200
    [Arguments]    ${http_status_code}
    Should Be Equal As Strings    200    ${http_status_code}

Assert Http Status Code Is 404 Not Found
    [Arguments]    ${http_status_code}
    Should Be Equal As Strings    404    ${http_status_code}


