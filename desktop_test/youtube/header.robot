*** Settings ***

Resource    ../../resources/youtube/youtube.robot

*** Test Cases ***

changeTheme
    [Documentation]     Change the theme color
    Open Youtube
    Click Settings Button
    Change Theme Color
    Close Browser