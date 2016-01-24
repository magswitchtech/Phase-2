//
//  FamilyProductViewController.swift
//  Phase 2
//
//  Created by Andrew Gentry on 1/20/16.
//  Copyright © 2016 Andrew Gentry. All rights reserved.
//

import UIKit

class FamilyProductViewController: UIViewController {
    
    var currentFamily : Family?

    @IBOutlet weak var FamilyLabelOne: UILabel!
    @IBOutlet weak var FamilyLabelTwo: UILabel!
    @IBOutlet weak var FamilyLabelThree: UILabel!
    @IBOutlet weak var FamilyLabelFour: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       FamilyLabelOne.text = currentFamily!.productFamily[0].name
        
       FamilyLabelTwo.text = currentFamily!.productFamily[1].name
        
       FamilyLabelThree.text = currentFamily!.productFamily[2].name
        


        // Do any additional setup after loading the view.
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
