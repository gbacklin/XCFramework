#!/bin/sh
set -e

FRAMEWORK=$1

echo "Initiaslizing work area..."
# If remnants from a previous build exist, delete them.
if [ -d "./"$FRAMEWORK".xcframework" ]; then
rm -rf "./"$FRAMEWORK".xcframework"
fi
if [ -d "./"$FRAMEWORK"S.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"S.xcarchive"
fi
if [ -d "./"$FRAMEWORK"D.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"D.xcarchive"
fi
if [ -d "./"$FRAMEWORK"WS.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"WS.xcarchive"
fi
if [ -d "./"$FRAMEWORK"W.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"W.xcarchive"
fi
if [ -d "./"$FRAMEWORK"M.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"M.xcarchive"
fi
if [ -d "./"$FRAMEWORK"MC.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"MC.xcarchive"
fi
if [ -d "./"$FRAMEWORK"T.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"T.xcarchive"
fi
if [ -d "./"$FRAMEWORK"TS.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"TS.xcarchive"
fi

echo "Archiving..."
sudo xcode-select -switch /Applications/XcodeBeta/Xcode-beta.app

# iOS
xcodebuild archive -project "$FRAMEWORK".xcodeproj -scheme "$FRAMEWORK" \
    -sdk iphoneos \
    -archivePath "$FRAMEWORK"D.xcarchive SKIP_INSTALL=NO clean
xcodebuild archive -project "$FRAMEWORK".xcodeproj -scheme "$FRAMEWORK" \
    -sdk iphonesimulator \
    -destination "name=iPhone Xʀ" \
    -archivePath "$FRAMEWORK"S.xcarchive SKIP_INSTALL=NO clean

# watchOS
xcodebuild archive -project "$FRAMEWORK".xcodeproj -scheme "$FRAMEWORK" \
    -sdk watchos \
    -destination "name=Apple Watch Series 4 - 44mm" \
    -archivePath "$FRAMEWORK"W.xcarchive SKIP_INSTALL=NO clean
xcodebuild archive -project "$FRAMEWORK".xcodeproj -scheme "$FRAMEWORK" \
    -sdk watchsimulator \
    -destination "name=Apple Watch Series 4 - 44mm" \
    -archivePath "$FRAMEWORK"WS.xcarchive SKIP_INSTALL=NO clean

# macOS
xcodebuild archive -project "$FRAMEWORK".xcodeproj -scheme "$FRAMEWORK" \
    -sdk macosx \
    -archivePath "$FRAMEWORK"M.xcarchive SKIP_INSTALL=NO clean
xcodebuild archive -project "$FRAMEWORK".xcodeproj -scheme "$FRAMEWORK" \
    -destination 'platform=macOS,arch=x86_64,variant=Mac Catalyst' \
    -archivePath "$FRAMEWORK"MC.xcarchive SKIP_INSTALL=NO clean

# tvOS
xcodebuild archive -project "$FRAMEWORK".xcodeproj -scheme "$FRAMEWORK" \
    -sdk appletvos \
    -archivePath "$FRAMEWORK"T.xcarchive SKIP_INSTALL=NO clean
xcodebuild archive -project "$FRAMEWORK".xcodeproj -scheme "$FRAMEWORK" \
    -sdk appletvsimulator \
    -archivePath "$FRAMEWORK"TS.xcarchive SKIP_INSTALL=NO clean

echo "Creating XCFramework..."
xcodebuild -create-xcframework \
    -framework ./"$FRAMEWORK"S.xcarchive/Products/Library/Frameworks/"$FRAMEWORK".framework \
    -framework ./"$FRAMEWORK"D.xcarchive/Products/Library/Frameworks/"$FRAMEWORK".framework \
    -framework ./"$FRAMEWORK"WS.xcarchive/Products/Library/Frameworks/"$FRAMEWORK".framework \
    -framework ./"$FRAMEWORK"W.xcarchive/Products/Library/Frameworks/"$FRAMEWORK".framework \
    -framework ./"$FRAMEWORK"M.xcarchive/Products/Library/Frameworks/"$FRAMEWORK".framework \
    -framework ./"$FRAMEWORK"MC.xcarchive/Products/Library/Frameworks/"$FRAMEWORK".framework \
    -framework ./"$FRAMEWORK"T.xcarchive/Products/Library/Frameworks/"$FRAMEWORK".framework \
    -framework ./"$FRAMEWORK"TS.xcarchive/Products/Library/Frameworks/"$FRAMEWORK".framework \
    -output "$FRAMEWORK".xcframework
sudo xcode-select -switch /Applications/Xcode.app

echo "Cleanup..."
if [ -d "./"$FRAMEWORK"S.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"S.xcarchive"
fi
if [ -d "./"$FRAMEWORK"D.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"D.xcarchive"
fi
if [ -d "./"$FRAMEWORK"WS.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"WS.xcarchive"
fi
if [ -d "./"$FRAMEWORK"W.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"W.xcarchive"
fi
if [ -d "./"$FRAMEWORK"M.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"M.xcarchive"
fi
if [ -d "./"$FRAMEWORK"MC.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"MC.xcarchive"
fi
if [ -d "./"$FRAMEWORK"T.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"T.xcarchive"
fi
if [ -d "./"$FRAMEWORK"TS.xcarchive" ]; then
rm -rf "./"$FRAMEWORK"TS.xcarchive"
fi

echo "Done."