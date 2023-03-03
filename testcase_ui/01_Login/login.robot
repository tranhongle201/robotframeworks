*** Settings ***
Library       SeleniumLibrary 
Resource    ../../testcase_ui/01_Login/login.keywords.resource
Resource    ../../locators/login_locators.resource
Force Tags    loginPage
Suite Setup     Open Browser    ${URL}   ${BROWSER}
Suite Teardown  Close All Browsers
*** Variables ***
${URL}              https://ecommerce-playground.lambdatest.io/index.php?route=account/login
${BROWSER}          Chrome
*** Test Cases ***
TC01_LOGIN: Show error message when input username and password invalid
    [Documentation]    Show error message when input username and password invalid
    [Tags]    TC01_LOGIN
    Given Input Name    123
    AND login.keywords.Input Password    124566

