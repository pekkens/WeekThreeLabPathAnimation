//
//  ViewController.swift
//  WeekThreeLabPathAnimation
//
//  Created by Prisca Ekkens on 10/3/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var plusImageView: UIImageView!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var playImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playImageView.alpha = 0
    }
    
    @IBAction func onAddTapBtn(sender: AnyObject) {
        
        
        //1.set starting point, don't forget to set alpha at 1
        //2.animate with duration for time + completion; hit tab and enter to create areas for code
        //3.animate plus button with seperat animate with duration
        //4.concat so values for each animation don't conflict; create variables that make each action discret
        //5.add Spring: damping is like wobble; velocity is like strength
        
        let rotateTransform = CGAffineTransformMakeRotation(CGFloat (135 * M_PI / 180))
        let scaleTransform = CGAffineTransformMakeScale(1.2, 1.2)
        let transform = CGAffineTransformConcat (rotateTransform, scaleTransform)
        
        //6.use center instead of origin to reset animation for each press
        playImageView.center.y = plusImageView.center.y
        
        UIView.animateWithDuration(0.8, delay: 0.1, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.1, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.playImageView.center.y = 350
            self.playImageView.alpha = 1
            self.playImageView.transform = CGAffineTransformMakeRotation(CGFloat(120 * M_PI / 180))
            }) { (Bool) -> Void in
                UIView.animateWithDuration(0.3, animations: { () -> Void in
                    self.plusImageView.transform = transform
                })
        }
        
    }
}


