*** Settings ***
Library           SeleniumLibrary
Resource    ../../testcase_ui/02_Add_ product/add_new_product_keywords.resource
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


# TC03_ADD_NEW_PRODUCT: Add new product and save product
#     [Documentation]    As an admin, I can add a new product and save it
#     [Tags]    ADD_NEW_PRODUCT1
#     Given Navigate to add new product
#     And Should be navigate to add new product
#     # When Input textfield     Name    input name
#     # And Input short description     short description
#     # And Input Full description       111
#     # And Input SKU     123
#     # And Click checkbox visible
#     # And Input text GTIN     123
#     # And Input Manufacturer part number     111
#     # And Click checkbox Show on home page and verify order Display
#     # And Select Product type     Simple
#     # And Select Product type     Grouped (product with variants)
#     # And Select Vendor value     Vendor 1
#     # And Select checkbox Allow customer reviews
#     # And Select checkbox Mark as new 
#     #(Element bị ẩn)
#     And select value dropdown Categories    Computers 
    ##And Input order Display     1
    ##And 
    ##And select value dropdown Manufacturers  (Element bị ẩn)
    ##And Input Product tags     ProductTags  (Multi Select - Search and Select multiple states)

TC03_ADD_NEW_PRODUCT: Add new product and save product
    [Documentation]    As an admin, I can add a new product and save it
    [Tags]    ADD_NEW_PRODUCT1     
    Given Navigate to add new product
    And Should be navigate to add new product 
    And Check Visivisibleble and togle Advanced
    When Input text field Product name         product_name_value
    And Input text area short description     short_description_value
    And Input iframe Full description       Full_description_value
    And Input text field SKU     Sku_value
    And input mutiple Categories dropdown list       Computers



