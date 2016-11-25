defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain com.apple.trackpad.scaling 3
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true

defaults write com.apple.Safari AlwaysShowTabBar -bool true
defaults write com.apple.Safari SafariGeolocationPermissionPolicy -int 1
defaults write com.apple.Safari SearchProviderIdentifier -string "com.duckduckgo"
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
defaults write com.apple.Safari ShowFavoritesBar -bool false
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Finder

## Don’t warn when changing a filename extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

## Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Dock

## Hide process indicators from the dock
defaults write com.apple.dock show-process-indicators -bool false

## Save screenshots to ~/Screenshots
mkdir -p ~/Screenshots
defaults write com.apple.screencapture location -string "$HOME/Screenshots"


defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
