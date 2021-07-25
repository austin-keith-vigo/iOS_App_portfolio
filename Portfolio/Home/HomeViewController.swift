//
//  HomeViewController.swift
//  Portfolio
//
//  Created by austin vigo on 7/24/21.
//

import UIKit

class HomeViewController: UIViewController {

    var collectionViewController: HomeCollectionViewController? = nil
    
    // Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initViews()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let _ = self.collectionViewController {
            self.getData()
        }
    }
    

    func initViews() {
        self.initNavigation()
        
        // Init Collection View Controller
        self.collectionViewController = HomeCollectionViewController(self.collectionView)
        self.collectionViewController?.handleRefresh = { [weak self] in
            self?.getData()
        }
        
        // Init colors
        self.view.backgroundColor = .clear
    }
    
    
    func initNavigation() {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    func getData() {
        
        let titles = ["eSmart", "Vusar", "Red-Apple"]
        let descriptions = ["Full-Time", "Internship", "Internship"]
        
        var experiences: [Experience] = []
        
        for i in 0...titles.count - 1 {
            let newExperience = Experience(titles[i], descriptions[i], nil)
            experiences.append(newExperience)
        }
        
        self.collectionViewController?.setData(experiences)
    }

}
