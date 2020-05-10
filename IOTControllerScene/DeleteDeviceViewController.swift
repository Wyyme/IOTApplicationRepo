//
//  DeleteDeviceViewController.swift
//  IOTController
//
//  Created by Raja Mohamed on 5/8/20.
//  Copyright © 2020 Wyyme. All rights reserved.
//

import UIKit

class DeleteDeviceViewController: UIViewController, UICollectionViewDelegate {
    
    let regDevicesList = [UIColor.red, UIColor.green, UIColor.yellow, UIColor.blue, UIColor.red, UIColor.green, UIColor.yellow, UIColor.blue,UIColor.red, UIColor.green, UIColor.yellow, UIColor.blue,UIColor.red, UIColor.green, UIColor.yellow, UIColor.blue]

    //@IBOutlet weak var deleteDevicesCollectionView: UICollectionView!
    @IBOutlet weak var deleteDevicesCollectionView: UICollectionView!
       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        deleteDevicesCollectionView.dataSource = self
        deleteDevicesCollectionView.delegate = self
    }
}

extension DeleteDeviceViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return regDevicesList.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "deleteDevicesCollectionViewCell", for: indexPath)
        
        cell.backgroundColor = regDevicesList[indexPath.item]
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
           
           let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "delDevicesCollectionSectionHdr", for: indexPath)
           
            //as! RegDevHdrCollectionReusableView
           //view.setup(count: regDevicesList.count)
           
           return view
       }
       else {
           
           let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "delDevicesCollectionSectionFtr", for: indexPath)
           
           //view.setup(count: regDevicesList.count)
           view.backgroundColor = UIColor.systemGray6
           
           return view
           
       }
       
    }
    
}


