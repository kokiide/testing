//
//  ViewController.swift
//  CollectionViewTrial2
//
//  Created by Keio_SFC on 2017/05/25.
//  Copyright © 2017年 kokiide. All rights reserved.
//

import UIKit


extension UIColor {
    class func lightBlue() -> UIColor {
        return UIColor(red: 92.0 / 255, green: 192.0 / 255, blue: 210.0 / 255, alpha: 1.0)
    }
    
    class func lightRed() -> UIColor {
        return UIColor(red: 195.0 / 255, green: 123.0 / 255, blue: 175.0 / 255, alpha: 1.0)
    }
}

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let dateManager = DateManager()
    let daysPerWeek: Int = 7
    let cellMargin: CGFloat = 2.0
    var selectedDate = NSDate()
    var today: NSDate!
    let weekArray = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    
    @IBOutlet weak var headerPrevBtn: UIButton!//①
    @IBOutlet weak var headerNextBtn: UIButton!//②
    @IBOutlet weak var headerTitle: UILabel!    //③
    @IBOutlet weak var calenderHeaderView: UIView! //④
    @IBOutlet weak var calenderCollectionView: UICollectionView!//⑤
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calenderCollectionView.delegate = self
        calenderCollectionView.dataSource = self
        calenderCollectionView.backgroundColor = UIColor.whiteColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //1
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }
    //2
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Section毎にCellの総数を変える.
        if section == 0 {
            return 7
        } else {
            return dateManager.daysAcquisition() //ここは月によって異なる(後ほど説明します)
        }
    }
    //3
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CalendarCell
        
        return cell
    }
    
    
    //①タップ時
    @IBAction func tappedHeaderPrevBtn(sender: UIButton) {
    }
    
    //②タップ時
    @IBAction func tappedHeaderNextBtn(sender: UIButton) {
    }
    
    
}
