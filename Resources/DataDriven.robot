*** Settings ***
Library    ../data/readcsv.py
Library    SeleniumLibrary

*** Variables ***




*** Keywords ***
read data
    [Arguments]    ${file_path}     ${row}    ${column}
    ${dd} =    readCsv_data    ${file_path}    ${row}    ${column}
    [Return]  ${dd}

read number of rows
    [Arguments]  ${file_path}
    ${rows} =  get_row_counts    ${file_path}
    [Return]  ${rows}