//
//  DevicesViewController.swift
//  WirelessLEDController
//
//  Created by Raja Mohamed on 4/26/20.
//  Copyright © 2020 Wyyme. All rights reserved.
//

import UIKit

class DevicesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "signOffLinkToLoginPage" {
           self.dismiss(animated: true) {}
           
           tabBarController?.dismiss(animated: true, completion: {})
           navigationController?.setNavigationBarHidden(true, animated: true)
       }
    }
    
    @IBAction func performSignOff(_ sender: Any) {
        performSegue(withIdentifier: "loginSuccess", sender: nil)
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

extension DevicesViewController {
    
    
}
