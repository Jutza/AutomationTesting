*** Settings ***
Library     Selenium2Library
Library     String

Resource    ../../variables/amazon/variable.robot

*** Keywords ***

Open Amazon
    [Documentation]  Open amazon web in the chrome browswer and close pop up messages
    Open Browser    ${URL}     ${Browser}
    Maximize Browser Window
    Wait Until Element Is Visible   ${header}
    Sleep    2s
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${popUp_suggestedCountry}
    Run Keyword If    ${present}    Click Element       ${popUp_suggestedCountry_closeButton}
    Sleep       1s
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${navBar_shopInEnglish_button}
    Run Keyword If    ${present}    Set English Language

Set English Language
    [Documentation]     when its true, change the language to English
    Click Element       ${navBar_shopInEnglish_button}
    Wait Until Element Is Visible       ${changeLanguage_englishRadioButton}
    Click Element       ${changeLanguage_englishRadioButton}
    Click Element       ${changeLanguage_saveButton}

Input Text In Search Bar
    [Documentation]  Input text given in the search bar and verify the page result
    [arguments]  ${text}
    Input Text    ${searchBar}    ${text}
    Click Element   ${searchBar_button}
    Title Should Be     Amazon.com : ${text}
    Page Should contain     ${text}

Select First Option On Search Result
    [Documentation]     Click the first option on the search result and verify that the name was the same on both pages
    Wait Until Element Is Visible       ${searchResult_firstOption}
    ${searchResult_title}=  Get Text    ${searchResult_firstOption}
    Click Element       ${searchResult_firstOption}
    Wait Until Element Is Visible       ${itemPage_itemTitle}
    Element Text Should Be   ${itemPage_itemTitle}      ${searchResult_title}

Add To Cart
    [Documentation]     In the item page, click the "Add to cart" button
    Wait Until Element Is Visible       ${itemPage_itemTitle}
    ${item_title}=  Get Text    ${itemPage_itemTitle}
    Wait Until Element Is Visible       ${itemPage_addToCart}
    Click Element       ${itemPage_addToCart}
    Element Text Should Be      ${header_cartItemsCount}      1
    verify added item on cart  ${item_title}

Verify Added item On Cart
    [Documentation]  verify the item just added to the cart by the name of the recomendations
    [Arguments]  ${item_name}
    Wait Until Element Is Visible       ${addedToCart_addedMessage}
    ${sponsoredTitle}=     Replace String     ${addedToCart_sponsoredProductsTitle}       _TITLE_        ${item_name}
    Wait Until Element Is Visible       ${sponsoredTitle}

Select Option On Search Bar Dropdown
    [Documentation]     select the option given on the search bar dropdown
    [Arguments]     ${option}
    Wait Until Element Is Visible   ${searchBar_dropdown}
    Sleep       2s
    Click Element      ${searchBar_dropdown}
    ${dropdown_option}=     Replace String     ${searchBar_dropdownOptions}       _OPTION_        ${option}
    Wait Until Element Is Visible   ${dropdown_option}
    Click Element      ${dropdown_option}

Click On Todays Deals Button
    [Documentation]     clicks the "Today's Deals" option on the main page
    Wait Until Element Is Visible   ${navBar_todaysDeals_button}
    Click Element   ${navBar_todaysDeals_button}
    Wait Until Element Is Visible     ${todaysDeals_title}

Click On Sort By Option
    [Documentation]        Click the "Sort By" dropdown in the search result page and select the option given
    [Arguments]  ${option}
    Wait Until Element Is Visible   ${searchResult_sortBy_dropdown}
    Click Element   ${searchResult_sortBy_dropdown}
    ${dropdown_option}=     Replace String     ${searchResult_sortBy_Option}       _OPTION_        ${option}
    Click Element   ${dropdown_option}

Click Random Department Option
    [Documentation]         Select one random department on the search result page
    Wait Until Element Is Visible   ${filterSection_department_seeMore}
    Click Element   ${filterSection_department_seeMore}
    ${options}=     Get Element Count      ${filterSection_department_options}
    ${random}=    Evaluate    random.randrange(1, ${options})    random
    ${department_option}=     Catenate      ${filterSection_department_options}       [${random}]
    Wait Until Element Is Visible   ${department_option}
    Click Element       ${department_option}





