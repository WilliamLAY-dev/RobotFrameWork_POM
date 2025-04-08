*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/ProductPage.robot

*** Keywords ***
Add a product to cart
    
    Wait Until Element Is Visible    ${ADDPRODUCT_BUTTON}
    Click Element    ${ADDPRODUCT_BUTTON}
    Page Should Contain Element    ${NUMBER_SHOPPING_CARD}
    Click Element    ${CART_LOGO}
    Page Should Contain Element    ${CART_CONTAINER}
