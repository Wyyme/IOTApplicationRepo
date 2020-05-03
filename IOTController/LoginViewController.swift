//
//  LoginViewController.swift
//  WirelessLEDController
//
//  Created by Raja Mohamed on 5/2/20.
//  Copyright © 2020 Wyyme. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var loginUserName: UITextField!
    @IBOutlet weak var loginUserPassword: UITextField!
    @IBOutlet weak var informationPlaceHolder: UILabel!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath)
        
        
        return collectionViewCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // show keyboard
        //loginUserName.becomeFirstResponder()
        //loginUserPassword.becomeFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    //        if segue.identifier == "loginSuccess" {
    //            let destVC = segue.destination as! LoginViewController
    //            destVC.selectedWirelessType = sender as? UITableViewCell
    //        }
    }
    
    @IBAction func loginAuthenticate(_ sender: Any) {
        
        
        
        if loginUserName?.text == "admin" && loginUserPassword?.text == "admin" {
            print("User Name \(String(describing: loginUserName?.text!))")
            print("Password \(String(describing: loginUserPassword?.text!))")
            performSegue(withIdentifier: "loginSuccess", sender: nil)
            informationPlaceHolder.isHidden = true
        }
        else {
            informationPlaceHolder.isHidden = false
        }
        
    }
    
    @IBAction func clearUNameAndPwdFields(_ sender: Any) {
        loginUserPassword?.text = ""
        loginUserName?.text = ""
        informationPlaceHolder.isHidden = true
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
