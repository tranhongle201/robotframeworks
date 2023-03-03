*** Settings ***
Library           SeleniumLibrary
Library    RPA.Windows
Resource     ./pages_object/add_new_product.resource
*** Variables ***
${URL}    https://ecommerce-playground.lambdatest.io/index.php?route=account/login
${BROWSER}        Chrome

*** Keywords ***
Start testcases
    Open Browser    ${URL}   ${BROWSER}  
    Maximize Browser Window 

Finish testcase
    Close Browser
Login Page
    [Arguments]    ${email}    ${password}   
    Input Text     ${LOGIN.EMAIL}     ${email}
    Input Password     ${LOGIN.PASSWORD}     ${password}
    Click Element    ${LOGIN.REMEMBER_ME}
    Click Button    ${LOGIN.BUTTON_LOGIN}
    Title Should Be   Dashboard / nopCommerce administration      
    Sleep  5s   