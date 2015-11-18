//
//  ViewController.swift
//  LoginAnimation
//
//  Created by 张朝伟 on 15/11/18.
//  Copyright © 2015年 zcwlwen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bubble1: UIImageView!
    @IBOutlet weak var bubble2: UIImageView!
    @IBOutlet weak var bubble3: UIImageView!
    @IBOutlet weak var bubble4: UIImageView!
    @IBOutlet weak var bubble5: UIImageView!
    @IBOutlet weak var bubble6: UIImageView!
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var logoocal: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //初始化气泡透明度
        self.bubble1.alpha = 0.1
        self.bubble2.alpha = 0.1
        self.bubble3.alpha = 0.1
        self.bubble4.alpha = 0.1
        self.bubble5.alpha = 0.1
        self.bubble6.alpha = 0.1
        //初始化气泡大小
        self.bubble1.transform = CGAffineTransformMakeScale(0.5, 0.5)
        self.bubble2.transform = CGAffineTransformMakeScale(0.5, 0.5)
        self.bubble3.transform = CGAffineTransformMakeScale(0.5, 0.5)
        self.bubble4.transform = CGAffineTransformMakeScale(0.5, 0.5)
        self.bubble5.transform = CGAffineTransformMakeScale(0.5, 0.5)
        self.bubble6.transform = CGAffineTransformMakeScale(0.5, 0.5)
        
        //初始化logo
//        print(self.logo.center.x)
//        print(self.logoocal.center.x)
//        
//        self.logo.center.x -= self.view.bounds.width
//        self.logoocal.center.x -= self.view.bounds.width
//        
//        print(self.logo.center.x)
//        print(self.logoocal.center.x)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        //初始化logo
        self.logo.center.x -= self.view.bounds.width
        self.logoocal.center.x -= self.view.bounds.width
        
        UIView.animateWithDuration(5, delay: 0, options: [], animations: {
            self.bubble1.transform = CGAffineTransformMakeScale(1.0, 1.0)
            self.bubble2.transform = CGAffineTransformMakeScale(1.0, 1.0)
            self.bubble3.transform = CGAffineTransformMakeScale(1.0, 1.0)
            self.bubble4.transform = CGAffineTransformMakeScale(1.0, 1.0)
            self.bubble5.transform = CGAffineTransformMakeScale(1.0, 1.0)
            self.bubble6.transform = CGAffineTransformMakeScale(1.5, 1.5)
            
            }, completion: nil )
        
        
        UIView.animateWithDuration(3, delay: 3, options: [.Repeat,.Autoreverse], animations: {
            self.bubble1.transform = CGAffineTransformMakeScale(1.3, 0.9)
            self.bubble2.transform = CGAffineTransformMakeScale(1.3, 0.9)
            self.bubble3.transform = CGAffineTransformMakeScale(1.3, 0.9)
            self.bubble4.transform = CGAffineTransformMakeScale(1.3, 0.9)
            self.bubble5.transform = CGAffineTransformMakeScale(1.3, 0.9)
            self.bubble6.transform = CGAffineTransformMakeScale(1.6, 1.4)
            
            

            
            }, completion: nil )
        
        
        UIView.animateWithDuration(6, delay: 1, options: [.Repeat,.Autoreverse], animations: {
            self.bubble1.center.x = self.bubble1.center.x + 50
            self.bubble2.center.x = self.bubble2.center.x + 30
           
            }, completion: nil )
        
        UIView.animateWithDuration(0.5, animations: {
            self.bubble1.alpha = 1
            self.bubble2.alpha = 1
            self.bubble3.alpha = 1
            self.bubble4.alpha = 1
            self.bubble5.alpha = 1
            self.bubble6.alpha = 1
            
           
            
        })
        
        
        
        UIView.animateWithDuration(5, delay: 2, options: [.Repeat,.Autoreverse], animations: {
        
            self.bubble3.center.x = self.bubble3.center.x + 80
            self.bubble6.center.x = self.bubble6.center.x + 90
    
            }, completion: nil )
        
        
        
        UIView.animateWithDuration(3, delay: 1.5, options: [.Repeat,.Autoreverse], animations: {
            
            self.bubble4.center.y = self.bubble4.center.y - 50
            self.bubble5.center.x = self.bubble5.center.x + 70
            
            }, completion: nil )
        
        
        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: [], animations: {
            self.logo.center.x += self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0.4, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: [], animations: {
            self.logoocal.center.x += self.view.bounds.width
            }, completion: nil)
        
        
    }

}

