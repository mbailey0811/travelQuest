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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()

        // Do any additional setup after loading the view.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
