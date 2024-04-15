//
//  UIImageViewExtension.swift
//  AFireKFisher
//
//  Created by MERT MUTLU on 15.04.2024.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView{
    
    func setImage(imageUrl : String){
        kf.setImage(with: URL(string: imageUrl))
    }
}
