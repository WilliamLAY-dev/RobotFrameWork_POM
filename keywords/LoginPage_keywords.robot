*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/LoginPage.robot

*** Keywords ***
Login with valid credentials
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${VALID_USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${VALID_PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Page Should Contain    Swag Labs

Login with invalid credentials
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${INVALID_USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${INVALID_PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${ERROR_MESSAGE}
    Page Should Contain Element      ${ERROR_MESSAGE}