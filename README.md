# Swift Tutorials
## This is not a package, it's just a bunch of tutorials

This project uses [Apple's DocC (Documentation Compiler)](http://developer.apple.com/documentation/docc/) to create a set of SwiftUI tutorials for students.

## Requirements
- Xcode 13.0 (Beta 1)

## Creating DocC
1. Open the `Package.swift` file
2. In the menu bar, Product → Build Documentation
    - Alternatively, if you have the dexterity for it, use ⌘⌃⇧D (Command-Control-Shift-D)
3. The tutorials should open up in the Documentation viewer

## DocC on Web
Thanks [Ryan The](https://github.com/theboi) for helping with the web set up.

### Building
1. Run `npm i` in the `Web` folder
2. To run it locally, run `npm run dev`
3. Open [http://localhost:3000/](http://localhost:3000/) with your browser to see the results.

### Updating DocC
1. In Xcode, right click on swiftinsg documentation item and press Export 
2. Delete the `Public` folder (it's at `/Web/Public`)
3. Add the `.doccarchive` file into the `Web` directory
4. Rename it to Public (removing the extension, thereby making it a folder).
    - `swiftinsg.doccarchive` → `Public`
