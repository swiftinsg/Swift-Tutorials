#!/bin/bash

# Build DocC and dump it in a temporary build directory
xcodebuild docbuild -scheme swiftinsg -derivedDataPath tmp/

# Building complete
echo "🛠 build completed"

# Remove the old DocC from web
rm -rf Web/public/

# Move the doccarchive to the Web folder, rename it to public
mv tmp/Build/Products/Debug/swiftinsg.doccarchive/ Web/public/

# Building complete
echo "🕸 updated Web"

# Start clean up
echo "🧼 cleaning up"

# Delete temporary build directory
rm -rf tmp

# We're done!
echo "😴 we're done! time go back to sleep"
