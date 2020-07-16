//
//  A51Decision2ViewController.swift
//  travelQuest
//
//  Created by Christine Bailey on 7/14/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51Decision2ViewController: UIViewController {
    
    
    @IBOutlet weak var kansasPop: UILabel!
    
    @IBOutlet weak var welcomeKansas: UILabel!
    
    @IBOutlet weak var a51Decision2Info: UILabel!
    
    @IBOutlet weak var a51decision2Op1: UIButton!
    var a51Decision2Op1Text : String!
    var a51Decision2InfoText : String!
    @IBOutlet weak var a51Decision2Op2: UIButton!
    var a51Decision2Op2Text : String!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        assignbackground()
        self.a51Decision2Info.text = self.a51Decision2InfoText
        self.a51decision2Op1.setTitle(self.a51Decision2Op1Text, for: .normal)
        self.a51Decision2Op2.setTitle(self.a51Decision2Op2Text, for: .normal)
        kansasPop.layer.masksToBounds = true
        kansasPop.layer.cornerRadius = 5
        
        welcomeKansas.layer.masksToBounds = true
        welcomeKansas.layer.cornerRadius = 5
        
        a51Decision2Info.layer.masksToBounds = true
        a51Decision2Info.layer.cornerRadius = 15
        
        a51decision2Op1.layer.masksToBounds = true
        a51decision2Op1.layer.cornerRadius = 15
        
        a51Decision2Op2.layer.masksToBounds = true
        a51Decision2Op2.layer.cornerRadius = 15
    }
    //hello
    
    
    func assignbackground(){
      let background = UIImage(named: "background2")
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
        if segue.identifier == "lancasterOp1Segue" && a51Decision2Op1Text == "Stay on the path 🗺" {
            
            let vc = segue.destination as! A51Decision3ViewController
            vc.a51KansasInfoText = "You finally made it to Kansas. You're halfway across the country! Your truck still has gas, so would you like to keep going or stop and talk to locals?"
            vc.a51KansasOp1Text = "Stop to Talk 💬"
            vc.a51KansasOp2Text = "Keep Driving 🚛"
            
        }
        else if segue.identifier == "lancasterOp2Segue" && a51Decision2Op2Text == "Take the shortcut ⏰" {
            
            let vcFail = segue.destination as! FailureViewController
            vcFail.explanationOfFailText = "Unfortunately, the stranger's shortcut led you the wrong way. You ended up driving back to New York and ran out of time to get to Area 51. Click below to return home."
            
        }
        else if (a51Decision2Op2Text == "Compass 🧭") || (a51Decision2Op1Text == "Map 🗺") {
            
            let vc = segue.destination as! A51Decision3ViewController
            vc.a51KansasInfoText = "You finally made it to Kansas. You're halfway across the country! Would you like to stop for a meal in a local diner or take a bicycle and continue on the path?"
            vc.a51KansasOp1Text = "Stop to Eat 🍕"
            vc.a51KansasOp2Text = "Take the Bike 🚲"
            
        }
        
    }
    

}
