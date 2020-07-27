//
//  LeaderboardViewController.swift
//  QuizApp
//
//  Created by Toluwa Davies on 7/27/20.
//  Copyright © 2020 Toluwa Davies. All rights reserved.
//

import UIKit

class LeaderboardViewController: UIViewController {

    @IBOutlet weak var firstPlace: UILabel!
    @IBOutlet weak var secondPlace: UILabel!
    @IBOutlet weak var thirdPlace: UILabel!
    @IBOutlet weak var fourthPlace: UILabel!
    @IBOutlet weak var fifthPlace: UILabel!
    
    
    override func viewDidLoad() {
        firstPlace.text = "1. \(leaderboardEntries[0].email): \(leaderboardEntries[0].numberCorrect) Correct"
        secondPlace.text = "2. \(leaderboardEntries[1].email): \(leaderboardEntries[1].numberCorrect) Correct"
        thirdPlace.text = "3. \(leaderboardEntries[2].email): \(leaderboardEntries[2].numberCorrect) Correct"
        fourthPlace.text = "4. \(leaderboardEntries[3].email): \(leaderboardEntries[3].numberCorrect) Correct"
        fifthPlace.text = "5. \(leaderboardEntries[4].email): \(leaderboardEntries[4].numberCorrect) Correct"
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

}
