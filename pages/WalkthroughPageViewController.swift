//
//  WalkthroughPageViewController.swift
//  pages
//
//  Created by ashiq on 27/02/16.
//  Copyright © 2016 ashiq. All rights reserved.
//

import UIKit

class WalkthroughPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var pageHeadings = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "PetiteOyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh'sChocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats AndDeli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional",
        "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var pageImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg",
        "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg",
        "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg",
        "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg",
        "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg",
        "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
    
    var pageContent = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian /Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American /Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee& Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Set the data source to itself
        dataSource = self
        // Create the first walkthrough screen
        if let startingViewController = viewControllerAtIndex(0) {
    setViewControllers([startingViewController], direction: .Forward, animated: true, completion: nil)
    
    
        }
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func viewControllerAtIndex(index: Int) -> WalkthroughContentViewController? {
            if index == NSNotFound || index < 0 || index >= pageHeadings.count {
            return nil
            }
            // Create a new view controller and pass suitable data.
            if let pageContentViewController =
            storyboard?.instantiateViewControllerWithIdentifier("WalkthroughContentViewController")
            as? WalkthroughContentViewController {
            pageContentViewController.imageFile = pageImages[index]
            pageContentViewController.heading = pageHeadings[index]
            pageContentViewController.content = pageContent[index]
            pageContentViewController.index = index
            return pageContentViewController
            }
            return nil }
    
    
    func pageViewController(pageViewController: UIPageViewController,
            viewControllerAfterViewController viewController: UIViewController) ->
            UIViewController? {
            var index = (viewController as! WalkthroughContentViewController).index
            index++
            return viewControllerAtIndex(index)
    }
    func pageViewController(pageViewController: UIPageViewController,
            viewControllerBeforeViewController viewController: UIViewController) ->
            UIViewController? {
            var index = (viewController as! WalkthroughContentViewController).index
            index--
            return viewControllerAtIndex(index)
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
