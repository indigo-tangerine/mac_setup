#!/bin/bash
###############################################################################
# General UI/UX                                                               #
###############################################################################

echo "Disable auto capitalisation"
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

echo "Disable automatic period substitution as it’s annoying when typing code"
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false


# echo "Save to disk (not to iCloud) by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# echo "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# echo "Disable the “Are you sure you want to open this application?” dialog"
# defaults write com.apple.LaunchServices LSQuarantine -bool false

# echo "Disable Resume system-wide"
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# echo "Restart automatically if the computer freezes"
# sudo systemsetup -setrestartfreeze on

# echo "Disable Notification Center and remove the menu bar icon"
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# echo "Disable smart quotes and dashes as they’re annoying when typing code"
# defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
# defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################
echo "Configuring input devices"
echo "Disable "natural" scroll"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "Trackpad: enable tap to click for this user and for the login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Increase sound quality for Bluetooth headphones/headsets"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

echo "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Use scroll gesture with the Ctrl (^) modifier key to zoom"
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

echo "Follow the keyboard focus while zoomed in"
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

echo "Disable press-and-hold for keys in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

echo "Automatically illuminate built-in MacBook keyboard in low light"
defaults write com.apple.BezelServices kDim -bool true

echo "Turn off keyboard illumination when computer is not used for 5 minutes"
defaults write com.apple.BezelServices kDimTime -int 300

echo "Setting language and text formats to UK"
# defaults write NSGlobalDomain AppleLanguages -array "en" "nl"
# defaults write NSGlobalDomain AppleLocale -string "en_GB@currency=GBP"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

echo "Setting timezone to Amsterdam"
sudo systemsetup -settimezone "Europe/Amsterdam" > /dev/null

# Disable auto-correct
#defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false


###############################################################################
# Screen                                                                      #
###############################################################################
echo "Setting screen configurations"
echo "Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "Save screenshots to the desktop"
mkdir -p "${HOME}/Screenshots"
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"

echo "Save screenshots in PNG format"
#  other options: BMP, GIF, JPG, PDF, TIFF
defaults write com.apple.screencapture type -string "png"

echo "Disable shadow in screenshots"
defaults write com.apple.screencapture disable-shadow -bool true

echo "Enable subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2

echo "Remove slow animations when holding shift"
defaults write NSGlobalDomain FXEnableSlowAnimation -bool false

###############################################################################
# Finder                                                                      #
###############################################################################
echo "Setting Finder configuration"
echo "Allow quitting via ⌘ + Q; doing so will also hide desktop icons"
defaults write com.apple.finder QuitMenuItem -bool true

echo "Show hidden files by default"
defaults write com.apple.finder AppleShowAllFiles -bool true

echo "Show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Show path bar"
defaults write com.apple.finder ShowPathbar -bool true

echo "Allow text selection in Quick Look"
defaults write com.apple.finder QLEnableTextSelection -bool true
killall Finder
# Display full POSIX path as Finder window title
#defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "Keep folders on top when sorting by name"
defaults write com.apple.finder _FXSortFoldersFirst -bool true

echo "Search the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Avoid creating .DS_Store files on network or USB volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

echo "Disable disk image verification"
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

echo "Use AirDrop over every interface."
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

echo "Always open everything in Finder's list view."
# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "Disable the warning before emptying the Trash"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

###############################################################################
# Dock                                                                        #
###############################################################################
echo "Setting Dock configuration"
echo "Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true

# Automatically hide and show the Dock
#defaults write com.apple.dock autohide -bool true

echo "Make Dock icons of hidden applications translucent"
defaults write com.apple.dock showhidden -bool true

#echo "Speed up dock show"
#defaults write com.apple.Dock autohide-delay -float 0

echo "Minimise in application"
defaults write com.apple.dock minimize-to-application -bool true

###############################################################################
# Dashboard                                                                   #
###############################################################################

echo "Disable Dashboard"
defaults write com.apple.dashboard mcx-disabled -bool true

echo "Don’t show Dashboard as a Space"
defaults write com.apple.dock dashboard-in-overlay -bool true

###############################################################################
# Safari & WebKit                                                             #
###############################################################################
echo "Configuring Safari"
echo "Privacy: don’t send search queries to Apple"
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

echo "Press Tab to highlight each item on a web page"
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true

echo "Show the full URL in the address bar (note: this still hides the scheme)"
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

echo "Set Safari’s home page to `about:blank` for faster loading"
defaults write com.apple.Safari HomePage -string "about:blank"

echo "Prevent Safari from opening ‘safe’ files automatically after downloading"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

echo "Allow hitting the Backspace key to go to the previous page in history"
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

