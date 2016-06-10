//
//  MasterViewController.swift
//  Papers
//
//  Created by Artem on 6/10/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import UIKit

class MasterViewController: UICollectionViewController {
    
    private var papersDataSource = PapersDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = CGRectGetWidth(collectionView!.frame)/3
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width) 
    }
    
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return papersDataSource.count;
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCell", forIndexPath: indexPath) as! CollectionViewCell
        cell.textLabel.text = "\(indexPath.row)"
        return cell;
    }
    
}
