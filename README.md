# Swift Tutorials
## This is not a package, it's just a bunch of tutorials

[![deploy website](https://github.com/swiftinsg/Swift-Tutorials/actions/workflows/main.yml/badge.svg)](https://github.com/swiftinsg/Swift-Tutorials/actions/workflows/main.yml)

This project uses [Apple's DocC (Documentation Compiler)](http://developer.apple.com/documentation/docc/) to create a set of SwiftUI tutorials for students.

## Requirements
- Xcode 13.0 (Beta 5)

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
Don't bother editing the `/Web/Sources` folder as it is auto-generated by running `build.sh`.

There is a [GitHub Action](https://github.com/tinkercademy/Swift-Tutorials/actions/workflows/main.yml) to deploy onto Vercel. If it is on `main`, it should be on production.
 
Run `build.sh` to update the DocC web
```sh
$ sh build.sh
```

#### Errors (and possible solutions)
- `xcodebuild: error: Unknown build action 'docbuild'.`
    - Run `xcode-select --switch /Path/To/Xcode.app`. 
    - Ensure the path leads to Xcode 13.

## Issues
Spot an issue in the tutorial? Use the [issues template](https://github.com/tinkercademy/Swift-Tutorials/issues/new/choose) to submit an issue
