//
//  A51Decision4ViewController.swift
//  travelQuest
//
//  Created by Christine Bailey on 7/15/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51Decision4ViewController: UIViewController {
    @IBOutlet weak var coloradoIntro: UILabel!
    
    @IBOutlet weak var coloradoPop: UILabel!
    
    @IBOutlet weak var coloradoInfo: UILabel!
    
    @IBOutlet weak var coloradoOp1: UIButton!
    
    @IBOutlet weak var coloradoOp2: UIButton!
    
    var coloradoInfoText : String!
    var coloradoOp1Text : String!
    var coloradoOp2Text : String!
    
    @IBAction func c2a(_ sender: UIButton) {
    }
    
    @IBAction func c2b(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        self.coloradoInfo.text = self.coloradoInfoText
        self.coloradoOp1.setTitle(self.coloradoOp1Text, for: .normal)
        self.coloradoOp2.setTitle(self.coloradoOp2Text, for: .normal)
        
        coloradoIntro.layer.masksToBounds = true
        coloradoIntro.layer.cornerRadius = 5
        
        coloradoPop.layer.masksToBounds = true
        coloradoPop.layer.cornerRadius = 5
        
        coloradoInfo.layer.masksToBounds = true
        coloradoInfo.layer.cornerRadius = 15
        
        coloradoOp1.layer.masksToBounds = true
        coloradoOp1.layer.cornerRadius = 15
        
        coloradoOp2.layer.masksToBounds = true
        coloradoOp2.layer.cornerRadius = 15

        
    }
    func assignbackground(){
      let background = UIImage(named: "background4")
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
        
        if segue.identifier == "coloradoOp1Segue" && coloradoInfoText == "" {
            
            let vc = segue.destination as! A51Decision5ViewController
            vc.area51DecisionInfoText = ""
            vc.area51Op1Text = ""
            vc.area51Op2Text = ""
            
        }
        else if segue.identifier == "coloradoOp2Segue" && coloradoInfoText == "" {
            
            let vc = segue.destination as! A51Decision5ViewController
            vc.area51DecisionInfoText = ""
            vc.area51Op1Text = ""
            vc.area51Op2Text = ""
            
        }
        else if segue.identifier == "coloradoOp1Segue" && coloradoInfoText == "" {
            
            let vc = segue.destination as! A51Decision5ViewController
            vc.area51DecisionInfoText = ""
            vc.area51Op1Text = ""
            vc.area51Op2Text = ""
            
        }
        else if segue.identifier == "coloradoOp2Segue" && coloradoInfoText == "" {
            
            let vc = segue.destination as! A51Decision5ViewController
            vc.area51DecisionInfoText = ""
            vc.area51Op1Text = ""
            vc.area51Op2Text = ""
            
        }
    }
    

}
