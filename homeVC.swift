//
//  homeVC.swift
//  Fresh Menu
//
//  Created by Sathish Chinniah on 21/08/16.
//  Copyright © 2016 techsoft. All rights reserved.
//

import UIKit

class homeVC: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource  {
    
    
//MARK:- Outlets

    @IBOutlet weak var CollectionView1: UICollectionView!
 
    @IBOutlet weak var CollectionView2: UICollectionView!
    
    
    
//MARK:- hardcode Values
    let productName1 = ["MAIN", "SALAD", "PIZZA", "ROATERS","ROLLS","SOUPS"]

    let productName2 = ["Chow Mein", "Dumplings Mong", "Wontons Langer", "Gong Bao Chicken J","Sweet and Sour Pork","Peking Roasted Duck Tk"]
    
     let productSubCatg = ["(veg)", "Mong(veg)", "Sauce(veg)", "Baoie(Non-veg)","Poute(veg)","(veg)"]

    let imageArray = [UIImage(named: "s3"), UIImage(named: "s5"), UIImage(named: "s3"), UIImage(named: "s4"), UIImage(named: "s5"), UIImage(named: "s2")]
    
    let productPrice = ["$120", "$230", "$122", "$992","$455","$345"]
    

 //MARK:- ViewCycle
 
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    
//MARK:- Collection view Delegate and Datasource
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        
        if(collectionView == CollectionView1)
        {
            return self.productName1.count
        }
        return self.productName2.count
        
        
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        
        
        if(collectionView == CollectionView1)
        {
            
            
            let cells = collectionView.dequeueReusableCellWithReuseIdentifier("cell1", forIndexPath: indexPath) as! FirstCVCell
            
            cells.ProductCatg!.text = self.productName1[indexPath.row]
     
            return cells
        }
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell2", forIndexPath: indexPath) as! SecondCVCell
        
        cell.productImg!.image = self.imageArray[indexPath.row]
        
        cell.ProductName!.text = self.productName2[indexPath.row]
        
        cell.qtyPrice!.text = self.productPrice[indexPath.row]
     
        cell.DetailBtn.layer.borderColor = UIColor.whiteColor().CGColor
        cell.DetailBtn.layer.borderWidth = 1.5
    
        cell.QtyBtn.layer.borderColor = UIColor.whiteColor().CGColor
        cell.QtyBtn.layer.borderWidth = 1.5

        
        return cell
        
        
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row >= 1 {
            
            //code for showing alert view
            var alert = UIAlertController(title: "Error", message: "No Data to Display", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            

        }
    }
    
   
    
    func collectionView(collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        if(collectionView == CollectionView1)
        {
            
            return CGSizeMake(UIScreen.mainScreen().bounds.width/3, 38)
            
        }
        return CGSizeMake(UIScreen.mainScreen().bounds.width/1, 200)
    }
    
    
    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        CollectionView2.collectionViewLayout.invalidateLayout()
    }

   

}
