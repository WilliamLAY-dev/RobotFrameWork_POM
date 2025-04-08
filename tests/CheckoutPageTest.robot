*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/LoginPage.robot
Resource    ../pages/ProductPage.robot
Resource    ../keywords/CheckoutPage_keywords.robot
Resource    ../keywords/LoginPage_keywords.robot
Resource    ../keywords/ProductPage_keywords.robot

*** Test Cases ***
Checkout
    [Tags]    POEI20252-785
    Login with valid credentials
    Add a product to cart
    Finaliser la commande