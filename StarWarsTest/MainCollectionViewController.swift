//
//  MainCollectionViewController.swift
//  StarWarsTest
//
//  Created by Emmanuel on 13/07/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import UIKit
import MPSkewed
import DZNEmptyDataSet
import SVProgressHUD


private let reuseIdentifier = "Cell"

class MainCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addLogoToNavigationBar()
        
//        let layout : MPSkewedParallaxLayout = MPSkewedParallaxLayout.init()
//        layout.lineSpacing = 2
//        layout.itemSize = CGSize(width: self.view.bounds.size.width, height: 250)
       
        
 

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> MPSkewedCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MPSkewedCell
    
        cell.text = titleForIndex(index: indexPath.row) as NSString
        
        return cell
    }
    
    func titleForIndex(index:NSInteger) -> String {
        var title = ""
        switch index - 1 {
        case 0:
            title = "Peliculas"
        case 1:
            title = "Personjes"
        case 2:
            title = "Planetas"
        case 3:
            title = "Naves"
        case 4:
            title = "Vehiculos"
        default:
            break
        }
        return title
    }

    
}