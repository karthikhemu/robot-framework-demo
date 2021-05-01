*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
Navigate to
    go to    ${url}

select user
    [Arguments]    ${user1}    ${user2}
    sleep    10
    wait until element is visible    //*[@id="impersonate-container"]/div[3]/input
    input text    //*[@id="impersonate-container"]/div[3]/input    ${user1}    ${user2}
    sleep    10
    PRESS KEY    //*[@id="impersonate-container"]/div[3]/input    \\13
    sleep    5
#    element should be enabled    //*[@id="impersonate-container"]/div[5]/input
#    click element    //*[@id="impersonate-container"]/div[5]/input

verify user loged in OR Not
    sleep    10
    wait until page contains    Prabhat Sinha
    sleep    8
    ${user_name}=    get text    //*[@id="tabsTop"]/div/div/div[3]/ul/li/a/span
    log to console    ${user_name}
    [Return]    ${user_name}