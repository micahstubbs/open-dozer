# Developer Guide

A guide to setting up a local development environment for contributing to Open Dozer.

## Getting Started

create an Apple Developer Account

optionally use your Mac Development Certificate to sign development builds

TODO: add earlier steps

set the default command line tools version 
https://stackoverflow.com/questions/40743713/command-line-tool-error-xcrun-error-unable-to-find-utility-xcodebuild-n

uses the Cocoa package manager Carthage
https://github.com/Carthage/Carthage

```bash
brew install carthage
```

install project dependencies

```bash
cd open-dozer
carthage update

# *** Fetching Sparkle
# *** Fetching LaunchAtLogin
# *** Fetching AXSwift
# *** Fetching MASShortcut
# *** Checking out MASShortcut at "2.4.0"
# *** Checking out AXSwift at "0.2.3"
# *** Checking out LaunchAtLogin at "v2.5.0"
# *** Checking out Sparkle at "1.21.3"
# *** xcodebuild output can be found in /var/folders/z5/t6s4vsk92clf48xxvn72hdqm0000gn/T/carthage-xcodebuild.RYIwd2.log
# *** Downloading Sparkle.framework binary at "Small bugfixes"
# *** Building scheme "AXSwift" in AXSwift.xcodeproj
# *** Building scheme "LaunchAtLogin" in LaunchAtLogin.xcodeproj
# *** Building scheme "MASShortcut" in MASShortcut.xcodeproj
# *** Building scheme "Sparkle" in Sparkle.xcodeproj
```

