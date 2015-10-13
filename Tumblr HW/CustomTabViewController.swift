//
//  CustomTabViewController.swift
//  Tumblr HW
//
//  Created by Katie Spies on 10/10/15.
//  Copyright (c) 2015 Katie Spies. All rights reserved.
//

import UIKit

class CustomTabViewController: UIViewController {

    @IBOutlet weak var explorePopover: UIImageView!
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var buttons: [UIButton]!

    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var ComposeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
       homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")as! UIViewController
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")as! UIViewController
        ComposeViewController = storyboard.instantiateViewControllerWithIdentifier("composeViewController")as! UIViewController
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")as! UIViewController
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")as! UIViewController
        
        
        viewControllers = [homeViewController, searchViewController, ComposeViewController, accountViewController, trendingViewController]
        
        contentView.addSubview(homeViewController.view)
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        let previousVC = viewControllers[previousIndex]
       
//        while sender.tag != 1 {
//            UIView.animateWithDuration(0.2, delay: 0.0, usingSpringWithDamping: 0, initialSpringVelocity: 5, options: nil, animations: { () -> Void in
//                //animation code
//                self.explorePopover.frame.origin.y = 430
//                }, completion: { (completed) -> Void in
//                    //completion code
//                    
//                    UIView.animateWithDuration(0.2, delay: 0.0, usingSpringWithDamping: 0, initialSpringVelocity: 5, options: nil, animations: { () -> Void in
//                        //animation code
//                        self.explorePopover.frame.origin.y = 450
//                        }, completion: { (completed) -> Void in
//                            //completion code
//                            self.explorePopover.frame.origin.y = 430
//                    })
//            })
//
//        }
        
        if sender.tag == 0 {
            homeViewController.view.frame = contentView.frame
            contentView.addSubview(homeViewController.view)
            buttons[previousIndex].selected = false
            sender.selected = true
            buttons[previousIndex] = sender
            
        }
        else if sender.tag == 1 {
            searchViewController.view.frame = contentView.frame
            contentView.addSubview(searchViewController.view)
            buttons[previousIndex].selected = false
            sender.selected = true
            buttons[previousIndex] = sender
        }
        else if sender.tag == 2 {
            ComposeViewController.view.frame = contentView.frame
            contentView.addSubview(ComposeViewController.view)
            buttons[previousIndex].selected = false
            sender.selected = true
            buttons[previousIndex] = sender
        }
        else if sender.tag == 3 {
            accountViewController.view.frame = contentView.frame
            contentView.addSubview(accountViewController.view)
            buttons[previousIndex].selected = false
            sender.selected = true
            buttons[previousIndex] = sender
        }
        else if sender.tag == 4 {
            trendingViewController.view.frame = contentView.frame
            contentView.addSubview(trendingViewController.view)
            buttons[previousIndex].selected = false
            sender.selected = true
            buttons[previousIndex] = sender
        }

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
