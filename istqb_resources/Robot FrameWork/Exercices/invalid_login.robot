*** Settings ***
# Documentation
Library    Browser
Resource    common.resource
Test Setup    Open Browser To Login Page
Test Template    Error Page Is Visible When Using Incorrect Credentials

*** Variables ***
${URL} =    http://localhost:7272/
${USERNAME} =    demo
${PASSWORD} =    mode

*** Test Cases ***
#test case name                  #username   #password
Error Page Is Visible When Using Incorrect Credentials_1    ${EMPTY}    ${EMPTY}

Error Page Is Visible When Using Incorrect Credentials_2    ${SPACE*2}    ${EMPTY}

Error Page Is Visible When Using Incorrect Credentials_3    ${SPACE*2}    ${SPACE*2}

Error Page Is Visible When Using Incorrect Credentials_4    ${USERNAME}    ${EMPTY}

Error Page Is Visible When Using Incorrect Credentials_5    ${EMPTY}    ${PASSWORD}


robot robot/invalid_login.robot