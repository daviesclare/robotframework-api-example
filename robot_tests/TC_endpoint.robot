*** Settings ***
Library  OpenApiLibCore
...  source=files/SwaggerPetstore-OpenApi3Yaml.yaml
# ...  origin=http://localhost:3000

*** Test Cases ***
Getting Started
    ${url}=    Get Valid Url    endpoint=/pet/findByStatus   method=get
    ${request}=  Get Request Data  endpoint=/pet/findByStatus   method=get
    log to console  ${request}
