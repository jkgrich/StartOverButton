//
//  ViewController.swift
//  NavigationController
//
//  Created by Justin Richardson on 2018-02-22.
//  Copyright © 2018 Justin Richardson. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Adding the "Start" right-bar-button to the view
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Start Over",
            style: .plain,
            target: self,
            action: #selector(startOver)
        )
    }
    
    // Function to pop all View Controllers on the stack, except the Root View Controller
    @objc func startOver() {
        if let navigationController = navigationController {
            navigationController.popToRootViewController(animated: true)
        }
    }

    @IBAction func optionOneButton(_ sender: UIButton) {
        print("Segue Button Pressed")
    }
    

}

