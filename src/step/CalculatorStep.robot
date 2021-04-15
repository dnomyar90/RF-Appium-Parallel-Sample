*** Settings ***
Resource           ${EXECDIR}/src/page/CalculatorPage.robot

*** Keywords ***
User open calculator app
    No operation

User perform addition
    Tap number 8
    Tap addition
    Tap number 8
    Tap equals

User perform division
    Tap number 8
    Tap division
    Tap number 8
    Tap equals

User perform multiply
    Tap number 8
    Tap multiply
    Tap number 8
    Tap equals

User see correct result of addition
    Assert result is "16"

User see correct result of division
    Assert result is "1"

User see correct result of multiply
    Assert result is "64"