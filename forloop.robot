*** Settings ***

*** Variables ***

*** Test Cases ***
Forloop1
    FOR    ${i}    IN RANGE    1  10
    log to console  ${i}
    END

forloop2
    FOR     ${i}    IN  1 2 3 4 5 6 7 8 9 10
    log to console  ${i}
    END
forloop3
    FOR     ${i}    IN  1  2  3  4  5  6  7  8  9  10
    log to console  ${i}
    END
forloop4
    @{items}    create list   1   2   3   4   5   6   7   8   9
    FOR     ${i}    IN  @{items}
    log to console  ${i}
    END
forloop5
    @{names}    create list  john   smith   jerry   Oliver
    FOR     ${name}    IN  @{names}
    log to console   ${name}
    END
forloop6withexit
    @{list_value}    create list   1   2   3   4   5   6   7   8   9
    FOR    ${i}   IN  @{list_value}
    log to console   ${i}
    exit for loop if  ${i}==3
    END
*** Keywords ***
