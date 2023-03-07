*** Settings ***
Library    SeleniumLibrary
Library    String
Library    XML
Resource    ../../keywords/ui_common_keywords.resource
Resource    ../../testcase_ui/02_Add_ product/add_new_product_keywords.resource
Resource    ../../locators/add_new_product.resource
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

##Textcase 02
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

##TextCase 03
Input text field Product name         
    [Arguments]     ${product_name_value}
    Element Should Be Visible    ${ADD_NEW_PRODUCT.PRODUCT_NAME}
    Input Text    ${ADD_NEW_PRODUCT.PRODUCT_NAME}    ${product_name_value} 
   
Input text area short description     
    [Arguments]     ${short_description_value}
    Element Should Be Visible    ${ADD_NEW_PRODUCT.SHORT_DESCRIPTION}
    Input Text    ${ADD_NEW_PRODUCT.SHORT_DESCRIPTION}    ${short_description_value} 
Input iframe Full description       
    [Arguments]     ${Full_description_value}
    Select Frame     ${ADD_NEW_PRODUCT.IFRAME}
    Element Should Be Visible    ${ADD_NEW_PRODUCT.FULL_DESCRIPTION}   
    Input Text    ${ADD_NEW_PRODUCT.FULL_DESCRIPTION}    ${Full_description_value} 
    Unselect Frame
Input text field SKU     
    [Arguments]     ${Sku_value}
    Element Should Be Visible    ${ADD_NEW_PRODUCT.SKU}
    Input Text    ${ADD_NEW_PRODUCT.SKU}      ${Sku_value}
    Sleep    5s
input mutiple Categories dropdown list       
    [Arguments]     ${categories_value}
    Element Should Be Visible    ${ADD_NEW_PRODUCT.INPUT_CATEGORIES}
    Click Element    ${ADD_NEW_PRODUCT.INPUT_CATEGORIES} 
    Mouse Over    ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES_OPTION}
    Click Element    ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES_OPTION}
    Sleep     20s
    Element Should Be Visible    ${ADD_NEW_PRODUCT.VERIFY_CATEGORIES_CHECKED}
   # Click element in dropdown list using Javascript    ${categories_value}


Click element in dropdown list using Javascript
    [Arguments]     ${categories_value}
    #Element Should Be Visible      ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES_OPTION}
    Sleep    2s

    #Execute JavaScript    document.evaluate('${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES_OPTION}',document.body,null,9,null).singleNodeValue.click();
    # Execute JavaScript    document.getElementById('${ID}').click()
    #Execute Javascript    document.querySelector(`${Css.locator}`).value = ${Categories_value}
    Execute Javascript    document.querySelector(`${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES_OPTION}`).value = ${categories_value}







# Click Element Using JavaScript Xpath 
#     [Arguments]    ${xpath}
    


# #Input Shipping Information
#     #[Arguments]     ${product_weight}   ${product_length}   ${product_width}    ${product_height}
#     #Execute Javascript    document.querySelector(`${AddNewProductPage.shipWeight}`).value = ${product_weight}
#     #Execute Javascript    document.querySelector(`${AddNewProductPage.shipLength}`).value = ${product_length}
#     #Execute Javascript    document.querySelector(`${AddNewProductPage.shipWidth}`).value = ${product_width}
#     #Execute Javascript    document.querySelector(`${AddNewProductPage.shipHeight}`).value = ${product_height}



# Click Element Using JavaScript Id 
#     [Arguments]    ${ID}
#     [Documentation]
# 	...  Click element using javascript while passing location using id
   

# # Add new product
# Input short description  
#     [Arguments]    ${short_description}
#     Element Should Be Visible    ${ADD_NEW_PRODUCT.SHORT_DESCRIPTION}
#     Input Text    ${ADD_NEW_PRODUCT.SHORT_DESCRIPTION}     ${short_description}
# Input Full description
#     [Arguments]    ${Full_description}
#     Select Frame     ${ADD_NEW_PRODUCT.IFRAME} 
#     Element Should Be Visible    ${ADD_NEW_PRODUCT.FULL_DESCRIPTION}
#     Input Text    ${ADD_NEW_PRODUCT.FULL_DESCRIPTION}     ${Full_description}
#     Unselect Frame 
# select value dropdown Categories
#     [Arguments]    ${Categories}
#     Click Element    ${ADD_NEW_PRODUCT.INPUT_CATEGORIES} 
#     #Mouse Down    xpath=//option[text()='Computers >> Software']
#     #Click Element  xpath=//option[text()='Computers >> Software']
#     Element Should Be Visible    ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES}       
#     Sleep    5s 
#     Select from list by label     ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES}      ${Categories}
#     List Selection Should Be   ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES}      ${Categories}
# select value dropdown Manufacturers
#     #[Arguments]    ${Manufacturers}
#     Click Element    //input[@aria-labelledby='SelectedManufacturerIds_label']
#     #browser.find_element_by_xpath(//a[contains(@class, 'dropdown-toggle select') and contains(text(), '0')]).click();
#     #Wait Until Element Is Visible    //select[@id='SelectedManufacturerIds']/option[text()='Apple']
#     #Click Element Using JavaScript ${xpath}    
#     #List Selection Should Be   ${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES}     ${Manufacturers}



