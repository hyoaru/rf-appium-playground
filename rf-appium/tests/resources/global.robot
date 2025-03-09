*** Settings ***
Documentation    Global resources
Library    AppiumLibrary
Resource    ../variables/global.robot


*** Keywords ***
Open Test Application
	Open Application    ${GLOBAL_APPIUM_SERVER_URL}    automationName=${GLOBAL_AUTOMATION_NAME}
        ...  platformName=${GLOBAL_PLATFORM_NAME}  platformVersion=${GLOBAL_PLATFORM_VERSION}
        ...  app=${GLOBAL_APP}  appPackage=${GLOBAL_APP_PACKAGE_NAME}  appActivity=.app.AlertDialogSamples

Open Test Application By Activity
    [Arguments]    ${app_activity}
    Open Application    ${GLOBAL_APPIUM_SERVER_URL}    automationName=${GLOBAL_AUTOMATION_NAME}
        ...  platformName=${GLOBAL_PLATFORM_NAME}  platformVersion=${GLOBAL_PLATFORM_VERSION}
        ...  app=${GLOBAL_APP}  appPackage=${GLOBAL_APP_PACKAGE_NAME}  appActivity=${app_activity}