echo "Hide Safari’s bookmarks bar by default"
defaults write com.apple.Safari ShowFavoritesBar -bool false

echo "Disable Safari’s thumbnail cache for History and Top Sites"
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

echo "Hide Safari’s sidebar in Top Sites"
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

echo "Remove useless icons from Safari’s bookmarks bar"
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

echo "Allow hitting the Backspace key to go to the previous page in history"
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

echo "Enable the Develop menu, the Web Inspector, and the debug menu in Safari"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

echo "Add a context menu item for showing the Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

###############################################################################
# Mail                                                                        #
###############################################################################
# echo "Configuring Apple Mail"

# echo "Display emails in threaded mode"
# defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" - string "yes"

# echo "Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app"
# defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# echo "Disable inline attachments (just show the icons)"
# defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Disable automatic spell checking
#defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

# echo "Disable sound for incoming mail"
# defaults write com.apple.mail MailSound -string ""

# echo "Disable sound for other mail actions"
# defaults write com.apple.mail PlayMailSounds -bool false

# echo "Mark all messages as read when opening a conversation"
# defaults write com.apple.mail ConversationViewMarkAllAsRead -bool true

###############################################################################
# Spotlight                                                                   #
###############################################################################
echo "Configuring Spotlight search"
# Hide Spotlight tray-icon (and subsequent helper)
# sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
# Disable Spotlight indexing for any volume that gets mounted and has not yet
# been indexed before.
# Use `sudo mdutil -i off "/Volumes/foo"` to stop indexing any volume.
sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes"

echo "Changing indexing order and disable some file types"
defaults write com.apple.spotlight orderedItems -array \
	'{"enabled" = 1;"name" = "APPLICATIONS";}' \
	'{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
	'{"enabled" = 1;"name" = "DIRECTORIES";}' \
	'{"enabled" = 1;"name" = "CONTACT";}' \
	'{"enabled" = 1;"name" = "DOCUMENTS";}' \
	'{"enabled" = 1;"name" = "PDF";}' \
	'{"enabled" = 0;"name" = "FONTS";}' \
	'{"enabled" = 0;"name" = "MESSAGES";}' \
	'{"enabled" = 0;"name" = "EVENT_TODO";}' \
	'{"enabled" = 0;"name" = "IMAGES";}' \
	'{"enabled" = 0;"name" = "BOOKMARKS";}' \
	'{"enabled" = 0;"name" = "MUSIC";}' \
	'{"enabled" = 0;"name" = "MOVIES";}' \
	'{"enabled" = 0;"name" = "PRESENTATIONS";}' \
	'{"enabled" = 0;"name" = "SPREADSHEETS";}' \
	'{"enabled" = 0;"name" = "SOURCE";}'

echo "Rebuild spotlight indexes"
# Load new settings before rebuilding the index
killall mds > /dev/null 2>&1

# Make sure indexing is enabled for the main volume
sudo mdutil -i on / > /dev/null

# Rebuild the index from scratch
sudo mdutil -E / > /dev/null

###############################################################################
# Terminal                                                                    #
###############################################################################
echo "Configuring Terminal"
echo "Only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4

# Use "Pro" theme (black background color)
defaults write com.apple.terminal "Default Window Settings" -string "Pro"
defaults write com.apple.terminal "Startup Window Settings" -string "Pro"

echo "Disable audible and visual bells"
defaults write com.apple.terminal "Bell" -bool false
defaults write com.apple.terminal "VisualBell" -bool false

echo "Disable the annoying line marks"
defaults write com.apple.Terminal ShowLineMarks -int 0

###############################################################################
# Activity Monitor                                                            #
###############################################################################
echo "Configuring the Activity Monitor"
# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

###############################################################################
# Mac App Store                                                               #
###############################################################################
echo "Configuring AppStore"
# Enable the WebKit Developer Tools in the Mac App Store
#defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Enable Debug Menu in the Mac App Store
#defaults write com.apple.appstore ShowDebugMenu -bool true

echo "Enable the automatic update check"
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

echo "Check for software updates daily, not just once per week"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

echo "Download newly available updates in background"
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
##defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

echo "Enable **app** auto-update"
defaults write com.apple.commerce AutoUpdate -bool true

echo "Prevent auto-reboot on macOS updates"
defaults write com.apple.commerce AutoUpdateRestartRequired -bool false

# advanced disk utils
write com.apple.DiskUtility advanced-image-options 1

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Address Book" "Calendar" "Contacts" "Dock" "Finder" "Mail" "Safari" "SystemUIServer" "iCal"; do
  killall "${app}" &> /dev/null
done