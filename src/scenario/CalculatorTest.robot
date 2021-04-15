*** Settings ***
Resource        ${EXECDIR}/TestSetup.robot
Resource        ${EXECDIR}/src/step/CalculatorStep.robot

Test Setup       Setup Test
Test Teardown    Teardown Test

Force Tags      calculator

*** Test Cases ***
Successful Addition Operation
    Given User open calculator app
    When User perform addition
    Then User see correct result of addition

Successful Division Operation
    Given User open calculator app
    When User perform division
    Then User see correct result of division

Successful Multiply Operation
    Given User open calculator app
    When User perform multiply
    Then User see correct result of multiply