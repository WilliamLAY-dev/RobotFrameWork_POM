*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.saucedemo.com
${BROWSER}     chrome
${VALID_USERNAME}    standard_user
${VALID_PASSWORD}    secret_sauce
${INVALID_USERNAME}    AAAAA
${INVALID_PASSWORD}    BBBBB
${LOGIN_BUTTON}    id=login-button
${USERNAME_FIELD}    id=user-name
${PASSWORD_FIELD}    id=password
${ERROR_MESSAGE}    xpath=/html/body/div/div/div[2]/div[1]/div/div/form/div[3]

