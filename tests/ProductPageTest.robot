*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/LoginPage.robot
Resource    ../pages/ProductPage.robot
Resource    ../keywords/ProductPage_keywords.robot
Resource    ../keywords/LoginPage_keywords.robot

*** Test Cases ***

ProductPage
    [Tags]    POEI20252-784
    Login with valid credentials
    Add a product to cart