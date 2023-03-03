*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/login_locators.resource

*** Variables ***
${LOGIN URL}    https://ecommerce-playground.lambdatest.io/index.php?route=account/login
${BROWSER}        Chrome

*** Keywords ***
Open Login Page
    [Documentation]    Opens browser to login page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Login Page

Input Name
    [Arguments]    ${name}
    Input Text    ${LOGIN.EMAIL}    ${name}

Input Password
    [Arguments]    ${password}
    Input Text    ${LOGIN.PASSWORD}    ${password}