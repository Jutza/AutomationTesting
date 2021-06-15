*** Variables ***

### browser to be used ###
${Browser}=     chrome

### Link to be opened ###
${URL}=       https://www.amazon.com/

##### Header #####

${header}=                                 xpath=//div[contains(@id, 'nav-belt')]

# pop up suggested country message #
${popUp_suggestedCountry}=                 xpath=//div[contains(@class, 'glow-toaster-content')]
${popUp_suggestedCountry_closeButton}=     xpath=//span[contains(@class, 'glow-toaster-button-dismiss')]

# Cart #
${header_cartItemsCount}=                  xpath=//span[contains(@id, 'nav-cart-count')]

# Search Bar #
${searchBar}=                              xpath=//input[contains(@id, 'twotabsearchtextbox')]
${searchBar_dropdown}=                     xpath=//div[contains(@id, 'nav-search-dropdown-card')]
${searchBar_dropdownOptions}=              xpath=//select[contains(@class, 'av-search-dropdown')]/option[contains(text(), '_OPTION_')]
${searchBar_button}=                       xpath=//input[contains(@id, 'nav-search-submit-button')]


##### Navigation Bar #####

${navBar_todaysDeals_button}=              xpath=(//div[contains(@id, 'nav-xshop')]/a)[1]
${navBar_shopInEnglish_button}=            xpath=//a[contains(text (), 'Click here to shop in English')]


##### Search Page Result #####

${searchResult_firstOption}=               xpath=(//a[contains(@class, 'a-text-normal')])[1]

# Sort By Dropdown #
${searchResult_sortBy_dropdown}=           xpath=//span[contains(@class, 'a-dropdown-container')]
${searchResult_sortBy_Option}=            xpath=//a[contains(text (), '_OPTION_')]

### Left Side - Filter Section ###
${filterSection_department_seeMore}=       xpath=//span[contains(text (), 'See more Department')]
${filterSection_department_options}=       xpath=(//div[contains(@class, 'a-expander-inline-container')]/span)

# Today's Deals #
${todaysDeals_title}=                      xpath=//b[contains(text (), 'Deals and Promotions')]


##### Item Page #####

${itemPage_itemTitle}=                     xpath=//span[contains(@id, 'productTitle')]
${itemPage_addToCart}=                     xpath=//input[contains(@id, 'add-to-cart-button')]

##### Add To Cart Page Result #####

${addedToCart_addedItemImg}=               xpath=//img[contains(@class, 'sc-product-image a-declarative')]
${addedToCart_addedMessage}=               xpath=//h1[contains(text(), 'Added to Cart')]
${addedToCart_sponsoredProductsTitle}=     xpath=//i[contains(@title, '_TITLE_')]

##### Change language Section #####

${changeLanguage_englishRadioButton}=      xpath=(//span[contains(@class, 'a-radio-label')])[1]
${changeLanguage_saveButton}=              xpath=//input[contains(@class, 'a-button-input')]

