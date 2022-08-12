*** Settings ***
Library            OpenApiDriver
...                    source=files/SwaggerPetstore-OpenApi3Yaml.yaml
...                    origin=https://petstore.swagger.io/v2
Test Template      Validate Using Test Endpoint Keyword

*** Test Cases ***
Test Endpoint for ${method} on ${endpoint} where ${status_code} is expected

*** Keywords ***
Validate Using Test Endpoint Keyword
    [Arguments]    ${endpoint}    ${method}    ${status_code}
    Test Endpoint
    ...    endpoint=${endpoint}    method=${method}    status_code=${status_code}
