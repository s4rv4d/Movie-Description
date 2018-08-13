//
//  ViewController.swift
//  imdb_api_test
//
//  Created by Sarvad shetty on 8/10/18.
//  Copyright © 2018 Sarvad shetty. All rights reserved.
//

import UIKit
import expanding_collection

    //MARK:Variables
     let itemArray :[Item] = [Item(imageName: "item0", title: "Boston"),Item(imageName: "item1", title: "New York"),Item(imageName: "item2", title: "New York"),Item(imageName: "item3", title: "Washington")]
     var cellIsOpen = [Bool]()


class ViewController: ExpandingViewController {
    
    //MARK:IBOutlets
    @IBOutlet weak var pageLabel: UILabel!
    
    override func viewDidLoad() {
        itemSize = CGSize(width: 256, height: 460)
        super.viewDidLoad()
        registerCell()
        fillCellIsOpenArray()
    }
    
    
    //MARK:Helper Functions
    func registerCell(){
        //creating a nib for the MainCollectionViewCell
        let nib = UINib(nibName: String(describing:MainCollectionViewCell.self), bundle: nil)
        //registering nib to the collection view of the pod
        collectionView?.register(nib, forCellWithReuseIdentifier: String(describing: MainCollectionViewCell.self))
        
    }
    
    func fillCellIsOpenArray(){
        cellIsOpen = Array(repeating: false, count: itemArray.count)
    }
    
    //To get the tableView controller
    fileprivate func getTableViewController() -> ExpandingTableViewController{
        let storyboard = UIStoryboard(name: "Main.storyboard", bundle: nil)
        let toViewController:DisplayTableViewController = storyboard.instantiateViewController(withIdentifier: "tableView") as! DisplayTableViewController
        return toViewController
    }
    
    //To add gesture to the collection view cell
    func addGesture(to view:UIView){
        //configuring up gesturing
        let upGesture = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipeHandler(_:)))
        //configuring down gesturing
        let downGesture = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipeHandler(_:)))
        
        //assigning gestures
        view.addGestureRecognizer(upGesture)
        view.addGestureRecognizer(downGesture)
    }
    
    @objc func swipeHandler(_ sender:UISwipeGestureRecognizer){
        let indexPath = IndexPath(row: currentIndex, section: 0)
        
        //accessing the cell
        guard let cell = collectionView?.cellForItem(at: indexPath) as? MainCollectionViewCell else {return}
        if cell.isOpened == true && sender.direction == .up{
            pushToViewController(getTableViewController())
        }
        let open = sender.direction == .up ? true : false
        cell.cellIsOpen(open)
        cellIsOpen[indexPath.row] = cell.isOpened
        
    }
}

//MARK:UIScrollView Delegate
extension ViewController {
    func scrollViewDidScroll(_: UIScrollView) {
        pageLabel.text = "\(currentIndex + 1)/\(itemArray.count)"
    }
}
