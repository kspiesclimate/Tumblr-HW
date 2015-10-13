//
//  composeViewController.swift
//  Tumblr HW
//
//  Created by Katie Spies on 10/10/15.
//  Copyright (c) 2015 Katie Spies. All rights reserved.
//

import UIKit

class composeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.link.frame.origin.y = 768
        self.quote.frame.origin.y = 568
        self.vide.frame.origin.y = 768
        self.chat.frame.origin.y = 568
        self.photo.frame.origin.y = 768
        self.text.frame.origin.y = 568
    
        UIView.animateWithDuration(1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: nil, animations: { () -> Void in
            //animation code
            self.link.frame.origin.y = 253
            self.quote.frame.origin.y = 253
            self.vide.frame.origin.y = 253
            self.chat.frame.origin.y = 129
            self.photo.frame.origin.y = 129
            self.text.frame.origin.y = 129
            
            
            }) { (completed) -> Void in
                //completed animation
        }
    }

    @IBOutlet weak var link: UIButton!
    @IBOutlet weak var quote: UIButton!
    @IBOutlet weak var vide: UIButton!
    @IBOutlet weak var chat: UIButton!
    @IBOutlet weak var photo: UIButton!
    @IBOutlet weak var text: UIButton!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }
    
    @IBAction func nevermind(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: -1, options: nil, animations: { () -> Void in
            //animation code
            self.link.frame.origin.y = -200
            self.quote.frame.origin.y = -100
            self.vide.frame.origin.y = -200
            self.chat.frame.origin.y = -100
            self.photo.frame.origin.y = -200
            self.text.frame.origin.y = -100
            
            
            }) { (completed) -> Void in
                //completed animation
                //dismiss this page
        }
        
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