# Click checkbox Published 
#     Element Should Be Visible     ${ADD_NEW_PRODUCT.CHECKBOX_PUBLISHED}
#     Select Checkbox    ${ADD_NEW_PRODUCT.CHECKBOX_PUBLISHED}
#     Checkbox Should Be Selected    ${ADD_NEW_PRODUCT.CHECKBOX_PUBLISHED}
# Input SKU 
#     [Arguments]    ${Full_description}
#     Input Text    ${ADD_NEW_PRODUCT.SKU}      ${Full_description}
#     Sleep    5s
# Input textfield
#     [Arguments]  ${field}    ${value}
#     ${ADD_NEW_PRODUCT.PRODUCT_NAME}    Replace String    ${ADD_NEW_PRODUCT.PRODUCT_NAME}     _Name_    ${field}    
#     #Element Should Be Visible     ${ADD_NEW_PRODUCT.PRODUCT_NAME}
#     Input Text     ${ADD_NEW_PRODUCT.PRODUCT_NAME}    ${value}
#     Sleep    5s
# Input textfield not visible
#     [Arguments]  ${field}    ${value}
#     ${ADD_NEW_PRODUCT.PRODUCT_NAME}    Replace String    ${ADD_NEW_PRODUCT.PRODUCT_NAME}     _Name_    ${field}   
#     Element Should Not Be Visible      ${ADD_NEW_PRODUCT.PRODUCT_NAME} 
#     Input Text     ${ADD_NEW_PRODUCT.PRODUCT_NAME}    ${value}    
#     Sleep    5s
# Input Product name
#     [Arguments]    ${Product_Name}
#     Element Should Be Visible     ${ADD_NEW_PRODUCT.PRODUCT_NAME}
#     Input Text     ${ADD_NEW_PRODUCT.PRODUCT_NAME}    ${Product_Name}
#     Sleep    5s
# Click checkbox visible
#     Element Should Be Visible     ${ADD_NEW_PRODUCT.CHECKBOX_PUBLISHED}
#     Select Checkbox    ${ADD_NEW_PRODUCT.CHECKBOX_PUBLISHED}
#     Sleep    5s 

# Click checkbox not be visible
#     Element Should Be Visible     ${ADD_NEW_PRODUCT.CHECKBOX_PUBLISHED}
#     Select Checkbox    ${ADD_NEW_PRODUCT.CHECKBOX_PUBLISHED}
#     Sleep    5s 
# Input text GTIN 
#     [Arguments]    ${GTIN_VALUE}
#     Input Text    ${ADD_NEW_PRODUCT.GTIN}    ${GTIN_VALUE}
#     Sleep    5s
# Input Product tags
#     [Arguments]     ${PRODUCT_TAGS_VALUE}  
#     Element Should Be Visible     ${ADD_NEW_PRODUCT.PRODUCT_TAGS}
#     Input Text    ${ADD_NEW_PRODUCT.PRODUCT_TAGS}    ${PRODUCT_TAGS_VALUE}
#     Sleep    5s
# Click checkbox Show on home page
#     [Arguments] 
#     Element Should Be Visible     ${ADD_NEW_PRODUCT.SHOW_ON_HOME_PAGE} 
#     Select Checkbox    ${ADD_NEW_PRODUCT.SHOW_ON_HOME_PAGE}    
#     Sleep    5s
# Click checkbox Show on home page and verify order Display 

#     Element Should Not Be Visible  ${ADD_NEW_PRODUCT.DISPLAY_ORDER}
#     Click checkbox Show on home page
#     Scroll Element Into View    ${ADD_NEW_PRODUCT.DISPLAY_ORDER}
#     Element Should Be Visible    ${ADD_NEW_PRODUCT.DISPLAY_ORDER}
# Input order Display
#     [Arguments]    ${ORDER_DISPLAY_VALUE}
#     Element Should Be Visible    ${ADD_NEW_PRODUCT.DISPLAY_ORDER_FIELD}
#     Input Text    ${ADD_NEW_PRODUCT.DISPLAY_ORDER_FIELD}     ${ORDER_DISPLAY_VALUE}
#     Sleep    5s
# Input Manufacturer part number
#     [Arguments]    ${MANUFACTURER_PART_NUMBER_VALUE}
#     Element Should Be Visible   ${ADD_NEW_PRODUCT.MANUFACTURER_PART_NUMBER}
#     Sleep    5s
#     Input Text    ${ADD_NEW_PRODUCT.MANUFACTURER_PART_NUMBER}    ${MANUFACTURER_PART_NUMBER_VALUE}
# Select Product type 
#     [Arguments]     ${product_Type_value} 
#     Select From List By Label     ${ADD_NEW_PRODUCT.DROPDOWN_LIST_PRODUCT_TYPE}     ${product_Type_value}
# Select Vendor value
#     [Arguments]     ${vendor_value} 
#      Element Should Be Visible    ${ADD_NEW_PRODUCT.VENDOR}
#     Select From List By Label     ${ADD_NEW_PRODUCT.VENDOR}      ${vendor_value}
# Select checkbox Allow customer reviews
#     Element Should Be Visible    ${ALLOW_CUSTOMER_REVIEWS}
#     Select Checkbox    ${ALLOW_CUSTOMER_REVIEWS}     
# Select checkbox Mark as new
#     Element Should Be Visible    ${ADD_NEW_PRODUCT.MARK_AS_NEW}
#     Select Checkbox    ${ADD_NEW_PRODUCT.MARK_AS_NEW}       
