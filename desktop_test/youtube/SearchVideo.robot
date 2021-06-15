*** Settings ***

Resource    ../../resources/youtube/youtube.robot

*** Test Cases ***
playVideoYotube
    [Documentation]     Search the video given in arguments then play the fist video on search result
    Open Youtube
    Search Video    Shakira Loba
    Maximize Video
    Sleep       2s
    Close Browser