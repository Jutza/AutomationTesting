*** Variables ***

${URL}=       https://www.youtube.com/
${Browser}=     chrome

##### Header #####

${header}=                                   xpath=//div[contains(@id, 'masthead-container')]
${header_settingsButton}=                    xpath=(//a[contains(@class, 'ytd-topbar-menu-button-renderer')])[2]

# Settings Section #
${settings_apparenceButton}=                 xpath=//ytd-toggle-theme-compact-link-renderer
${settings_apparence_darkThemeButton}=       xpath=(//div[contains(@id, 'primary-text-container')])[11]

# Search Bar #
${searchBar}=                                xpath=//input[contains(@id, 'search')]
${searchBar_button}=                         xpath=//button[contains(@id, 'search-icon-legacy')]

##### Search Result #####
${searchResult_firstOption}=                 xpath=//ytd-video-renderer[contains(@class, 'ytd-item-section-renderer')]

##### Video Page #####
${videoPage_maximizeButton}=                 xpath=//button[contains(@class, 'ytp-fullscreen-button')]



