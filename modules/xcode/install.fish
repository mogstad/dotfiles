brew install carthage; or brew upgrade carthage
brew install swiftgen; or brew upgrade swiftgen
brew install swiftlint; or brew upgrade swiftlint

defaults write com.apple.dt.xcode DVTTextEditorTrimWhitespaceOnlyLines -bool true
defaults write com.apple.dt.xcode DVTTextIndentTabWidth -int 2
defaults write com.apple.dt.xcode DVTTextIndentWidth -int 2
defaults write com.apple.dt.xcode DVTTextPageGuideLocation -int 2
defaults write com.apple.dt.xcode DVTTextShowLineNumbers -bool true
defaults write com.apple.dt.xcode DVTTextShowPageGuide -bool true
defaults write com.apple.dt.xcode IDESuppressStopTestWarning -bool true
defaults write com.apple.dt.xcode IDESuppressStopExecutionWarning -bool true
defaults write com.apple.dt.xcode IDESourceControlEnableSourceControl_7_1 -bool false
defaults write com.apple.dt.xcode XCFontAndColorCurrentTheme -string "Dusk.xccolortheme"

// nmap,caddy,awscli,ansible,pass