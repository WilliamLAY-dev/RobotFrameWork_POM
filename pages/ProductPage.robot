*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.saucedemo.com
${BROWSER}     chrome
${ADDPRODUCT_BUTTON}    id=add-to-cart-sauce-labs-backpack
${NUMBER_SHOPPING_CARD}    xpath=/html/body/div/div/div/div[1]/div[1]/div[3]/a/span
${CART_LOGO}    xpath=/html/body/div/div/div/div[1]/div[1]/div[3]/a
${CART_CONTAINER}    id=cart_contents_container


