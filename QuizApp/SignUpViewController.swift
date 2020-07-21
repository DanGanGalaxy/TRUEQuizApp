//
//  SignUpViewController.swift
//  QuizApp
//
//  Created by Toluwa Davies on 7/20/20.
//  Copyright © 2020 Toluwa Davies. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var nameBox: UITextField!
    @IBOutlet weak var emailBox: UITextField!
    @IBOutlet weak var passwordBox: UITextField!
    
    var name = ""
    var email = ""
    var password = ""
    
    @IBAction func typedPassword(_ sender: Any) {
        password = passwordBox.text!
        print(password)
    }
    @IBAction func doneTypingName(_ sender: Any) {
        name = nameBox.text!
        print(name)
    }
    @IBAction func doneTypingEmail(_ sender: Any) {
        email = emailBox.text!
    }
    @IBAction func doneTypingPassword(_ sender: Any) {
    }
    
    var handle = Auth.auth().addStateDidChangeListener { (auth, user) in
      // ...
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        print(email)
        print(password)
        if password != "" && email != "" {
            print("made it!!")
            Auth.auth().createUser(withEmail: email, password: password){ (user, error) in
         if error == nil {
           self.performSegue(withIdentifier: "SelectCategoryPageViewController", sender: self)
                        }
         else{
           let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
           let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
               }
                    }
              }
    }
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
