# ROBOT FRAMEWORK
_________________
## 1. Terminology
- **pip** - Python package manager, this is a tool that is needed to install Robot Framework and needed test libraries

- **shell** - The shell is the command interpreter in an operating system such as Unix or GNU/Linux, it is a program that executes other programs

- **bat / batch file / cmd** - A batch file is a script file in DOS, OS/2 and Microsoft Windows. It consists of a series of commands to be executed by the command-line interpreter, stored in a plain text file.

- **robot** - The command line tool that allows the user to run Robot Framework test cases and tasks

- **test suite** - A Robot file that contains test cases

- **keyword** - a component, similar to a function in programming, that robot uses to execute steps

- **arguments** - Values that are given to keywords. Also known as parameters.

- **System Under Testing / SUD** 

## 2. Robot Syntax 

- *** Settings *** - to define libraries, resources, suite/test setups, documentation, etc

        *** Settings ***
        Documentation     Example using the space separated format.
        Library           OperatingSystem

- *** Variables *** - to define suite level variables

        *** Variables ***
        ${NAME}         Robot Framework
        ${VERSION}      2.0
        ${ROBOT}        ${NAME} ${VERSION}

- *** Keywords *** - user defined keywords

        *** Keywords ***
        My Keyword
            [Arguments]    ${path}
            Directory Should Exist    ${path}

- *** Test Cases *** - All the suite (file) test cases goes below this one

        *** Test Cases ***
        My Test
            [Documentation]    Example test.
            Log    ${MESSAGE}
            My Keyword    ${CURDIR}

        Another Test
            Should Be Equal    ${MESSAGE}    Hello, world!

~~- *** Tasks *** - Alternative to test cases, used in Robotic Process Automation (RPA)~~

# Keywords and variables

## User Defined Keywords

Without keywords

            *** Settings ***
            Library    Browser

            *** Test Cases ***
            Welcome Page Should Be Visible After Successful Login
            New Browser    headless=${FALSE}
            New Page    http://localhost:7272
            Fill Text    id=username_field    demo
            Fill Secret    id=password_field    mode
            Click    id=login_button
            Get Text    body    contains    Welcome Page
            Get Url    ==    http://localhost:7272/welcome.html
            Get Title    ==    Welcome Page

With keywords

        *** Settings ***
        Library    Browser

        *** Test Cases ***
        Welcome Page Should Be Visible After Successful Login
        Open Browser To Login Page
        Enter Username
        Enter Password
        Submit Login Form
        Verify That Welcome Page Is Visible

        *** Keywords ***

        Open Browser To Login Page
            New Browser    headless=${FALSE}
            New Page    ${URL}

        Enter Username
            Fill Text    id=username_field    ${USERNAME}

        Enter Password
            Fill Secret    id=password_field    ${PASSWORD}

        Submit Login Form
            Click    id=login_button

        Verify That Welcome Page Is Visible
            Get Text    body    contains    Welcome Page
            Get Url    ==    ${URL}/welcome.html
            Get Title    ==    Welcome Page

## Variables 

        *** Settings ***
        Library    Browser

        *** Variables ***
        ${URL} =    http://localhost:7272
        ${USERNAME} =    demo
        ${PASSWORD} =    mode

        *** Test Cases ***

        Welcome Page Should Be Visible After Successful Login
            Open Browser To Login Page
            Enter Username
            Enter Password
            Submit Login Form
            Verify That Welcome Page Is Visible

        *** Keywords ***

        Open Browser To Login Page
            New Browser    headless=${FALSE}
            New Page    ${URL}

        Enter Username
            Fill Text    id=username_field    ${USERNAME}

        Enter Password
            Fill Secret    id=password_field    ${PASSWORD}

        Submit Login Form
            Click    id=login_button

        Verify That Welcome Page Is Visible
            Get Text    body    contains    Welcome Page
            Get Url    ==    ${URL}/welcome.html
            Get Title    ==    Welcome Page

## Setup and teardowns

        [setup] Do Successful Login

        Do Successful Login
            Open Browser To Login Page
            Enter Username
            Enter Password
            Submit Login Form

        [teardowns] Do Sucessful logout

        Login Form Should Be Visible After Successful Logout
            [Setup]    Do Successful Login
            # rest of the implementation

## Resource files 

The biggest difference between resource files and test suite files is that in a resource file you don't have the *** Test Cases *** or *** Tasks *** table. It is recommended to use a .resource extension with resource files (instead of the otherwise used .robot). This is just for separating resource files from test files. The functionality will remain the same.

## Test templates

**Test templates convert normal keyword-driven test cases into data-driven tests. **

- Whereas the body of a keyword-driven test case is constructed **from keywords and their possible arguments**, test cases with template contain **only the arguments for the template keyword**. 

- **Instead of repeating the same keyword multiple times** per test and/or with all tests in a file, it is possible to use it only per test or just once per file.

### Basic usage 

        *** Test Cases ***
        Normal test case
            Example keyword    first argument    second argument

        Templated test case
            [Template]    Example keyword
            first argument    second argument

        *** Settings ***
        Test Template    Example keyword

        *** Test Cases ***
        Templated test case
            first round 1     first round 2
            second round 1    second round 2
            third round 1     third round 2

# Different test case styles 
## Keywork-driven style
## Data-driven style
## Behavior-driven style 
