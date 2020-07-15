//
//  A51Decision2ViewController.swift
//  travelQuest
//
//  Created by Christine Bailey on 7/14/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51Decision2ViewController: UIViewController {
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
