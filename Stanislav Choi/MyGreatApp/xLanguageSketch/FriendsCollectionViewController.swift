//
//  FriendsCollectionViewController.swift
//  xLanguageSketch
//
//  Created by cscoi024 on 2016. 2. 18..
//  Copyright © 2016년 stanislav. All rights reserved.
//

import Foundation
import UIKit

var Friends = [String]()

class FriendsCollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var profilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Friends = ["Leonard", "Sheldon", "Howard", "Rajesh", "Penny", "Amy", "Stanislav", "Irina", "Bernadette"]
        
        self.collectionView?.backgroundColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Friends.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as UICollectionViewCell
        
        let Label = cell.viewWithTag(1) as! UILabel
        
        Label.text = Friends[indexPath.row]
        
        let Button = cell.viewWithTag(2) as! UIButton
        
        Button.setTitle("Information", forState: UIControlState.Normal)
        
        return cell
    }
}
