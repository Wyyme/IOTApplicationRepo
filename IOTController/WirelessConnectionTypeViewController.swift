//
//  WirelessConnectionTypeViewController.swift
//  WirelessLEDController
//
//  Created by Raja Mohamed on 4/24/20.
//  Copyright © 2020 Wyyme. All rights reserved.
//

import UIKit

class WirelessConnectionTypeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "NetworkTypeToNetworkList" {
            let destVC = segue.destination as! ListWirelessConnViewController
            destVC.selectedWirelessType = sender as? UITableViewCell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        //let myCell = tableView.cellForRow(at: indexPath)
        //myCell?.accessoryType = .checkmark
        
        //        let vc = storyboard?.instantiateViewController(withIdentifier: "listwirelessconnections") as! ListWirelessConnViewController
        //
        //        vc.selectedWirelessType = "Test \(indexPath.row)"
        //
        //        self.navigationController?.pushViewController(vc, animated: true)
        
        let myCell = tableView.cellForRow(at: indexPath)
        performSegue(withIdentifier: "NetworkTypeToNetworkList", sender: myCell)
        
    }
    
    
    /*
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        
        
        let selectionAction = UIContextualAction(style: .normal, title: "Select")  { (action, srcView, actionPerformed:(Bool) -> Void) in
            
            switch indexPath.row {
            case 0:
                    //print("This completed")
                    let confirm = UIAlertController(title: "Confirm", message: "Do you want to search connections?", preferredStyle: .alert)
                
                    let yesAction = UIAlertAction(title: "Yes", style: .default)
                    {  (action) in
                     
                        print("Go")
                    }
                    
                    let noAction = UIAlertAction(title: "No", style: .cancel) { (action) in
                        print("No Go")
                    }
                    
                    confirm.addAction(yesAction)
                    confirm.addAction(noAction)
                
                    self.present(confirm, animated: true, completion: nil)
                
            default:
                break
            }
            
            tableView.reloadData()
            actionPerformed(true)
            
        }
        
        return UISwipeActionsConfiguration(actions: [selectionAction])
        
    }
    */
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 1
        default:
            return 0
        }
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /*
        let cell = UITableViewCell()
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = "Search WiFi connection(s)"
        case 1:
            cell.textLabel?.text = "Search BlueTooth Devices(s)"
        default:
            cell.textLabel?.text = "No Connection Data To Display..."
        }
        
        //cell.textLabel?.text = "This is cell for Wife\(indexPath.row)"
        
        return cell
        */
        
        var myCell: UITableViewCell?
        
        switch indexPath.section {

        case 0:
            myCell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
            myCell?.textLabel?.text = ""
            myCell?.imageView?.image = UIImage(named: "wifiImage")
            myCell?.accessoryType = .detailDisclosureButton
            myCell?.detailTextLabel?.text = "Search and display available Wifi networks"
        case 1:
            myCell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
            myCell?.textLabel?.text = ""
            myCell?.imageView?.image = UIImage(named: "bluetoothImage")
            myCell?.accessoryType = .detailDisclosureButton
            myCell?.detailTextLabel?.text = "Search and display available bluetooth devices"
        case 2:
            myCell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
            myCell?.textLabel?.text = ""
            myCell?.imageView?.image = UIImage(named: "mobileImage")
            myCell?.accessoryType = .detailDisclosureButton
            myCell?.detailTextLabel?.text = "Control through your mobile network"
        default:
            myCell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
            myCell?.textLabel?.text = "No connection type to be displayed"
            //myCell?.imageView?.image = UIImage(named: "bluetootchImage")
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
        //self.title = "Choose Connection Type"
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
