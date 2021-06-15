*** Settings ***
Library     Selenium2Library

Resource    ../../variables/youtube/variable.robot

*** Keywords ***

Open Youtube
    [Documentation]     Open youtube on the browser then maximize the window
    Open Browser    ${URL}     ${Browser}
    Maximize Browser Window
    Wait Until Element Is Visible       ${header}

Search Video
    [Documentation]     Enter text on the search bar, then search for the fist result and open it
    [Arguments]    ${video_name}
    Wait Until Element Is Visible     ${searchBar}
    Input Text      ${searchBar}      ${video_name}
    Wait Until Element Is Visible     ${searchBar_button}
    Click Element        ${searchBar_button}
    Sleep       2s
    Wait Until Element Is Visible     ${searchResult_firstOption}
    Click Element       ${searchResult_firstOption}
    Sleep       3s

Maximize Video
    [Documentation]     Clicks the maximize button on the video player
    Wait Until Element Is Visible       ${videoPage_maximizeButton}
    Click Element       ${videoPage_maximizeButton}

Click Settings Button
    [Documentation]     Clicks the "settings" button on the header
    Wait Until Element Is Visible       ${header_settingsButton}
    Click Element       ${header_settingsButton}
    Wait Until Element Is Visible       ${settings_apparenceButton}

Change Theme Color
    [Documentation]     Change the main color of the theme
    Wait Until Element Is Visible       ${settings_apparenceButton}
    Click Element       ${settings_apparenceButton}
    Wait Until Element Is Visible       ${settings_apparence_darkThemeButton}
    Click Element       ${settings_apparence_darkThemeButton}
    Sleep     2s


