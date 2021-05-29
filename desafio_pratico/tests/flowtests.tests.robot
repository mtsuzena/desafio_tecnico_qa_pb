*** Settings ***
Documentation           The purpose of this test case is to validate that the application displays the text "Hello World!" after executing the Start function.

Resource                ../pages/commons/hooks.pages.commons.robot
Resource                ../config/page_register.config.robot

Test Setup              Start Test
Test Teardown           Finish Test


*** Test Cases ***
Test Case 01: Validate Start function
    Click the Start button
    Waint until the Label Finish Is Visible
    Checking if the Label Finish contains the text "Hello World!"