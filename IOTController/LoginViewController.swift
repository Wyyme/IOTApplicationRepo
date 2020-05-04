//
//  LoginViewController.swift
//  WirelessLEDController
//
//  Created by Raja Mohamed on 5/2/20.
//  Copyright © 2020 Wyyme. All rights reserved.
//

import UIKit
//import Foundation

class LoginViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var loginUserName: UITextField!
    @IBOutlet weak var loginUserPassword: UITextField!
    @IBOutlet weak var informationPlaceHolder: UILabel!
    @IBOutlet weak var loginSignInButton: UIButton!
    @IBOutlet weak var loginClearButton: UIButton!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath)
        
        
        return collectionViewCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // hide keyboard
        loginUserName.resignFirstResponder()
        loginUserPassword.resignFirstResponder()
        
        NotificationCenter.default.addObserver(self, selector: #selector(loginUserNameChange), name: UITextField.textDidChangeNotification, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(loginUserPasswordChange), name: UITextField.textDidChangeNotification, object: nil)
        
        loginSignInButton.isEnabled = false
        //loginClearButton.isEnabled = false
        
        
    }
    
    @objc func loginUserNameChange(){
        handleSignInAndClearButtonChange()
    }

    @objc func loginUserPasswordChange(){
        handleSignInAndClearButtonChange()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    //        if segue.identifier == "loginSuccess" {
    //            let destVC = segue.destination as! LoginViewController
    //            destVC.selectedWirelessType = sender as? UITableViewCell
    //        }
    }
    
    @IBAction func loginAuthenticate(_ sender: Any) {
        
        if loginUserName?.text == "admin" && loginUserPassword?.text == "admin" {

            //UIActivityIndicatorView.startAnimating(UIActivityIndicatorView)
            
            //let time = dispatch_time_t(DISPATCH_TIME_NOW, Int(Int64(0.5*Double(NSEC_PER_SEC))))
                
            //DispatchQueue.asyncAfter(<#T##self: DispatchQueue##DispatchQueue#>)
            
            performSegue(withIdentifier: "loginSuccess", sender: nil)
            informationPlaceHolder.isHidden = true
        }
        else {
            informationPlaceHolder.isHidden = false
            // hide keyboard
        }
        // hide keyboard
        loginUserName.resignFirstResponder()
        loginUserPassword.resignFirstResponder()
        
    }
    
    @IBAction func clearUNameAndPwdFields(_ sender: Any) {
        
        if loginUserName?.text != "" || loginUserPassword?.text != "" {
            loginUserPassword?.text = ""
            loginUserName?.text = ""
            loginSignInButton.isEnabled = false
        }
        informationPlaceHolder.isHidden = true
    }
    
    @IBAction func loginUserNameEditingBegin(_ sender: Any) {
        loginUserName.becomeFirstResponder()
    }
    
    @IBAction func loginUserNameEditingEnd(_ sender: Any) {
        loginUserName.resignFirstResponder()
    }
    
    
    func handleSignInAndClearButtonChange() {
    
        if loginUserName?.text == "" || loginUserPassword?.text == "" {
                   loginSignInButton.isEnabled = false
                   //loginClearButton.isEnabled = false
               }
               else {
                  loginSignInButton.isEnabled = true
                  //loginClearButton.isEnabled = true
               }
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
