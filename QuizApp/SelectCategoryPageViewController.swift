//
//  SelectCategoryPageViewController.swift
//  QuizApp
//
//  Created by Michael Feldmann on 7/13/20.
//  Copyright © 2020 Toluwa Davies. All rights reserved.
//

import UIKit

class SelectCategoryPageViewController: UIViewController {
    
    var selectedCategory = ""
    
    @IBOutlet weak var sportsButton: UIButton!
    @IBOutlet weak var chemButton: UIButton!
    @IBOutlet weak var globeButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var airpodsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    func setColorOfStuff (categorySelected: String) {
        
        sportsButton.backgroundColor = UIColor.white
        chemButton.backgroundColor = UIColor.white
        globeButton.backgroundColor = UIColor.white
        foodButton.backgroundColor = UIColor.white
        airpodsButton.backgroundColor = UIColor.white
        
        if (categorySelected == "sports") {
            sportsButton.backgroundColor = UIColor.systemTeal
        } else if (categorySelected == "music") {
            airpodsButton.backgroundColor = UIColor.systemTeal
        } else if (categorySelected == "science") {
            chemButton.backgroundColor = UIColor.systemTeal
        } else if (categorySelected == "geography") {
            globeButton.backgroundColor = UIColor.systemTeal
        } else if (categorySelected == "food") {
            foodButton.backgroundColor = UIColor.systemTeal
        }
        
    }
    
    @IBAction func sportsButtonPressed(_ sender: Any) {
        selectedCategory = "sports"
        setColorOfStuff(categorySelected: selectedCategory)
        
    }
    @IBAction func airpodsButtonPressed(_ sender: Any) {
        selectedCategory = "music"
        setColorOfStuff(categorySelected: selectedCategory)
        
    }
    @IBAction func chemButtonPressed(_ sender: Any) {
        selectedCategory = "science"
        setColorOfStuff(categorySelected: selectedCategory)
    }
    
    @IBAction func globeButtonPressed(_ sender: Any) {
        selectedCategory = "geography"
        setColorOfStuff(categorySelected: selectedCategory)
    }
    @IBAction func foodButtonPressed(_ sender: Any) {
        selectedCategory = "food"
        setColorOfStuff(categorySelected: selectedCategory)
    }
    @IBAction func startQuizButtonPressed(_ sender: Any) {
        if (selectedCategory != "") {
            performSegue(withIdentifier: "coolSegue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "coolSegue" {
            let newViewController = segue.destination as! QuestionPageViewController
            //"food", "geography", "music", "science", "sports"
            if (selectedCategory == "food") {
                newViewController.questions = category1Questions
            } else if (selectedCategory == "geography") {
                newViewController.questions = category2Questions
            } else if (selectedCategory == "music") {
                newViewController.questions = category3Questions
            } else if (selectedCategory == "science") {
                newViewController.questions = category4Questions
            } else if (selectedCategory == "sports") {
                newViewController.questions = category5Questions
            }
            newViewController.category = selectedCategory
        }
    }
}
