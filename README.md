# macOS MDM-Bypass Wallpaper Overlay

A lightweight, native Swift application designed to create a click-through desktop overlay. This app is specifically built to bypass macOS MDM (Mobile Device Management) profiles that lock the system wallpaper and block Terminal access.

By compiling the app directly into a `.app` bundle via Visual Studio Code, it avoids triggering execution blocks on standard shell commands or standalone Unix binaries.

## Features
- **Native AppKit Overlay:** Renders behind your desktop icons but above the locked system wallpaper.
- **Click-Through:** Interacts seamlessly with your desktop; you can click files and drag selections as if the window isn't there.
- **Zero Terminal Required:** Compiles completely within VS Code using native process execution to bypass Screen Time or MDM Terminal restrictions.

## Prerequisites
- A Mac running macOS.
- **Visual Studio Code** installed.

## Setup Instructions

1. **Prepare the Project Folder**
   - Create a folder for the project.
   - Place the `main.swift` file in the root of the folder.
   - Create a `.vscode` directory in the root folder.
   - Inside `.vscode`, create a `tasks.json` file and paste the provided build configuration.

2. **Build the Application**
   - Open the project folder in Visual Studio Code.
   - Press **`Cmd + Shift + B`** (or go to *Terminal > Run Build Task*).
   - VS Code will silently create a complete macOS App Bundle (`MyWallpaper.app`) in your project directory.

3. **Add Your Image**
   - Go to your project folder in **Finder**.
   - Right-click (or Control-click) the newly created **`MyWallpaper.app`** and select **Show Package Contents**.
   - Navigate to `Contents` -> `MacOS`.
   - Place your desired background image in this folder and make sure it is named exactly **`wallpaper.jpg`**. *(Note: If the app cannot find this file, it will default to a dark gray background).*

## Usage
- Double-click **`MyWallpaper.app`** in your standard Finder window to launch the overlay. 

## How to Quit
Because the app runs silently in the background without a menu bar icon, you can stop it using native macOS tools:
- **Force Quit:** Press **`Option + Command + Escape`**, select `MyWallpaper`, and click "Force Quit".
- **Activity Monitor:** Search for `MyWallpaper` in the Activity Monitor and terminate the process.
