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
            return weldingSection.count
            
        case 1:
            return woodworkingSection.count
            
        case 2:
            return heavyliftingSection.count
            
        case 3:
            return automationSection.count
            
        default:
            return 0
            
        }
        
    }

 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        // Configure the cell...
        switch indexPath.section{
            
        case 0:
            let familyCell = tableView.dequeueReusableCellWithIdentifier("familyCell", forIndexPath: indexPath)
            let currentFamily = weldingSection[indexPath.row]
            familyCell.textLabel?.text = currentFamily.familyName
            return familyCell
            
            
        case 1:
            let familyCell = tableView.dequeueReusableCellWithIdentifier("familyCell", forIndexPath: indexPath)
            let currentFamily = woodworkingSection[indexPath.row]
            familyCell.textLabel?.text = currentFamily.familyName
            return familyCell
            
        case 2:
            let familyCell = tableView.dequeueReusableCellWithIdentifier("familyCell", forIndexPath: indexPath)
            let currentFamily = heavyliftingSection[indexPath.row]
            familyCell.textLabel?.text = currentFamily.familyName
            return familyCell
            
            
        case 3:
            let familyCell = tableView.dequeueReusableCellWithIdentifier("familyCell", forIndexPath: indexPath)
            let currentFamily = automationSection[indexPath.row]
            familyCell.textLabel?.text = currentFamily.familyName
            return familyCell
            
            
        default:
            let familyCell = tableView.dequeueReusableCellWithIdentifier("familyCell", forIndexPath: indexPath)
            let currentFamily = weldingSection[indexPath.row]
            familyCell.textLabel?.text = currentFamily.familyName
            return familyCell
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
                let familyScene = segue.destinationViewController as! ResetViewController
                let selectedFamily = weldingSection[indexPath.row]
                familyScene.currentFamily = selectedFamily

                
            case 1:
                let familyScene = segue.destinationViewController as! ResetViewController
                let selectedFamily = woodworkingSection[indexPath.row]
                familyScene.currentFamily = selectedFamily

                
            case 2:
                let familyScene = segue.destinationViewController as! ResetViewController
                let selectedFamily = heavyliftingSection[indexPath.row]
                familyScene.currentFamily = selectedFamily

                
            case 3:
                let familyScene = segue.destinationViewController as! ResetViewController
                let selectedFamily = automationSection[indexPath.row]
                familyScene.currentFamily = selectedFamily

            default:
                
                let familyScene = segue.destinationViewController as! ResetViewController
                let selectedFamily = weldingSection[indexPath.row]
                familyScene.currentFamily = selectedFamily
            }
            
        }
    }


}
