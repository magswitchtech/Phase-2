//
//  ProductViewController.swift
//  Phase 2
//
//  Created by Andrew Gentry on 1/13/16.
//  Copyright © 2016 Andrew Gentry. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    // Declare the product variable passed in from the ProductTableViewController
    
    var currentProduct : Product?
    
    // Storyboard Outlets
    @IBOutlet weak var CurrentProductDescription: UILabel!
    @IBOutlet weak var CurrentProductLabel: UILabel!
    @IBOutlet weak var CurrentProductImage: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Set the product image
        
        let productImage = UIImage(named: currentProduct!.photoFilename)
        CurrentProductImage.image = productImage
        
        
        // Set the Product Name
        
        CurrentProductLabel.text = currentProduct!.name
        
        // Set the Product decription
        
        CurrentProductDescription.text = currentProduct!.notes

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
