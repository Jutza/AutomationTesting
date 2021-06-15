*** Settings ***

Resource    ../../resources/amazon/amazon.robot

*** Test Cases ***
searchOneItemInAllDepartments
    [Documentation]     Search items about the option given, get the first one and added to the cart
    Open Amazon
    Input Text In Search Bar    Star Wars
    Select First Option On Search Result
    Add To Cart
    Sleep       2s
    Close Browser

sortByCustomerReview
    [Documentation]     Search by department dropdown and sort the result by the option given
    Open Amazon
    Select Option On Search Bar Dropdown    Pet Supplies
    Input Text In Search Bar    Dog
    Click On Sort By Option     Avg. Customer Review
    Sleep       2S
    Close Browser

TodaysDealsByDepartment
    [Documentation]     Search on "Today's Deals" and select one random department
    Open Amazon
    Click On todays Deals Button
    Click Random Department Option
    Close Browser




