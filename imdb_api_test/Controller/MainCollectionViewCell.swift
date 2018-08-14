//
//  MainCollectionViewCell.swift
//  imdb_api_test
//
//  Created by Sarvad shetty on 8/13/18.
//  Copyright © 2018 Sarvad shetty. All rights reserved.
//

import UIKit
import expanding_collection

class MainCollectionViewCell: BasePageCollectionCell  {

    //MARK:IBOutlets
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var customLabel: UILabel!
//    @IBOutlet var frntContainerView: UIView!
//    @IBOutlet var frntConstraintY: NSLayoutConstraint!
//    @IBOutlet var bckContainerView: UIView!
//    @IBOutlet var bckConstraintY: NSLayoutConstraint!
    //the above outlets should bge connected to the outlets in BasePageCollectionCell
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //MARK:Custom Label Properties
        customLabel.layer.shadowRadius = 2
        customLabel.layer.shadowOffset = CGSize(width: 0, height: 3)
        customLabel.layer.shadowOpacity = 0.2
    }

}
