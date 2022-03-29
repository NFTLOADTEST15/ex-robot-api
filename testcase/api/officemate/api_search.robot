*** Settings ***
Resource       ../../../resources/imports.robot
Resource       ../../../keywords/common/http_status_code.robot

*** Variables ***

*** Test Cases ***
OFF-1001
    [Documentation]    Search product
    [Tags]   OFF-1001    Search

    Create Session    httpbin    ${gw_host_url}
    ${response}=    Get Request    headers=${headers}    uri=/api/url-rewrite/furniture/office-furniture/table
    ${http_status_code}    Set Variable    ${response.status_code}
    ${json}    To Json    ${response.text}
    ${response}    Set Variable    ${json}
    Assert Http Status Code Is 200 Ok    ${http_status_code}

