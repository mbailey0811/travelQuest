//
//  A51Decision5ViewController.swift
//  travelQuest
//
//  Created by Christine Bailey on 7/15/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51Decision5ViewController: UIViewController {
    @IBOutlet weak var area51Info: UILabel!
    
    @IBOutlet weak var area51Pop: UILabel!
    
   
    @IBOutlet weak var area51DecisionInfo: UILabel!
    
    @IBOutlet weak var area51Op1: UIButton!
    
    @IBOutlet weak var area51Op2: UIButton!
    
    
    var area51DecisionInfoText : String!
    var area51Op1Text : String!
    var area51Op2Text : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        self.area51DecisionInfo.text = self.area51DecisionInfoText
        self.area51Op1.setTitle(self.area51Op1Text, for: .normal)
        self.area51Op2.setTitle(self.area51Op2Text, for: .normal)
        
        area51Info.layer.masksToBounds = true
        area51Info.layer.cornerRadius = 5
        
        area51Pop.layer.masksToBounds = true
        area51Pop.layer.cornerRadius = 5
        
        area51DecisionInfo.layer.masksToBounds = true
        area51DecisionInfo.layer.cornerRadius = 15
        
        area51Op1.layer.masksToBounds = true
        area51Op1.layer.cornerRadius = 15
        
        area51Op2.layer.masksToBounds = true
        area51Op2.layer.cornerRadius = 15

    }
    func assignbackground(){
      let background = UIImage(named: "background5")
      var imageView : UIImageView!
      imageView = UIImageView(frame: view.bounds)
      imageView.contentMode =  UIView.ContentMode.scaleAspectFill
      imageView.clipsToBounds = true
      imageView.image = background
      imageView.center = view.center
      view.addSubview(imageView)
      self.view.sendSubviewToBack(imageView)
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
