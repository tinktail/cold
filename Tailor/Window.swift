import AppKit
import Combine

final class Window: NSWindow {
    private var subs = Set<AnyCancellable>()
    
    init() {
        super.init(contentRect: .init(x: 0,
                                      y: 0,
                                      width: NSScreen.main!.frame.width * 0.5,
                                      height: NSScreen.main!.frame.height),
                   styleMask: [.closable, .miniaturizable, .resizable, .titled, .fullSizeContentView],
                   backing: .buffered,
                   defer: false)
        minSize = .init(width: 150, height: 150)
        toolbar = .init()
        isReleasedWhenClosed = false
        setFrameAutosaveName("Window")
        tabbingMode = .disallowed
        titlebarAppearsTransparent = true
        
        let bar = NSTitlebarAccessoryViewController()
        bar.view = NSView()
        bar.layoutAttribute = .top
        addTitlebarAccessoryViewController(bar)
        
        let content = NSVisualEffectView()
        content.state = .active
        content.material = .menu
        content.translatesAutoresizingMaskIntoConstraints = false
        contentView = content
    }
    
    private func place(view: NSView) {
        guard let content = contentView else { return }
        
        content
            .subviews
            .forEach {
                $0.removeFromSuperview()
            }
        
        content.addSubview(view)
        makeFirstResponder(view)

        view.topAnchor.constraint(equalTo: content.safeAreaLayoutGuide.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: content.bottomAnchor).isActive = true
        view.leftAnchor.constraint(equalTo: content.leftAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: content.rightAnchor).isActive = true
    }
}
