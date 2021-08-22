# Contributing
Getting up and running and contributing to learn.swiftinsg.org.

## Environment Set-Up
1. Ensure that you have Xcode 13 Beta 5 (or later).
2. Clone the repository 
    ```bash
    git clone https://github.com/swiftinsg/Swift-Tutorials.git
    ```
3. Install requirements required to build this project
    ```bash
    pip3 install -r requirements.txt
    ```
4. If you are not running the release version of Xcode (e.g. running Xcode-beta), or your Xcode is not in the Applications folder, run this. 
    ```bash
    xcode-select --switch /Path/To/Xcode.app
    ```

## Building
### For Release
Build for release if you want to see what the tutorial will look like when deployed onto [learn.swiftinsg.org](https://learn.swiftinsg.org). 
- Important: Do this before pushing your code, otherwise, if merged onto `main`, the changes wouldn't show up on the site.

1. Run `build.sh`
    ```
    sh build.sh
    ```
    What it does
    - Update the authors section of the home page
    - Compile the DocC
    - Replace the old DocC with the new one
    - Removes navigation bar and Frameworks menu from the home page
    - Finally, it cleans up after itself, unlike you.
    
2. Continue only if you see this
    ```
    ** BUILD DOCUMENTATION SUCCEEDED **
    ```
    If something goes wrong, submit an issue [here](https://github.com/swiftinsg/Swift-Tutorials/).
3. Next, preview the DocC tutorials
    ```
    cd Web/
    npm run dev
    ```
4. Go to [localhost:3000](http://localhost:3000) to preview the latest changes.
5. If everything is good, commit and push.

### For Development
Build for development to preview the tutorial while you're still working on it. This uses the 

1. Within Xcode, in the Menubar, `Product → Build Documentation`. Alternatively, use ⌘⇧⌃D (Command-Shift-Control-D).
2. It should open up within your Documentation viewer.
3. Done. That's it.

## Documentation Markup
Here is a documentation markup guide [Markup Guide](markup-guide)
