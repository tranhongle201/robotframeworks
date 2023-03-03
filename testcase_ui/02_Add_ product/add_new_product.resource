*** Settings ***
Library    SeleniumLibrary
Library    String
Library    RPA.Windows
Library    XML
Resource    ../../keywords/ui_common_keywords.resource

*** Variables ***
${URL}              https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${BROWSER}          Chrome

*** Keywords ***
Login Page
    [Arguments]    ${email}    ${password}   
    Input Text     ${LOGIN.EMAIL}     ${email}
    Input Password     ${LOGIN.PASSWORD}     ${password}
    Click Element    ${LOGIN.REMEMBER_ME}
    Click Button    ${LOGIN.BUTTON_LOGIN}
    Title Should Be   Dashboard / nopCommerce administration      
    Sleep  5s   
Navigate to Catelog
    Click Link   ${DASHBOARD.CATEGOG} 
   
Navigate to Products
    Click Link    ${DASHBOARD.PRODUCTS}
     
Click add new product
    Click Link    ${PRODUCT.ADD_NEW_BUTTON}
    
Should be navigate to add new product 
    Title Should Be    Add a new product / nopCommerce administration
    Sleep  5s   
Check visible button setting and save and Save and Continue Edit
    Element Should Be Visible    ${ADD_NEW_PRODUCT.SETTINGS} 
    Element Should Be Visible    ${ADD_NEW_PRODUCT.SAVE_AND_CONTINUE} 
    Element Should Be Visible    ${ADD_NEW_PRODUCT.SAVE}
    Element Should Be Visible    ${ADD_NEW_PRODUCT.BTN_TOGLE}
Check visible button setting and save and Save and Continue Edit dynamic
...     ${ADD_NEW_PRODUCT.SETTING}    Replace String    ${ADD_NEW_PRODUCT.DYNAMIC}     btnname     Settings
        Should be equal   ${ADD_NEW_PRODUCT.SETTING}    ${ADD_NEW_PRODUCT.SETTINGS}
Navigate to add new product
    Given Login Page    admin@yourstore.com    admin
    And Navigate to Catelog 
    And Navigate to Products
    When Click add new product

Check visible and click togle Basic
    ${ADD_NEW_PRODUCT.SETTING}    Replace String    ${ADD_NEW_PRODUCT.BTN_TOGLE}    advanced    basic
    Sleep    5s
    Element Should Be Visible    ${ADD_NEW_PRODUCT.SETTING}
    Click Element    ${ADD_NEW_PRODUCT.SETTING}
Check Visivisibleble and togle Advanced
    ${ADD_NEW_PRODUCT.SETTING}    Replace String    ${ADD_NEW_PRODUCT.BTN_TOGLE}    basic    advanced    
    Sleep    5s
    Element Should Be Visible    ${ADD_NEW_PRODUCT.SETTING}
    Click Element    ${ADD_NEW_PRODUCT.SETTING}
Check Gift card display 
    ${ADD_NEW_PRODUCT.GIFT_CARD}    Replace String    ${ADD_NEW_PRODUCT.CARDNAME}     giftcard    giftcard    
    Sleep    5s
    Element Should Be Visible    ${ADD_NEW_PRODUCT.GIFT_CARD}
Check Rentale display 
     ${ADD_NEW_PRODUCT.RENTALE}    Replace String    ${ADD_NEW_PRODUCT.CARDNAME}     giftcard    rental    
    Sleep    5s
    Element Should Be Visible    ${ADD_NEW_PRODUCT.RENTALE}
Check downloadable display 
     ${ADD_NEW_PRODUCT.DOWNLOADABLE}    Replace String    ${ADD_NEW_PRODUCT.CARDNAME}     giftcard    downloadable    
    Sleep    5s
    Element Should Be Visible    ${ADD_NEW_PRODUCT.DOWNLOADABLE}

# Add new product
Input short description  
    [Arguments]    ${short_description}
    Element Should Be Visible    ${ADD_NEW_PRODUCT.SHORT_DESCRIPTION}
    Input Text    ${ADD_NEW_PRODUCT.SHORT_DESCRIPTION}     ${short_description}
Input Full description
    [Arguments]    ${Full_description}
    Select Frame     ${ADD_NEW_PRODUCT.IFRAME} 
    Element Should Be Visible    ${ADD_NEW_PRODUCT.FULL_DESCRIPTION}
    Input Text    ${ADD_NEW_PRODUCT.FULL_DESCRIPTION}     ${Full_description}
select value dropdown Categories
    [Arguments]    ${Categories}
    Select From List By Value     ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES}      ${Categories}
    List Selection Should Be   ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES}      ${Categories}
select value dropdown Manufacturers
    [Arguments]    ${Manufacturers}
    Select From List By Value     ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES}     ${Manufacturers}
    List Selection Should Be   ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES}     ${Manufacturers}
Click checkbox Published 
    Select Checkbox    ${ADD_NEW_PRODUCT.CHECKBOX_PUBLISHED}
    Checkbox Should Be Selected    ${ADD_NEW_PRODUCT.CHECKBOX_PUBLISHED}

Input textfield
    [Arguments]  ${field}    ${value}
    ${ADD_NEW_PRODUCT.PRODUCT_NAME}    Replace String    ${ADD_NEW_PRODUCT.PRODUCT_NAME}     _Name_    ${field}    
    Element Should Be Visible     ${ADD_NEW_PRODUCT.PRODUCT_NAME}
    Input Text     ${ADD_NEW_PRODUCT.PRODUCT_NAME}    ${value}
Input Product name
    [Arguments]    ${Product_Name}
    Element Should Be Visible     ${ADD_NEW_PRODUCT.PRODUCT_NAME}
    Input Text     ${ADD_NEW_PRODUCT.PRODUCT_NAME}    ${Product_Name}
Input SKU 
    [Arguments]    ${Full_description}
    Element Should Be Visible    ${ADD_NEW_PRODUCT.SKU}
    Input Text    ${ADD_NEW_PRODUCT.SKU}      ${Full_description}
