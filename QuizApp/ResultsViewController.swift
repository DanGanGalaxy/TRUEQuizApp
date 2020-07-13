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

    @IBAction func homeButtonPressed(_ sender: Any) {
    }
}
