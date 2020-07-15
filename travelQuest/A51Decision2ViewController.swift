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
    
    var a51Decision2InfoText : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        self.a51Decision2Info.text = self.a51Decision2InfoText
    }
    
    
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
