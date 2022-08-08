*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections

*** Variables ***
${BASE_URL}  https://thetestingworldapi.com/

*** Test Cases ***
TC_001_Get_Request_Fetch_and_Validate_Content
    create session  Get_Student_Details  ${BASE_URL}
    ${response}=  get request  Get_Student_Details  api/studentsDetails/3650450
    ${json_response}  To Json  ${response.content}
    Log To Console  ${response.content}
