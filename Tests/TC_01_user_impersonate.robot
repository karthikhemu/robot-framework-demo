*** Settings ***
Documentation    this test case to validate impersonate for different users and able to login to application
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/DataDriven.robot
Suite Setup    Begin Web Test
Suite Teardown    End Web Test
Library    SeleniumLibrary


*** Variables ***
${url} =    http://myteamstaging/
${browser} =    chrome

# robot -d results tests/TC_01_user_impersonate.robot
*** Variables ***
${file} =    C://development//robot-framework-demo//data//data.csv

*** Test Cases ***
test read data from csv

    ${row}=    read number of rows  ${file}
    #TODO -please remove all unwanted commas
    FOR    ${x}    IN RANGE    0    ${row}
        ${manager} =    read data  ${file}  ${x}  0
        log to console    ${manager}
        ${project} =    read data  ${file}  ${x}  1
        log to console    ${project}

    END







#should be able to impersonate valid user
#    [Documentation]    this is test case 2
#    [Tags]    smoke
#    Go to Home page
#    Go to "Admin" page
#    select user from list    abcd    xyx
#    verify user
