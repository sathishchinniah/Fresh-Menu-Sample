//
//  FirstCVCell.swift
//  Fresh Menu
//
//  Created by Sathish Chinniah on 24/08/16.
//  Copyright © 2016 techsoft. All rights reserved.
//

import UIKit

class FirstCVCell: UICollectionViewCell {


//MARK:- Outlets
    
    @IBOutlet weak var ProductCatg: UILabel!
    
    
    @IBOutlet weak var highLightBar: UIView!
    

    override var selected: Bool {
        didSet {
  
            if selected {
                highLightBar.backgroundColor = UIColor.yellowColor()
                
            } else {
                highLightBar.backgroundColor = UIColor.clearColor()
               
                
            }
            
        }
    }

    
}
