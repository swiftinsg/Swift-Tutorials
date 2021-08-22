#!/bin/bash

# Build DocC and dump it in a temporary build directory
xcodebuild docbuild -scheme swiftinsg -derivedDataPath tmp/ -destination 'platform=iOS Simulator,name=iPhone 12'

# Building complete
echo "🛠 build completed"

# Remove the old DocC from web
rm -rf Web/public/

# Move the doccarchive to the Web folder, rename it to public
mv tmp/Build/Products/Debug-iphonesimulator/swiftinsg.doccarchive Web/public/

# Building complete
echo "🕸 updated Web"

# Start clean up
echo "🧼 cleaning up"

# Delete temporary build directory
rm -rf tmp

echo "Remove Nav Bar"
python3 scripts/remove_nav.py

# Update favicon
cp assets/favicon.ico Web/public/
rm Web/public/favicon.svg

# We're done!
echo "😴 we're done! time go back to sleep"

