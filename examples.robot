*** Settings ***
Documentation    As a tester
...      I want to specify feature files and translate it to RobotFramework
...      So I can use the best of both worlds
Resource    ./examples_step_definitions.robot
Metadata    Feature    Examples
Metadata    Generated by    _gherkin2robotframework on 2022-03-28T15:02:52.407114_

*** Test Cases ***
Greeter
    Background
    Given a greeter
    ${DataTable}=    Create List
    FOR    ${Name}    ${Greeting}    IN
    ...    Joe    Hello
    ...    Mary    Hi, there!
        ${entry}=    Create Dictionary    Name=${Name}    Greeting=${Greeting}
        Append To List    ${DataTable}    ${entry}
    END
    When greeting the following persons:    @{DataTable}
    Then the wold is a better place

Repetitive stuff: A
    [Documentation]    Documentation for
    ...    example A
    [Tags]    tag    A
    [Template]    Scenario Outline Repetitive stuff
    AAA    123
    BBB    456

Repetitive stuff: B
    [Documentation]    Documentation for example B
    [Tags]    tag    B
    [Template]    Scenario Outline Repetitive stuff
    CCC    789
    DDD    000


*** Keywords ***
Background
    Given some background stuff

Scenario Outline Repetitive stuff
    [Documentation]    A nice description
    ...    on multiple lines
    [Arguments]    ${thingy}    ${stuff}
    Background
    Given a thing with "${thingy}"
    When some action
    Then this happened: ${stuff}


