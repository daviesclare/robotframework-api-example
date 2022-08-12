*** Settings ***
Library  OpenApiLibCore
...  source=http://localhost:3000/api.yaml
# ...  origin=http://localhost:3000

*** Test Cases ***
Getting Started
    ${url}=    Get Valid Url    endpoint=/clinicians/me   method=get
    ${request}=  Get Request Data  endpoint=/clinicians/me   method=get
    log to console  ${request}
