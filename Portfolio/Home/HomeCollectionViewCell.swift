//
//  HomeCollectionViewCell.swift
//  Portfolio
//
//  Created by austin vigo on 7/24/21.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    static let cellId = "HomeCollectionViewCell"
    
    // Outlets
    
    // Callbacks

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.initViews()
    }
    
    func initViews() {
        
    }
    
    func TEST_SET_BACKGROUND_COLOR(_ color: UIColor) {
        self.contentView.backgroundColor = color
    }
    
    func setInfo(_ experience: Experience) {
        
    }

}
