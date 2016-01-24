//
//  ContentViewController.swift
//  Phase 2
//
//  Created by Andrew Gentry on 1/24/16.
//  Copyright © 2016 Andrew Gentry. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var ProductName: UILabel!
    @IBOutlet weak var ProductImage: UIImageView!
    
    
    var pageIndex: Int!
    var titleText: String!
    var imageFile: String!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.ProductImage.image = UIImage(named: self.imageFile)
        self.ProductName.text = self.titleText
        
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
