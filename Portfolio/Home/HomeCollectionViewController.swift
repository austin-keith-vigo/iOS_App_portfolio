//
//  HomeCollectionViewController.swift
//  Portfolio
//
//  Created by austin vigo on 7/24/21.
//

import Foundation
import UIKit

class HomeCollectionViewController: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var collectionView: UICollectionView? = nil
    
    var experiences: [Experience] = []
    
    // Callbacks
    var handleRefresh: (() -> Void)?
    
    init(_ collectionView: UICollectionView) {
        super.init()
        self.collectionView = collectionView
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
        self.collectionView?.backgroundColor = .purple
    }
    
    func setData(_ experiences: [Experience]) {
        self.experiences = experiences
        self.collectionView?.reloadData()
    }
    
    func refresh() {
        self.handleRefresh?()
    }
    
    /*
     Collection View Delegate Methods
     */
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
}


