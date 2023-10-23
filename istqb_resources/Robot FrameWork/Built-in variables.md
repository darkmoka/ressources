## Built-in variables

Built-in variables related to the operating system ease making the test data operating-system-agnostic.

**Operating-system variables**

        ${CURDIR}	    An absolute path to the directory where the test data file is located. This variable is case-sensitive.

        ${TEMPDIR}	    An absolute path to the system temporary directory. In UNIX-like systems this is typically /tmp, and in Windows c:\Documents and Settings\<user>\Local Settings\Temp.

        ${EXECDIR}	    An absolute path to the directory where test execution was started from.

        ${/}	    The system directory path separator. / in UNIX-like systems and \ in Windows.

        ${:}	    The system path element separator. : in UNIX-like systems and ; in Windows.

        ${\n}	    The system line separator. \n in UNIX-like systems and \r\n in Windows.

**Operating-system variables**

        *** Test Cases ***
        Example 1A
            Connect    example.com    80       # Connect gets two strings as arguments

        Example 1B
            Connect    example.com    ${80}    # Connect gets a string and an integer

        Example 2
            Do X    ${3.14}    ${-1e-4}        # Do X gets floating point numbers 3.14 and -0.0001


