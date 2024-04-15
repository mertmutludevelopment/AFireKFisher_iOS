//
//  ElementTableViewCell.swift
//  AFireKFisher
//
//  Created by MERT MUTLU on 15.04.2024.
//

import UIKit

class ElementTableViewCell: UITableViewCell {
    
    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var elementImageView: UIImageView!
    @IBOutlet weak var lblElement: UILabel!
    
    var photo : Photo? {
        didSet {
            self.lblElement.text = self.photo?.title
            self.elementImageView.setImage(imageUrl: self.photo?.url ?? " ")
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
