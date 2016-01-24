//
//  ProductTableViewController.swift
//  Phase 2
//
//  Created by Andrew Gentry on 1/13/16.
//  Copyright © 2016 Andrew Gentry. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if woodworkingProducts.count == 0 {     //  A sorta hacky fix for the moment. Consider a cleaner way to handle.
            
            
        for something in WoodworkingProductList {
            
            addProduct(something.name, photoFilename: something.photoFilename, category: "Woodworking", notes: something.notes)
            
        }
        
        for something in LiftingProductList {
            
            addProduct(something.name, photoFilename: something.photoFilename, category: "Lifting", notes: something.notes)
            
        }
        
        for something in AutomationProductList {
            
            addProduct(something.name, photoFilename: something.photoFilename, category: "Automation", notes: something.notes)
            
        }
        
        for something in WeldingProductList {
            
            addProduct(something.name, photoFilename: something.photoFilename, category: "Welding", notes: something.notes)
            
        }
        
        for something in MagsquareFamilyList {
            
            addProduct(something.name, photoFilename: something.photoFilename, category: "MagSquares", notes: something.notes)
            
        }
        
        for something in GroundClampFamilyList {
            
            addProduct(something.name, photoFilename: something.photoFilename, category: "Ground Clamps", notes: something.notes)
            
        }
        }
        
        if weldingFamilies.count == 0 {
        var newFamily = Family(familyName: "Magsquares", familySize: 4, productFamily: Magsquares)
        weldingFamilies.append(newFamily)
        
        newFamily = Family(familyName: "Magnetic Ground Clamps", familySize: 3, productFamily: Magnetic_Ground_Clamps)
        weldingFamilies.append(newFamily)
        }
 
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
            
        case 0:
            return woodworkingProducts.count
            
        case 1:
            return liftingProducts.count
            
        case 2:
            return automationProducts.count
            
        case 3:
            return weldingFamilies.count
            
        default:
            return 50
            
        }
        
    }

 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        // Configure the cell...
        switch indexPath.section{
            
        case 0:
            let productCell = tableView.dequeueReusableCellWithIdentifier("productCell", forIndexPath: indexPath)
            let currentProduct = woodworkingProducts[indexPath.row]
            productCell.textLabel?.text = currentProduct.name
            return productCell
            
            
        case 1:
            let productCell = tableView.dequeueReusableCellWithIdentifier("productCell", forIndexPath: indexPath)
            let currentProduct = liftingProducts[indexPath.row]
            productCell.textLabel?.text = currentProduct.name
            return productCell
            
        case 2:
            let productCell = tableView.dequeueReusableCellWithIdentifier("productCell", forIndexPath: indexPath)
            let currentProduct = automationProducts[indexPath.row]
            productCell.textLabel?.text = currentProduct.name
            return productCell
            
            
        case 3:
            let familyCell = tableView.dequeueReusableCellWithIdentifier("familyCell", forIndexPath: indexPath)
            let currentProduct = weldingFamilies[indexPath.row]
            familyCell.textLabel?.text = currentProduct.familyName
            return familyCell
            
            
        default:
            let productCell = tableView.dequeueReusableCellWithIdentifier("productCell", forIndexPath: indexPath)
            let currentProduct = woodworkingProducts[indexPath.row]
            productCell.textLabel?.text = currentProduct.name
            return productCell
            
            
        }
        
        
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
        switch section {
            
        case 0:
            return "Woodworking"
            
        case 1:
            return "Heavy-Lifting"
            
        case 2:
            return "Automation"
            
        case 3:
            return "Welding"
            
        default:
            return "Products"
            
        }
    }
  
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        
        // Pass the selected object to the new view controller.
        
        if let indexPath = self.tableView.indexPathForSelectedRow{
            
            switch indexPath.section{
                
            case 0:
                let productScene = segue.destinationViewController as! ProductViewController
                let selectedProduct = woodworkingProducts[indexPath.row]
                productScene.currentProduct = selectedProduct

                
            case 1:
                let productScene = segue.destinationViewController as! ProductViewController

                let selectedProduct = liftingProducts[indexPath.row]
                productScene.currentProduct = selectedProduct

                
            case 2:
                let productScene = segue.destinationViewController as! ProductViewController

                let selectedProduct = automationProducts[indexPath.row]
                productScene.currentProduct = selectedProduct

                
            case 3:
                let familyScene = segue.destinationViewController as! FamilyProductViewController

                let selectedFamily = weldingFamilies[indexPath.row]
                familyScene.currentFamily = selectedFamily

            default:
                
                let productScene = segue.destinationViewController as! ProductViewController
                let selectedProduct = woodworkingProducts[indexPath.row]
                productScene.currentProduct = selectedProduct
            }
            
        }
    }


}
