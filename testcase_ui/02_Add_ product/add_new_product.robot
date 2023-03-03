*** Settings ***
Library           SeleniumLibrary
Resource    ../../testcase_ui/02_Add_ product/add_new_product.resource
Resource    ../../locators/add_new_product.resource
Resource    ../../keywords/ui_common_keywords.resource
Test Setup     Start testcases
#Test Teardown  Close All Browsers
Force Tags    loginPage

*** Variables ***

*** Test Cases ***
# TC01_ADD_NEW_PRODUCT: Navigate to add new product
#     [Documentation]    As an admin, I can go to Create Product see this page
#     [Tags]    ADD_NEW_PRODUCT
#     When Navigate to add new product
#     Then Should be navigate to add new product 
#     And Check visible button setting and save and Save and Continue Edit
#     And Check visible button setting and save and Save and Continue Edit dynamic

# TC02_ADD_NEW_PRODUCT: Change togle mode from Basic to Advance
#     [Documentation]    As an admin, I can Change togle mode from Basic to Advance
#     [Tags]    ADD_NEW_PRODUCT
#     Given Navigate to add new product
#     And Should be navigate to add new product 
#     And Check Visivisibleble and togle Advanced
#     And Check visible and click togle Basic
#     Then Check Gift card display
#     And Check downloadable display 
TC03_ADD_NEW_PRODUCT: Add new product and save product
    [Documentation]    As an admin, I can add a new product and save it
    [Tags]    ADD_NEW_PRODUCT1
    Given Navigate to add new product
    And Should be navigate to add new product
    And Input textfield     Name    input name
    And Input short description     short description
    And Input Full description       111
    #And Input textfield     Sku    123
    And select value dropdown Categories    Computers
    And select value dropdown Manufacturers    HP


