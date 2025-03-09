*** Settings ***
Documentation    Global variables
Library    OperatingSystem
Library    ../load_env.py


*** Variables ***
${GLOBAL_APPIUM_SERVER_URL}    ${EMPTY}
${GLOBAL_AUTOMATION_NAME}    ${EMPTY}

${GLOBAL_APP_FILE_NAME}    ${EMPTY}
${GLOBAL_APP_DIR_PATH}    ${EMPTY}
${GLOBAL_APP_PACKAGE_NAME}    ${EMPTY}
${GLOBAL_APP}    ${EMPTY}

${GLOBAL_PLATFORM_NAME}    ${EMPTY}
${GLOBAL_PLATFORM_VERSION}    ${EMPTY}


*** Keywords ***
Initialize Global Variables
    Log    Initializing global variables...

    ${automation_name}=    Get Environment Variable    AUTOMATION_NAME
    ${app_file_name}=    Get Environment Variable    APP_FILE_NAME
    ${app_dir_path}=    Get Environment Variable    APP_DIR_PATH
    ${app_package_name}=    Get Environment Variable    APP_PACKAGE_NAME
    ${platform_name}=    Get Environment Variable    PLATFORM_NAME
    ${platform_version}=    Get Environment Variable    PLATFORM_VERSION
    ${appium_server_url}=    Get Environment Variable    APPIUM_SERVER_URL

    Fail If Environment Variable Is Empty    ${automation_name}    AUTOMATION_NAME
    Fail If Environment Variable Is Empty    ${app_file_name}    APP_FILE_NAME
    Fail If Environment Variable Is Empty    ${app_dir_path}    APP_DIR_PATH
    Fail If Environment Variable Is Empty    ${app_package_name}    APP_PACKAGE_NAME
    Fail If Environment Variable Is Empty    ${platform_name}    PLATFORM_NAME
    Fail If Environment Variable Is Empty    ${platform_version}    PLATFORM_VERSION
    Fail If Environment Variable Is Empty    ${appium_server_url}    APPIUM_SERVER_URL

    Set Suite Variable    ${GLOBAL_AUTOMATION_NAME}    ${automation_name}
    Set Suite Variable    ${GLOBAL_APP_FILE_NAME}    ${app_file_name}
    Set Suite Variable    ${GLOBAL_APP_DIR_PATH}    ${app_dir_path}
    Set Suite Variable    ${GLOBAL_APP_PACKAGE_NAME}    ${app_package_name}
    Set Suite Variable    ${GLOBAL_PLATFORM_NAME}    ${platform_name}
    Set Suite Variable    ${GLOBAL_PLATFORM_VERSION}    ${platform_version}
    Set Suite Variable    ${GLOBAL_APPIUM_SERVER_URL}    ${appium_server_url}
	Set Suite Variable    ${GLOBAL_APP}    ${GLOBAL_APP_DIR_PATH}/${GLOBAL_APP_FILE_NAME}

    Log    Initialized global variables.

Fail If Environment Variable Is Empty
    [Arguments]    ${variable}    ${environment_variable_key}
    Run Keyword If    '${variable}' == '${EMPTY}'    
    ...    Fail    ${variable} is not set in the environment variables.