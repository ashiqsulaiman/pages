//
//  WalkthroughContentViewController.swift
//  pages
//
//  Created by ashiq on 27/02/16.
//  Copyright © 2016 ashiq. All rights reserved.
//

import UIKit

class WalkthroughContentViewController: UIViewController {

    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentImageView: UIImageView!
    
    @IBOutlet weak var imageAnim: UIImageView!
    
    
    var index = 0
    var heading = ""
    var imageFile = ""
    var content = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        headingLabel.text = heading
        contentLabel.text = content
        contentImageView.image = UIImage(named: imageFile)
        
        
        imageAnim.transform = CGAffineTransformMakeScale(0.0, 0.0)
    }

    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3, delay: 0.0, options: [], animations: {
        self.imageAnim.transform = CGAffineTransformIdentity
        }, completion: nil)
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
