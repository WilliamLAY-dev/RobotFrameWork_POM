*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/LoginPage.robot
Resource    ../keywords/LoginPage_keywords.robot


*** Test Cases ***

Logins 
    [Tags]    POEI20252-776
    Login with valid credentials
    Login with invalid credentials