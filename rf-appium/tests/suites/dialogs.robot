*** Settings ***
Documentation    Test suite for dialogs
Library    AppiumLibrary
Resource    ../resources/global.robot    
Resource    ../variables/global.robot    
Suite Setup    Initialize


*** Keywords ***
Initialize
    Initialize Global Variables


*** Test Cases ***
Trigger Dialog
	Open Test Application By Activity    .app.AlertDialogSamples
	Capture Page Screenshot
