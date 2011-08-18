About
=====

**NoLastUpgradeCheck** is an Xcode plugin that prevents Xcode 4 from adding or modifying the `LastUpgradeCheck` attribute of the project.pbxproj file.

This behavior is particularly annoying for people working with different versions of Xcode. The topic was discussed on the xcode-users mailing list: [Xcode keeps altering my project.pbxproj files](http://www.cocoabuilder.com/archive/xcode/306543-xcode-keeps-altering-my-project-pbxproj-files.html).

Installation
============

1. Open NoLastUpgradeCheck.xcodeproj
2. Build the project, NoLastUpgradeCheck.xcplugin will be automatically installed into `~/Library/Application Support/Developer/Shared/Xcode/Plug-ins`
3. Quit Xcode
4. Relaunch Xcode
