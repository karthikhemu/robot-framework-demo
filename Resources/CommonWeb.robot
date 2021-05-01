*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#${url}    http://myteamstaging/
#${browser}    chrome


*** Keywords ***
Begin Web Test
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium implicit wait    8
    sleep    20


End Web Test
    close all browsers
