//
//  Window.swift
//  Window
//
//  Created by Sinuhé Ruedas on 07/12/21.
//

import UIKit


protocol Presentation {
    
}

class Window: UIWindow {
    
    var presenter: Presentation?
    
    override init(windowScene: UIWindowScene) {
        super.init(windowScene: windowScene)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
