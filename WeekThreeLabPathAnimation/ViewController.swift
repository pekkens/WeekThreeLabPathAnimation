//
//  ViewController.swift
//  WeekThreeLabPathAnimation
//
//  Created by Prisca Ekkens on 10/3/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var playBtn: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playBtn.alpha = 0
    }

    @IBAction func onAddTapBtn(sender: AnyObject) {
        
        //set starting point, don't forget to set alpha at 1
        UIButton.animateWithDuration(1.0) { () -> Void in
            self.playBtn.frame.origin.y = 350
            self.playBtn.alpha = 1
            print("play btn fired")
            
        //animate with rotation
            self.playBtn.transform = CGAffineTransformMakeRotation(CGFloat(480 * M_PI / 180))
        }
        
        
    }

}

