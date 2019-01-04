//
//  ViewController.swift
//  collectTest
//
//  Created by kiran on 1/4/19.
//  Copyright © 2019 kiran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testColl: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       testColl.delegate = self
        testColl.dataSource = self
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let yourWidth = collectionView.bounds.width/2
//
//
//        return CGSize(width: yourWidth, height: 40)
        let screenWidth = UIScreen.main.bounds.width
        let scaleFactor = (screenWidth / 2) - 3
        
        return CGSize(width: scaleFactor, height: scaleFactor)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = testColl.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
   
    
    
}

