*** Settings ***
Library    DatabaseLibrary
Library    SeleniumLibrary
*** Variables ***
${queyPath} =    ../data/TestUsersInsertionQuery.sql


${db_user_name} =    'prmuser'
${db_user_pw} =    '2#prmlogin!'
${db_host}=    'DCA-QA-247'
*** Test Cases ***
data
    creae test data
*** Keywords ***

#to create test data
creae test data
    Connect To Database Using Custom Params    pymssql    ${db_host},${db_user_name},${db_user_pw}
    Execute Sql Script    ${queyPath}







