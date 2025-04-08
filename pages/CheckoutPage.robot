*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${CHECKOUT_BUTTON}    id=checkout
${FIRST_NAME_FIELD}    id=first-name
${LAST_NAME_FIELD}    id=last-name
${POSTAL_CODE_FIELD}    id=postal-code
${FIRST_NAME}    William
${LAST_NAME}    LAY
${POSTAL_CODE}    77127  
${CONTINUE_BUTTON}    id=continue
${FINISH_BUTTON}    id=finish
${VALIDATION_MESSAGE}    xpath=/html/body/div/div/div/div[2]/h2
${BACKHOME_BUTTON}    id=back-to-products