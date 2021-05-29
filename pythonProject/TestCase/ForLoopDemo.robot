*** Settings ***

*** Variables ***

*** Test Cases ***
#ForLoop1
#    ${i}
#    FOR   ${i}    IN RANGE    1   10
#        Log To Console  ${i}
#    END
#
#ForLoop2
#    FOR  ${i}   IN  1   2   3   4   5   6   7   8   9
#        Log To Console  ${i}
#    END

#ForLoop3withList
#    @{items}    Create List  1  2   3   4   5
#    FOR  ${i}   IN  @{items}
#        Log To Console  ${i}
#    END

#Forloop4
#    FOR     ${i}    IN  boss    gifted  betty
#        Log To Console  ${i}
#    END

#Forloop5
#    @{namelist}    Create List  boss    gifted  betty
#    FOR     ${i}    IN  @{namelist}
#        Log To Console  ${i}
#    END

#Forloop6withExit
#    @{items}    Create List  1  2   3   4   5   6
#    FOR     ${i}    IN  @{items}
#        Log To Console  ${i}
#    Exit For Loop If  ${i}==4
#    END

#NestedLoops
#    @{alphabets}=    Create List    a    b    c
#    Log    ${alphabets}    # ['a', 'b', 'c']
#    @{numbers}=    Create List    ${1}    ${2}    ${3}
#    Log    ${numbers}    # [1, 2, 3]
#    FOR    ${alphabet}    IN    @{alphabets}
#        FOR    ${number}    IN    @{numbers}
#            Log To Console    ${alphabet}${number}
#            # a1, a2, a3, b1, b2, b3, c1, c2, c3
#        END
#    END

#Loop a range from start to end index with steps
#    FOR    ${index}    IN RANGE    0    10    2
#        Log To Console    ${index}    # 0, 2, 4, 6, 8
#    END

Continue a loop from the next iteration on condition
    FOR     ${i}    IN RANGE    5
        Continue For Loop If  ${i}==2
        Log To Console  ${i}
    END






*** Keywords ***

