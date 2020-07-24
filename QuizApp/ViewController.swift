//
//  ViewController.swift
//  QuizApp
//
//  Created by Toluwa Davies on 7/13/20.
//  Copyright © 2020 Toluwa Davies. All rights reserved.
//

import UIKit
import Firebase

var category1Questions = [Question]()
var category2Questions = [Question]()
var category3Questions = [Question]()
var category4Questions = [Question]()
var category5Questions = [Question]()

class ViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    
    override func viewDidLoad() {
        let db = Firestore.firestore()
        
        let myArray = ["food", "geography", "music", "science", "sports"]
        
        for myString in myArray {
            
            db.collection(myString).getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    for document in querySnapshot!.documents {
                        let documentData = document.data()
                        let a = documentData["a"] as! String
                        let b = documentData["b"] as! String
                        let c = documentData["c"] as! String
                        let d = documentData["d"] as! String
                        let firstAnswer = documentData["answer"] as! NSNumber
                        let answer = firstAnswer.intValue
                        let question = documentData["question"] as! String
                        let myQuestion = Question(questionText: question, answer1: a, answer2: b, answer3: c, answer4: d, correctChoice: answer)
                        if (myString == "food") {
                            category1Questions.append(myQuestion)
                        } else if (myString == "geography") {
                            category2Questions.append(myQuestion)
                        } else if (myString == "music") {
                            category3Questions.append(myQuestion)
                        } else if (myString == "science") {
                            category4Questions.append(myQuestion)
                        } else if (myString == "sports") {
                            category5Questions.append(myQuestion)
                        }
                        print(category1Questions)
                    }
                }
            }
            
        }
        
        
        
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

