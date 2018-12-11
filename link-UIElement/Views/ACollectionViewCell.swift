//
//  ACollectionViewCell.swift
//  link-UIElement
//
//  Created by Stephen Ouyang on 12/11/18.
//  Copyright © 2018 Stephen Ouyang. All rights reserved.
//

import UIKit

class ACollectionViewCell: UICollectionViewCell {
    
    static let identifier = "collectionCellID"
    
    @IBOutlet weak var aLabel: UILabel!
    
    func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }

    
}
