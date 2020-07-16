//
//  AchievementsFinalViewController.swift
//  travelQuest
//
//  Created by Christine Bailey on 7/14/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class AchievementsFinalViewController: UIViewController {
    
    @IBOutlet weak var probability: UILabel!
    
   // global var sum: Int = 0
    

    @IBAction func car(_ sender: UIButton) {
        sum += 16
    }
    @IBAction func truck(_ sender: UIButton) {
        sum += 19
    }
    @IBAction func c0a(_ sender: UIButton) {
        sum += 6
    }
    @IBAction func c0b(_ sender: UIButton) {
        sum += 12
    }
    @IBAction func c1a(_ sender: UIButton) {
        sum += 7
    }
    @IBAction func c1b(_ sender: UIButton) {
        sum += 19
    }
    @IBAction func c2a(_ sender: UIButton) {
        sum += 2
    }
    @IBAction func c2b(_ sender: UIButton) {
        sum += 16
    }
    @IBAction func c3a(_ sender: UIButton) {
        sum += 1
    }
    @IBAction func c3b(_ sender: UIButton) {
        sum += 20
    }
    func update(){
        self.probability.text = "/(sum)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //hello
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
