//
//  QuestionPageViewController.swift
//  QuizApp
//
//  Created by Toluwa Davies on 7/21/20.
//  Copyright © 2020 Toluwa Davies. All rights reserved.
//

import UIKit

class QuestionPageViewController: UIViewController {
    
    var correctAnswer = 0
    var questions: [Question] = []
    var currentQuestion = 0
    var correctNumQuestions = 0
    var userPicked = 1
    
    @IBOutlet weak var answer1Text: UIButton!
    @IBOutlet weak var answer2Text: UIButton!
    @IBOutlet weak var answer3Text: UIButton!
    @IBOutlet weak var answer4Text: UIButton!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var nextSubmitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionText.text = questions[currentQuestion].questionText
        answer1Text.setTitle(questions[currentQuestion].answer1, for: .normal)
        answer2Text.setTitle(questions[currentQuestion].answer2, for: .normal)
        answer3Text.setTitle(questions[currentQuestion].answer3, for: .normal)
        answer4Text.setTitle(questions[currentQuestion].answer4, for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func answer1Button(_ sender: Any) {
        userPicked = 1
    }
    @IBAction func answer2Button(_ sender: Any) {
        userPicked = 2
    }
    @IBAction func answer3Button(_ sender: Any) {
        userPicked = 3
    }
    @IBAction func answer4Button(_ sender: Any) {
        userPicked = 4
    }
    
    @IBAction func submitButton(_ sender: Any) {
        currentQuestion += 1
        checkAnswer()
        if currentQuestion == questions.count {
            performSegue(withIdentifier: "goToResults", sender: nil)
        } else if currentQuestion == questions.count - 1 {
            nextSubmitButton.setTitle("SUBMIT", for: .normal)
        } else if currentQuestion < questions.count {
            questionText.text = questions[currentQuestion].questionText
            answer1Text.setTitle(questions[currentQuestion].answer1, for: .normal)
            answer2Text.setTitle(questions[currentQuestion].answer2, for: .normal)
            answer3Text.setTitle(questions[currentQuestion].answer3, for: .normal)
            answer4Text.setTitle(questions[currentQuestion].answer4, for: .normal)
        }
    }
    
    func checkAnswer() {
        correctAnswer = questions[currentQuestion].correctChoice
        if correctAnswer == userPicked {
            correctNumQuestions += 1
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
