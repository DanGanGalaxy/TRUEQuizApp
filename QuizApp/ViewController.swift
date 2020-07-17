//
//  ViewController.swift
//  QuizApp
//
//  Created by Toluwa Davies on 7/13/20.
//  Copyright © 2020 Toluwa Davies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleView.layer.cornerRadius = circleView.frame.size.height / 2
        print("hi")
        // Do any additional setup after loading the view.
    }

    @IBAction func signInButton(_ sender: Any) {
    }
    
    @IBAction func signUpButton(_ sender: Any) {
    }
    
}

