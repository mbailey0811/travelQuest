//
//  A51Decision3ViewController.swift
//  travelQuest
//
//  Created by Christine Bailey on 7/15/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51Decision3ViewController: UIViewController {
    //labels and buttons
    
    @IBOutlet weak var popKansas: UILabel!
    
    @IBOutlet weak var kansasIntro: UILabel!
    
    @IBOutlet weak var a51KansasInfo: UILabel!
    
    @IBOutlet weak var a51KansasOp1: UIButton!
    
    @IBOutlet weak var a51KansasOp2: UIButton!
    //text for labels and buttons
    var a51KansasInfoText : String!
    
    var a51KansasOp1Text : String!
    
    var a51KansasOp2Text : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        self.a51KansasInfo.text = self.a51KansasInfoText
        self.a51KansasOp1.setTitle(self.a51KansasOp1Text, for: .normal)
        self.a51KansasOp2.setTitle(self.a51KansasOp2Text, for: .normal)
        
        popKansas.layer.masksToBounds = true
        popKansas.layer.cornerRadius = 5
        
        kansasIntro.layer.masksToBounds = true
        kansasIntro.layer.cornerRadius = 5
        
        a51KansasInfo.layer.masksToBounds = true
        a51KansasInfo.layer.cornerRadius = 15
        
        a51KansasOp1.layer.masksToBounds = true
        a51KansasOp1.layer.cornerRadius = 15
        
        a51KansasOp2.layer.masksToBounds = true
        a51KansasOp2.layer.cornerRadius = 15

       
    }
    
    func assignbackground(){
         let background = UIImage(named: "background3")
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
