*** Settings ***
Library  RequestsLibrary

*** Variables ***
${BASE_URL}  https://thetestingworldapi.com/

*** Test Cases ***
TC_001_Get_Request
    create session  Get_Student_Details  ${BASE_URL}
    #create session with the BASE_URL
    ${response}=  get request  Get_Student_Details  api/studentsDetails
    log to console  ${response.status_code}
    log to console  ${response.content}
    ${statusCode}=  convert to string  ${response.status_code}
    should be equal  ${statusCode}  200
