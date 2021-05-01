*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
user impersonate
    wait until element is visible    //a[text()='Admin']
    mouse over    //a[text()='Admin']
    sleep    3
    click link    User Impersonation
    sleep    10




