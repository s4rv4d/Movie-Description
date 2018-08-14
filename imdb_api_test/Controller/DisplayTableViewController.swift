//
//  DisplayTableViewController.swift
//  imdb_api_test
//
//  Created by Sarvad shetty on 8/13/18.
//  Copyright © 2018 Sarvad shetty. All rights reserved.
//

import UIKit
import expanding_collection

class DisplayTableViewController: ExpandingTableViewController {

    //MARK:Variables
    fileprivate var scrollOffsetY:CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        let image1 = Asset.backgroundImage.image
        tableView.backgroundView = UIImageView(image: image1)
        
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < -25, let navigationcontroller = navigationController{
            for case let viewController as ViewController in (navigationController?.viewControllers)!{
                
            }
        }
        popTransitionAnimation()
        
        scrollOffsetY = scrollView.contentOffset.y
    }

}
