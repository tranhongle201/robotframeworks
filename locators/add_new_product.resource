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

#Add new product Product info
${ADD_NEW_PRODUCT.PRODUCT_NAME}    //input[@id='Name'] 
${ADD_NEW_PRODUCT.SHORT_DESCRIPTION}    //textarea[@id='ShortDescription']
${ADD_NEW_PRODUCT.IFRAME}     //iframe[@id='FullDescription_ifr']
${ADD_NEW_PRODUCT.FULL_DESCRIPTION}    //body[@data-id='FullDescription']/p
${ADD_NEW_PRODUCT.SKU}     (//input[contains(@class,'form-control text-box')])[2]
${ADD_NEW_PRODUCT.INPUT_CATEGORIES}     //label[@id='SelectedCategoryIds_label']/parent::div/../following-sibling::div/*/*/input
${ADD_NEW_PRODUCT.DROPDOWN_LIST_CATEGORIES_OPTION}     css=ul#SelectedCategoryIds_listbox>li:nth-of-type(4)
${ADD_NEW_PRODUCT.VERIFY_CATEGORIES_CHECKED}    //ul[@id='SelectedCategoryIds_taglist']//span[text()='Computers >> Software']
