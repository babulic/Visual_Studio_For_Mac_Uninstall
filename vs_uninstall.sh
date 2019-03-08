#!/bin/bash
# Complete uninstall Microsoft Visual Studio (Xamarin) including Mono and Microsoft NuGet traces:
 
# Uninstall Xamarin Studio
echo "Uninstalling Xamarin Studio, Profiler, Workbooks ..."

sudo rm -rf "/Applications/Xamarin Studio.app"
sudo rm -rf "/Applications/Xamarin Profiler.app"
sudo rm -rf "/Applications/Xamarin Workbooks.app"
sudo rm -rf ~/Library/Caches/XamarinStudio-*
sudo rm -rf ~/Library/Logs/XamarinStudio-*
sudo rm -rf ~/Library/Preferences/XamarinStudio-*
sudo rm -rf ~/Library/Preferences/Xamarin/
sudo rm -rf ~/Library/XamarinStudio-*
sudo rm -rf ~/Library/Caches/Xamarin
sudo rm -rf ~/Library/Caches/VisualStudio
sudo rm -rf ~/Library/Developer/Xamarin
sudo rm -rf ~/Library/Developer/XamarinStudio
sudo rm -rf ~/Library/Logs/Xamarin
sudo rm -rf ~/Library/Preferences/Xamarin
sudo rm -rf ~/Library/Xamarin
sudo rm -rf ~/Library/XamarinStudio-*
sudo rm -rf ~/Library/Application\ Support/XamarinStudio-*
sudo rm -rf ~/.share/Xamarin
sudo rm -rf ~/.local/share/Xamarin
sudo rm -f /private/var/db/receipts/com.xamarin.*
sudo rm -f /private/var/db/receipts/xamarin.*


echo "Uninstalling Visual Studio ..."

sudo rm -rf "/Applications/Visual Studio.app"
sudo rm -rf ~/Library/Caches/VisualStudio
sudo rm -rf ~/Library/Preferences/VisualStudio
sudo rm -rf "~/Library/Preferences/Visual Studio"
sudo rm -rf ~/Library/Logs/VisualStudio
sudo rm -rf ~/Library/VisualStudio
sudo rm -rf ~/Library/Developer/VisualStudio
sudo rm -rf ~/Library/Application\ Support/VisualStudio
sudo rm -rf ~/.templateengine/Visual\ Studio


# Uninstall Mono MDK
# You will also want to make sure that there are no other dependencies on Mono
echo "Uninstalling Mono MDK ..."

sudo rm -rf /Library/Frameworks/Mono.framework
sudo pkgutil --forget com.xamarin.mono-MDK.pkg
sudo rm -rf /etc/paths.d/mono-commands
sudo rm -rf ~/.local/share/MonoForAndroid
sudo rm -rf ~/.config/.mono
sudo rm -rf ~/.android
 

# Uninstall Xamarin.Android
echo "Uninstalling Xamarin.Android ..."

sudo rm -rf /Developer/MonoDroid
sudo rm -rf /Library/Frameworks/Xamarin.Android.framework
sudo pkgutil --forget com.xamarin.android.pkg
sudo rm -rf ~/Library/MonoAndroid
 

# Uninstall Xamarin.iOS
echo "Uninstalling Xamarin.iOS ..."

sudo rm -rf ~/Library/MonoTouch
sudo rm -rf /Library/Frameworks/Xamarin.iOS.framework
sudo rm -rf /Developer/MonoTouch
sudo rm -rf /Developer/MonoAndroid
sudo pkgutil --forget com.xamarin.monotouch.pkg
sudo pkgutil --forget com.xamarin.xamarin-ios-build-host.pkg
 

## To Uninstall the Xamarin Build Host
echo "Uninstalling Xamarin.iOS Build Host ..."

sudo rm -rf "/Applications/Xamarin.iOS Build Host.app"
 

## To unload and remove the Xamarin Build Host launchd job
echo "Unloading and removing the Xamarin Build Host launchd job ..."

launchctl unload /Library/LaunchAgents/com.xamarin.mtvs.buildserver.plist
sudo rm -f /Library/LaunchAgents/com.xamarin.mtvs.buildserver.plist
 

# Uninstall Xamarin.Mac
echo "Uninstalling Xamarin.Mac ..."

sudo rm -rf /Library/Frameworks/Xamarin.Mac.framework
sudo rm -rf ~/Library/Xamarin.Mac
sudo rm -rf /Library/Frameworks/Xamarin.Interactive.framework


# Uninstall Xamarin Installer
echo "Uninstalling Xamarin Installer ..."

sudo rm -rf ~/Library/Caches/XamarinInstaller/
sudo rm -rf ~/Library/Logs/XamarinInstaller/
sudo rm -rf ~/Library/Preferences/Xamarin/


# Uninstall the Visual Studio Installer
echo "Uninstalling the Visual Studio Installer ..."

rm -rf ~/Library/Caches/VisualStudioInstaller/
rm -rf ~/Library/Logs/VisualStudioInstaller/
rm -rf "~/Library/Preferences/Visual Studio/"


# Uninstall Microsoft NuGet
echo "Uninstalling Microsoft NuGet ..."

sudo rm -rf ~/.local/share/NuGet
sudo rm -rf ~/.config/NuGet
sudo rm -rf ~/.config/.NuGet
sudo rm -rf ~/.NuGet


# Uninstall traces of visual studio code
echo "Uninstalling Visual Studio Code ..."

sudo rm -rf ~/.vscode
sudo rm -rf "/Applications/Visual Studio Code.app"
sudo rm -fr ~/Library/Preferences/com.microsoft.VSCode.helper.plist 
sudo rm -fr ~/Library/Preferences/com.microsoft.VSCode.plist 
sudo rm -fr ~/Library/Caches/com.microsoft.VSCode
sudo rm -fr ~/Library/Caches/com.microsoft.VSCode.ShipIt/
sudo rm -fr ~/Library/Application\ Support/Code/
sudo rm -fr ~/Library/Saved\ Application\ State/com.microsoft.VSCode.savedState/
