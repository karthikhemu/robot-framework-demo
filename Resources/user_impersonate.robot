*** Settings ***
Resource    ./PO/HomePage.robot
Resource    ./PO/loginPage.robot
Resource    ./PO/TopNavigation.robot

*** Variables ***

*** Keywords ***
Go to Home page
    HomePage.Navigate to

Go to "Admin" page
    TopNavigation.user impersonate

select user from list
    [Arguments]    ${user1}    ${user2}
    HomePage.select user    ${user1}    ${user2}

verify user
    verify user loged in OR Not

