//
//  ResultsViewController.swift
//  QuizApp
//
//  Created by Michael Feldmann on 7/13/20.
//  Copyright © 2020 Toluwa Davies. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var passedOrNotLabel: UILabel!
    @IBOutlet weak var percentCorrectLabel: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    var categoryString = ""
    var numberRightQuestions = 0
    var numberOfQuestions = 0
    var percentQuestions = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        percentQuestions = (Double(numberRightQuestions) / Double(numberOfQuestions)) * 100
        
        percentCorrectLabel.text = String(format: "You got a %.2f", percentQuestions)
        percentCorrectLabel.text = percentCorrectLabel.text! + "%"
        
        if (percentQuestions < 60) {
            passedOrNotLabel.text = "You failed!"
        } else if (percentQuestions < 70) {
            passedOrNotLabel.text = "You got a D"
        } else if (percentQuestions < 80) {
            passedOrNotLabel.text = "You got a C"
        } else if (percentQuestions < 90) {
            passedOrNotLabel.text = "You got a B"
        } else if (percentQuestions < 100) {
            passedOrNotLabel.text = "You got an A"
        } else if (percentQuestions == 100) {
            passedOrNotLabel.text = "You got an A+!!!"
        }
        
        // image stuff
        if (categoryString == "music") {
            categoryImage.image = UIImage(named: "airpods.png")
        } else if (categoryString == "geography") {
            categoryImage.image = UIImage(named: "globe.png")
        } else if (categoryString == "sports") {
            categoryImage.image = UIImage(named: "basketball.png")
        } else if (categoryString == "science") {
            categoryImage.image = UIImage(named: "chem.png")
        } else if (categoryString == "food") {
            categoryImage.image = UIImage(named: "food.png")
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func homeButtonPressed(_ sender: Any) {
    }
}
