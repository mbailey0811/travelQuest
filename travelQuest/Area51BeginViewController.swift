//
//  Area51BeginViewController.swift
//  travelQuest
//
//  Created by Christine Bailey on 7/14/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class Area51BeginViewController: UIViewController {

    @IBOutlet weak var intro1: UILabel!
    @IBOutlet weak var popNYC: UILabel!
    @IBOutlet weak var infonyc: UILabel!
    
    @IBOutlet weak var decision1NYC: UILabel!
    
    @IBOutlet weak var bikeButton: UIButton!
    @IBOutlet weak var sportsCarButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        intro1.layer.masksToBounds = true
        intro1.layer.cornerRadius = 5
        
        popNYC.layer.masksToBounds = true
        popNYC.layer.cornerRadius = 5
        
        infonyc.layer.masksToBounds = true
        infonyc.layer.cornerRadius = 15
        
        decision1NYC.layer.masksToBounds = true
        decision1NYC.layer.cornerRadius = 15
        
        sportsCarButton.layer.masksToBounds = true
        sportsCarButton.layer.cornerRadius = 15
        
        bikeButton.layer.masksToBounds = true
        bikeButton.layer.cornerRadius = 15
        
            assignbackground()
        
          }
    func assignbackground(){
          let background = UIImage(named: "background")
          var imageView : UIImageView!
          imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
          imageView.clipsToBounds = true
          imageView.image = background
          imageView.center = view.center
          view.addSubview(imageView)
          self.view.sendSubviewToBack(imageView)
    

    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sportsCarSegue" {
            let vc = segue.destination as! A51Decision2ViewController
            vc.a51Decision2InfoText = "You ran out of gas, so you must hitchhike. You come across a map and a compass. Which one would you like to take?"
            vc.a51Decision2Op1Text = "Map 🗺"
            vc.a51Decision2Op2Text = "Compass 🧭"
        } else if segue.identifier == "truckSegue" {
            let vc = segue.destination as! A51Decision2ViewController
            vc.a51Decision2InfoText = "You come across a local who says he knows a shortcut. If you want to take the shortcut, you must take him with you. What will you choose?"
            vc.a51Decision2Op1Text = "Stay on the path 🗺"
            vc.a51Decision2Op2Text = "Take the shortcut ⏰"
        }
    }


}

