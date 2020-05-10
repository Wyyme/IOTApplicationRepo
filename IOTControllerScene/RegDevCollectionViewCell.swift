//
//  RegDevCollectionViewCell.swift
//  IOTController
//
//  Created by Raja Mohamed on 5/10/20.
//  Copyright © 2020 Wyyme. All rights reserved.
//

import UIKit

class RegDevCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 10
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 1, height: 1)
    }
    
    func setup(bgColor: UIColor, cellNumber: Int){
        
        self.backgroundColor = bgColor
        numberLabel.text = "\(cellNumber)"
    }
    
}
