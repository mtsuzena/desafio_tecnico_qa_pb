*** Settings ***

Resource                                ../components/components.robot

*** Keywords ***

Click the Start button
    Click Element                       ${BUTTON_START}

Waint until the Label Finish Is Visible
    Wait Until Element Is Visible   ${LABEL_FINISH}     timeout=10

Checking if the Label Finish contains the text "${MESSAGE_TEXT}"
    Element Should Contain          ${LABEL_FINISH}     ${MESSAGE_TEXT}