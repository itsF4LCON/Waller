# MDM-Bypass Wallpaper Overlay Waller

Fuck MDM and wallpaper restrictions. Just let me set my own Background.

### Method 1: Quick Download (.zip)
1. Download the latest `.zip` file from the **Releases** tab and extract it.
2. **Add your wallpaper:** Right-click `MyWallpaper.app` > **Show Package Contents**. Navigate to `Contents/MacOS/` and place your image there, named exactly `wallpaper.jpg`.
3. **Bypass Gatekeeper:** Because this app is not digitally signed, macOS will block a normal double-click. **Right-click** `MyWallpaper.app` and select **Open** to run it for the first time.

### Method 2: Build from Source (For Strict MDMs)
If your school blocks apps downloaded from the internet, building it locally bypasses Gatekeeper restrictions entirely.
1. Open this repository folder in **Visual Studio Code**.
2. Press `Cmd + Shift + B` to automatically build `MyWallpaper.app`.
3. Add your `wallpaper.jpg` to the app bundle as described in Method 1.

## Usage
- **Run:** Double-click `MyWallpaper.app` in Finder.
- **Quit:** Press `Option + Command + Escape`, select `MyWallpaper`, and choose **Force Quit**.
