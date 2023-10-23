*** Settings ***
Library    Browser


*** Variables ***
${URL} =    http://localhost:7272/
${USERNAME} =    demo
${PASSWORD} =    mode

*** Keywords ***
Open Browser To Login Page
    New Browser    headless=${FALSE}
    New Page    ${URL}

Enter Username
    [Arguments]    ${USERNAME}
    Fill Text    id=username_field    ${USERNAME}

Enter Password
    [Arguments]    ${PASSWORD}
    Fill Text    id=password_field    ${PASSWORD}

Submit Login Form
    Click    id=login_button

Verify That Welcome Page Is Visible
    Get Text    body    contains    Welcome Page
    Get Url    ==    ${URL}welcome.html
    Get Title    ==    Welcome Page

Do Successful logout
    Click    'logout'

Verify That Login Page Is Visible
    Get Url    ==    ${URL}
    Get Title    ==    Login Page

Do a Successful Login    # Do a Successful login is a setup keyword 
    Open Browser To Login Page
    Enter Username    ${USERNAME}
    Enter Password    ${PASSWORD}
    Submit Login Form

Do a Successful logout    # Do a Successful logout is a teardown keyword
    Verify That Welcome Page Is Visible
    Do Successful logout
    Verify That Login Page Is Visible

Verify That Error Page Is Visible
    Get Text    body    contains    Error Page
    Get Url    ==    ${URL}error.html
    Get Title    ==    Error Page

Error Page Is Visible When Using Incorrect Credentials
    [Arguments]    ${username}    ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Submit Login Form
    Verify That Error Page Is Visible