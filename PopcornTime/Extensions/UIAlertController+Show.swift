

import Foundation
import UIKit.UIAlertController

private var window: UIWindow!

extension UIAlertController {
    
    func show(animated flag: Bool, completion: (() -> Void)? = nil) {
        window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UIViewController()
        window.windowLevel = UIWindow.Level.alert
        window.makeKeyAndVisible()
        window.tintColor = .app
        window.rootViewController!.present(self, animated: flag, completion: completion)
    }
    
    open override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        window = nil
    }
}
