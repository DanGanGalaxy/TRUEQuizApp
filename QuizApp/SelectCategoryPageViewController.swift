//
//  SelectCategoryPageViewController.swift
//  QuizApp
//
//  Created by Michael Feldmann on 7/13/20.
//  Copyright © 2020 Toluwa Davies. All rights reserved.
//

import UIKit

class SelectCategoryPageViewController: UIViewController {

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
    @IBAction func sportsButtonPressed(_ sender: Any) {
    }
    @IBAction func airpodsButtonPressed(_ sender: Any) {
    }
    @IBAction func chemButtonPressed(_ sender: Any) {
    }
    
    @IBAction func globeButtonPressed(_ sender: Any) {
    }
    @IBAction func foodButtonPressed(_ sender: Any) {
    }
    @IBAction func startQuizButtonPressed(_ sender: Any) {
    }
}
