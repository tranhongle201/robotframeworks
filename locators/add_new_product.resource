*** Variables ***
# Admin Login Page
${LOGIN.EMAIL}            //input[@id="Email"]
${LOGIN.PASSWORD}         //input[@class="password"]
${LOGIN.REMEMBER_ME}    //input[@id="RememberMe"]
${LOGIN.BUTTON_LOGIN}    //button[@type="submit"]

#Dashboard / nopCommerce administration
${DASHBOARD.CATEGOG}    //p[text()[normalize-space()='Catalog']]/..
${DASHBOARD.PRODUCTS}    //p[text()=' Products']/..
${PRODUCT.ADD_NEW_BUTTON}    //div[@class='float-right']/a    

#Add a new product 
${ADD_NEW_PRODUCT.SETTINGS}    //button[contains(.,'Settings')]
${ADD_NEW_PRODUCT.SAVE}    //button[contains(.,'Save')]
${ADD_NEW_PRODUCT.SAVE_AND_CONTINUE}    //button[contains(.,'Save and Continue Edit')]
${ADD_NEW_PRODUCT.BTN_TOGLE}   //body[contains(@class, 'advanced-settings-mode')]//div[@class='onoffswitch']

#Dynamic locator button 
${ADD_NEW_PRODUCT.DYNAMIC}    //button[contains(.,'btnname')]
${ADD_NEW_PRODUCT.CARDNAME}    //div[@data-card-name="product-giftcard"]


${xpath}        //select[@id='SelectedManufacturerIds']/option[text()='Apple']
#Add new product Product info
${ADD_NEW_PRODUCT.PRODUCT_NAME}    //input[@id='_Name_'] 
${ADD_NEW_PRODUCT.SHORT_DESCRIPTION}    //textarea[@id='ShortDescription']
${ADD_NEW_PRODUCT.IFRAME}     //iframe[@id='FullDescription_ifr']
${ADD_NEW_PRODUCT.FULL_DESCRIPTION}    //body[@data-id='FullDescription']/p
${ADD_NEW_PRODUCT.SKU}     (//input[contains(@class,'form-control text-box')])[2]
${ADD_NEW_PRODUCT.INPUT_CATEGORIES}     //label[@id='SelectedCategoryIds_label']/parent::div/../following-sibling::div/*/*/input
${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES}     //label[@id='SelectedCategoryIds_label']/parent::div/../following-sibling::div/*/select
${ADD_NEW_PRODUCT.MANUFACTURERS}     //select[@id='SelectedManufacturerIds']
${ADD_NEW_PRODUCT.CHECKBOX_PUBLISHED}        //input[@id='Published']
${ADD_NEW_PRODUCT.PRODUCT_TAGS}       //div[@class='col-md-9']/ul
${ADD_NEW_PRODUCT.GTIN}    //input[@id='Gtin']
${ADD_NEW_PRODUCT.MANUFACTURER_PART_NUMBER}    //input[@id='ManufacturerPartNumber']
${ADD_NEW_PRODUCT.SHOW_ON_HOME_PAGE}    //input[@id='ShowOnHomepage']
${ADD_NEW_PRODUCT.DISPLAY_ORDER}    //div[contains(@class, 'parent-setting-advanced opened')]
${ADD_NEW_PRODUCT.DISPLAY_ORDER_FIELD}    (//label[text()='Display order']/../../following-sibling::div/span/*/input)[1]
${ADD_NEW_PRODUCT.DROPDOWN_LIST_PRODUCT_TYPE}        //select[@id='ProductTypeId']
${ADD_NEW_PRODUCT.OPTION_DROPDOWN_LIST_PRODUCT_TYPE}    //select[@id='ProductTypeId']/option
${ADD_NEW_PRODUCT.PRODUCT_TEMPLATE}        //select[@id='ProductTypeId']/option
${ADD_NEW_PRODUCT.VISIBLE_INDIVIDUALLY}    //input[@id='VisibleIndividually']
${ADD_NEW_PRODUCT.CUSTOMER_ROLES}    //select[@id='SelectedCustomerRoleIds']
${ADD_NEW_PRODUCT.LIMITED_TO_STORES}        //ul[@id='SelectedStoreIds_taglist']   
${ADD_NEW_PRODUCT.VENDOR}        //select[@id='VendorId']
${ALLOW_CUSTOMER_REVIEWS}               //input[@name='AllowCustomerReviews']
${ADD_NEW_PRODUCT.REQUIRE_OTHER_PRODUCTS}    //input[@id='RequireOtherProducts']
${ADD_NEW_PRODUCT.ALLOW_CUSTOMER_REVIEWS}    //input[@id='AllowCustomerReviews']
${ADD_NEW_PRODUCT.MARK_AS_NEW}    //input[@id='MarkAsNew']
${ADD_NEW_PRODUCT.ADMIN_COMMENT}    //textarea[@id='AdminComment']

#Available start date
${ADD_NEW_PRODUCT.AVAILABLE_START_DATE}    //input[@id='AvailableStartDateTimeUtc']
${ADD_NEW_PRODUCT.AVAILABLE_END_DATE}    //input[@id='AvailableEndDateTimeUtc']

# Calendar icon
${ADD_NEW_PRODUCT.AVAILABLE_END_DATE}    //span[@class='k-widget k-datetimepicker']/span/*/span
