//
//  ListWirelessConnViewController.swift
//  WirelessLEDController
//
//  Created by Raja Mohamed on 4/24/20.
//  Copyright © 2020 Wyyme. All rights reserved.
//

import UIKit

class ListWirelessConnViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var selectedWirelessType: UITableViewCell?
  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "NetworkListToLEDConfig" {
            let destVC = segue.destination as! ViewController
            destVC.selectedConnection = sender as? UITableViewCell
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 3
        case 1:
            return 3
        case 2:
            return 1
        default:
            return 0
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        var myCell = tableView.cellForRow(at: indexPath)
           myCell?.accessoryType = .checkmark
           
        myCell = tableView.cellForRow(at: indexPath)
        performSegue(withIdentifier: "NetworkListToLEDConfig", sender: myCell)
        
    }
    
       
     func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
            let myCell = tableView.cellForRow(at: indexPath)
            myCell?.accessoryType = .none
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var myCell: UITableViewCell?
          
        switch indexPath.section {

        case 0:
            myCell = tableView.dequeueReusableCell(withIdentifier: "listnormalCell", for: indexPath)
            myCell?.textLabel?.text = "Wifi \(indexPath)"
            myCell?.accessoryType = .none
        case 1:
           myCell = tableView.dequeueReusableCell(withIdentifier: "listnormalCell", for: indexPath)
           myCell?.textLabel?.text = "Bluetooth \(indexPath)"
           myCell?.accessoryType = .none
        case 2:
           myCell = tableView.dequeueReusableCell(withIdentifier: "listnormalCell", for: indexPath)
           myCell?.textLabel?.text = "Mobile Network \(indexPath)"
           myCell?.accessoryType = .none
        
        default:
               myCell = tableView.dequeueReusableCell(withIdentifier: "listnormalCell", for: indexPath)
               myCell?.textLabel?.text = "No connections available"
           }
           return myCell!
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
               case 0:
                   return "Wifi"
               case 1:
                   return "Bluetooth"
               case 2:
                   return "Mobile Network"
               default:
                   return nil
               }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //self.title = "Choose Wireless Connection"
               
        //test1.text =  selectedWirelessType?.detailTextLabel?.text
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
