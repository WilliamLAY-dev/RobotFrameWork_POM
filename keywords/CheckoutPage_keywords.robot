*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/CheckoutPage.robot

*** Keywords ***
Finaliser la commande
    Wait Until Element Is Visible    ${CHECKOUT_BUTTON}
    Click Element    ${CHECKOUT_BUTTON}
    Input Text    ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text    ${LAST_NAME_FIELD}    ${LAST_NAME}
    Input Text    ${POSTAL_CODE_FIELD}    ${POSTAL_CODE}
    Click Element    ${CONTINUE_BUTTON}
    Wait Until Element Is Visible    ${FINISH_BUTTON}
    Click Element    ${FINISH_BUTTON}
    Wait Until Element Is Visible    ${BACKHOME_BUTTON}
    Page Should Contain Element    ${VALIDATION_MESSAGE}
    Click Element    ${BACKHOME_BUTTON}
    Page Should Contain    Swag Labs