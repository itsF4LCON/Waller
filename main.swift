import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        guard let screen = NSScreen.main else { return }

        window = NSWindow(
            contentRect: screen.frame,
            styleMask: .borderless,
            backing: .buffered,
            defer: false
        )

        window.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(.desktopWindow)))
        window.ignoresMouseEvents = true
        
        window.collectionBehavior = [.canJoinAllSpaces, .stationary, .ignoresCycle]

        let exePath = URL(fileURLWithPath: CommandLine.arguments[0]).deletingLastPathComponent()
        let imageURL = exePath.appendingPathComponent("wallpaper.jpg")

        let imageView = NSImageView(frame: screen.frame)
        imageView.imageScaling = .scaleAxesIndependently

        if let image = NSImage(contentsOf: imageURL) {
            imageView.image = image
            window.contentView = imageView
        } else {
            window.backgroundColor = NSColor.darkGray
        }

        window.makeKeyAndOrderFront(nil)
    }
}


let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate
app.run()