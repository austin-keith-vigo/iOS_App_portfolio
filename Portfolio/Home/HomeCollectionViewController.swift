//
//  HomeCollectionViewController.swift
//  Portfolio
//
//  Created by austin vigo on 7/24/21.
//

import Foundation
import UIKit

class HomeCollectionViewController: NSObject {
    
    var collectionView: UICollectionView? = nil
    
    let cellId = HomeCollectionViewCell.cellId
    
    var experiences: [Experience] = []
    
    let TEST_COLORS: [UIColor] = [.blue, .purple, .yellow]
    
    
    // Callbacks
    var handleRefresh: (() -> Void)?
    
    init(_ collectionView: UICollectionView) {
        super.init()
        
        self.collectionView = collectionView
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
        self.collectionView?.backgroundColor = .clear
        self.collectionView?.isPagingEnabled = true
        self.collectionView?.register(UINib(nibName: cellId, bundle: nil), forCellWithReuseIdentifier: cellId)
    }
    
    
    func setData(_ experiences: [Experience]) {
        self.experiences = experiences
        self.collectionView?.reloadData()
    }
    
    
    func refresh() {
        self.handleRefresh?()
    }
}

/*
 Collection View Delegate Methods
 */
extension HomeCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.experiences.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomeCollectionViewCell
        
        cell.setInfo(self.experiences[indexPath.row])
        
        cell.TEST_SET_BACKGROUND_COLOR(self.TEST_COLORS[indexPath.row])
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        guard let collectionView = self.collectionView else { return .zero }
        
        return collectionView.frame.size
    }
}


