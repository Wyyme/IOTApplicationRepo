//
//  RegDevViewController.swift
//  IOTController
//
//  Created by Raja Mohamed on 5/9/20.
//  Copyright © 2020 Wyyme. All rights reserved.
//

import UIKit

class RegDevViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    let regDevicesList = [UIColor.red, UIColor.green, UIColor.yellow, UIColor.blue, UIColor.red, UIColor.green, UIColor.yellow, UIColor.blue,UIColor.red, UIColor.green, UIColor.yellow, UIColor.blue,UIColor.red, UIColor.green, UIColor.yellow, UIColor.blue]
    
    @IBOutlet weak var regDevCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        regDevCollectionView.dataSource = self
        regDevCollectionView.delegate = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return regDevicesList.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "registeredDevicesCollectionViewCell", for: indexPath) as! RegDevCollectionViewCell
        
        let backgroundColor = regDevicesList[indexPath.item]
        cell.setup(bgColor: backgroundColor, cellNumber: indexPath.item)
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let columnNum: CGFloat = 2
        let collectionViewWidth = collectionView.bounds.width - 25
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let spaceBetweenCells = flowLayout.minimumInteritemSpacing * (columnNum - 1)
        let adjustedWidth = collectionViewWidth - spaceBetweenCells

        let width: CGFloat = floor(adjustedWidth / columnNum)
        let height: CGFloat = 100
        return CGSize(width: width, height: height)

    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionHeader{
            
            let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "registeredDevicesCollectionSectionHdr", for: indexPath) as! RegDevHdrCollectionReusableView
            
            view.setup(count: regDevicesList.count)
            
            return view
        }
        else {
            
            let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "registeredDevicesCollectionSectionFtr", for: indexPath)
            
            //view.setup(count: regDevicesList.count)
            view.backgroundColor = UIColor.systemGray6
            
            return view
            
        }
        
    }
    

}


class RegDevHdrCollectionReusableView: UICollectionReusableView{
    
    @IBOutlet weak var headerLabelOfCollectionView: UILabel!

    func setup(count: Int){
        headerLabelOfCollectionView.text = "Registered Devices: \(count)"
    }
    
}
