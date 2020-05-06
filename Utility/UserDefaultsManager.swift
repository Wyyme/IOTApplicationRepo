//
//  UserDefaultsManager.swift
//  IOTController
//
//  Created by Raja Mohamed on 5/5/20.
//  Copyright © 2020 Wyyme. All rights reserved.
//

import UIKit

class UserDefaultsManager: NSObject {
    
    static let userDefaults = UserDefaults()
    
    class func sychronize(){
        //let myData = NSKeyedArchiver.archivedData(withRootObject: Any, requiringSecureCoding: <#T##Bool#>)
        //UserDefaults().set(myData, forKey: "recipearray")
        userDefaults.synchronize()
    }
    
    //func init() {
    //    if let data = userDefaults.data(forKey: "recipearray")
    //}

}
