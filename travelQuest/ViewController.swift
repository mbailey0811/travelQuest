//
//  ViewController.swift
//  travelQuest
//
//  Created by Christine Bailey on 7/14/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userGreetingHomePage: UILabel!
    @IBOutlet weak var descriptionArea51: UILabel!
    @IBOutlet weak var goToArea51Story: UIButton!
    
    @IBOutlet weak var chooseApocalypseGame: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        userGreetingHomePage.isHidden = true
        chooseApocalypseGame.isHidden = true
        descriptionArea51.isHidden = true
        goToArea51Story.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedSubmitUserName(_ sender: UIButton) {
        if let userName = userNameTextField.text {
        userGreetingHomePage.text = "\(userName), please pick a story from below."
        }
        userGreetingHomePage.isHidden = false
        chooseApocalypseGame.isHidden = false
    }
    
    @IBAction func tappedArea51(_ sender: UIButton) {
        descriptionArea51.isHidden = false
        goToArea51Story.isHidden = false
    }
    
}

