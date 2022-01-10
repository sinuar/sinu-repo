//
//  FirstView.swift
//  AnAlert
//
//  Created by Sinuhé Ruedas on 21/12/21.
//

import UIKit

class FirstView: UIViewController {

    @IBOutlet var firstButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        firstButton.backgroundColor = .link
        firstButton.setTitleColor(.white, for: .normal)
        firstButton.setTitle("Show Alerta", for: .normal)
        firstButton.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
    }
    
    @objc func tapOnButton() {
        let viewController: UIViewController = CustomAlert()
        self.present(viewController, animated: true, completion: nil)
//        let story = UIStoryboard(name: "CustomAlert", bundle: nil)
//        let controller = story.instantiateViewController(withIdentifier: "CustomAlert")
//        self.present(controller, animated: true, completion: nil)
    }
    
//    @objc func tapOnButtonForNavigation() {
//        let story = UIStoryboard(name: "Main", bundle: nil)
//        let controller = story.instantiateViewController(withIdentifier: "") as! CustomAlert
//        let navigation = UINavigationController(rootViewController: controller)
//        self.view.addSubview(navigation.view)
//        self.addChild(navigation)
//        navigation.didMove(toParent: self)
//    }
    
    
//    @IBAction func didTapButton() {
        
//    }
   
}

