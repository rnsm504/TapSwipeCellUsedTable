//
//  CustomCell.swift
//  TapSwipeCellUsedTable
//
//  Created by msnr on 2019/06/25.
//  Copyright © 2019 msnr. All rights reserved.
//

import UIKit

class CustomCell : UITableViewCell {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var DeleteButton: UIButton!
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var originalLeadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var originalTralingConstraint: NSLayoutConstraint!
    
    var isSwiping : Bool = false
    
    func swipe() {
        
        isSwiping = !isSwiping
        
        if isSwiping {
            leadingConstraint.isActive = true
            trailingConstraint.isActive = true
            originalLeadingConstraint.isActive = false
            originalTralingConstraint.isActive = false
            DeleteButton.isEnabled = true
        } else {
            originalLeadingConstraint.isActive = true
            originalTralingConstraint.isActive = true
            leadingConstraint.isActive = false
            trailingConstraint.isActive = false
            DeleteButton.isEnabled = false
        }
        
        UIView.animate(withDuration: 0.5) {
            self.layoutIfNeeded()
        }
    }
}
