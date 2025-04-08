*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/LoginPage.robot
Resource    ../pages/ProductPage.robot
Resource    ../keywords/ProductPage_keywords.robot
Resource    ../keywords/LoginPage_keywords.robot

*** Test Cases ***

ProductPage
    Login with valid credentials
    Add a product to cart