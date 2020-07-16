//
//  A51Decision5ViewController.swift
//  travelQuest
//
//  Created by Christine Bailey on 7/15/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51Decision5ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()

        // Do any additional setup after loading the view.
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
