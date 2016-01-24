//
//  ResetViewController.swift
//  Phase 2
//
//  Created by Andrew Gentry on 1/24/16.
//  Copyright © 2016 Andrew Gentry. All rights reserved.
//

import UIKit

class ResetViewController: UIViewController, UIPageViewControllerDataSource{

    
    var currentFamily : Family?
    
    var pageViewController: UIPageViewController!
    
    @IBAction func resetAction(sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController") as! UIPageViewController
        self.pageViewController.dataSource = self
        
        var startVC = self.viewControllerAtIndex(0) as ContentViewController
        
        var viewControllers = NSArray(object: startVC)
        
        self.pageViewController.setViewControllers(viewControllers as! [UIViewController], direction: .Forward, animated: true, completion: nil)
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
        self.pageViewController.didMoveToParentViewController(self)
        
        
        
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func viewControllerAtIndex(index: Int) -> ContentViewController {
        
        if (currentFamily?.productFamily.count == 0 || index >= currentFamily?.productFamily.count) {
            
            return ContentViewController()
            
        }
        
        var vc: ContentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ContentViewController") as! ContentViewController
        
        vc.imageFile = self.currentFamily?.productFamily[index].photoFilename
        vc.titleText = self.currentFamily?.productFamily[index].name
        vc.pageIndex = index
        
        return vc
        
    }
    
    
    
    
    // MARK: - Data Source Stuff
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
       
        var vc = viewController as! ContentViewController
        
        var index = vc.pageIndex as Int
        
        if (index == 0 || index == NSNotFound) {
            
            return nil
        }
        
        
        index--
        return self.viewControllerAtIndex(index)
        
    
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        var vc = viewController as! ContentViewController
        
        var index = vc.pageIndex as Int
        
        if (index == NSNotFound) {
            
            return nil
            
        }
        
        index++
        
        if (index == self.currentFamily?.productFamily.count){
            
            return nil
            
        }
        
        return self.viewControllerAtIndex(index)
        
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
       
        return self.currentFamily!.productFamily.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
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
