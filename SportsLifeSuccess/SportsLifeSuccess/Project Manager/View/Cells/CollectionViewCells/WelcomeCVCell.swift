//
//  WelcomeCVCell.swift
//  SportsLifeSuccess
//
//  Created by Potenza on 11/08/23.
//

import UIKit

class WelcomeCVCell: UICollectionViewCell {

    
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    
    @IBOutlet weak var imgWidth: NSLayoutConstraint!
    @IBOutlet weak var imgHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
