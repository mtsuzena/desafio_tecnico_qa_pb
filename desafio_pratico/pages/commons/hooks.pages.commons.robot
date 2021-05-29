*** Settings ***

Library                                 SeleniumLibrary

Resource                                ../../config/config.robot

*** Keywords ***
Start Test
    Open Browser                        ${BASE_URL}   ${BROWSER}
    Set Window Size                     ${BROWSER_CUSTOMER_WIDTH}   ${BROWSER_CUSTOMER_HEIGHT} 
    Set Selenium Implicit Wait          ${TIME_TO_WAIT}

Finish Test
    Capture Page Screenshot
    Close Browser