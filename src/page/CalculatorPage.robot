*** Settings ***

*** Variable ***
${button.8}                                id=com.google.android.calculator:id/digit_8 
${button.add}                              id=com.google.android.calculator:id/op_add
${button.division}                         id=com.google.android.calculator:id/op_div
${button.multiply}                         id=com.google.android.calculator:id/op_mul
${button.equal}                            id=com.google.android.calculator:id/eq
${text.result}                             id=com.google.android.calculator:id/result

*** Keywords ***
Tap number 8
    Wait Until Element Is Visible   ${button.8} 
    Click Element                   ${button.8}

Tap addition
    Wait Until Element Is Visible   ${button.add} 
    Click Element                   ${button.add}

Tap division
    Wait Until Element Is Visible   ${button.division} 
    Click Element                   ${button.division}  

Tap multiply
    Wait Until Element Is Visible   ${button.multiply} 
    Click Element                   ${button.multiply}  

Tap equals
    Wait Until Element Is Visible   ${button.equal}
    Click Element                   ${button.equal}

Assert result is "${expected_result}"
    Wait Until Element Is Visible   ${text.result}
    Element Text Should Be          ${text.result}      ${expected_result}  