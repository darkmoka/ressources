*** Settings ***
Library    Browser
Resource    common.resource

*** Variables ***
${URL} =    http://localhost:7272/
${USERNAME} =    demo
${PASSWORD} =    mode

*** Test Cases ***

Welcome Page Should Be Visible After Successful Login
    Open Browser To Login Page
    common.Enter Username    ${USERNAME}
    common.Enter Password    ${PASSWORD}
    Submit Login Form
    Verify That Welcome Page Is Visible
    [Teardown]    Do a Successful logout

Login Form Should Be Visible After Successful Logout
    [Setup]    Do a Successful Login
    Verify That Welcome Page Is Visible
    Do Successful logout
    Verify That Login Page Is Visible