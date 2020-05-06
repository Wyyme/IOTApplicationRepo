//
//  ViewController.swift
//  WirelessLEDController
//
//  Created by Raja Mohamed on 4/24/20.
//  Copyright © 2020 Wyyme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgViewRed: UIImageView!
    @IBOutlet weak var imgViewGreen: UIImageView!
    var selectedConnection: UITableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRedLED(_ sender: UISwitch) {
        //view.backgroundColor = UIColor.red
        
        //        let everyThing = view.subviews
        //
        //        for eachView in everyThing {
        //            if eachView is UIImageView{
        //                let currentImgView = eachView as! UIImageView
        //
        //                currentImgView.tintColor = UIColor.red
        //            }
        //        }
        
        if sender.isOn {
            imgViewRed.tintColor = UIColor.red
        }
        else{
            imgViewRed.tintColor = UIColor.black
        }
    }
    
    
    @IBAction func toggleGreenLED(_ sender: UISwitch) {
        //view.backgroundColor = UIColor.green
        
        //        let everyThing = view.subviews
        //
        //        for eachView in everyThing {
        //            if eachView is UIImageView{
        //                let currentImgView = eachView as! UIImageView
        //
        //                currentImgView.tintColor = UIColor.green
        //            }
        //        }
        
        if sender.isOn {
            imgViewGreen.tintColor = UIColor.green
        }
        else{
            imgViewGreen.tintColor = UIColor.black
        }
        
       
        
    }
}

