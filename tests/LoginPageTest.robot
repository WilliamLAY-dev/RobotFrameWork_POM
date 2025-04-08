*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/LoginPage.robot
Resource    ../keywords/LoginPage_keywords.robot


*** Test Cases ***

Logins 
    Login with valid credentials
    Login with invalid credentials