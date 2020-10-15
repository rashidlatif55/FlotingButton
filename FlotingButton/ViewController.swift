//
//  ViewController.swift
//  FlotingButton
//
//  Created by Rashid on 13/01/2019.
//  Copyright © 2019 Rashid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var menuView : UIViewX!
    
    @IBOutlet weak var btnPlus: FlotingButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //        self.btnPlus.borderWidth = 3.0
        menuView.transform = CGAffineTransform(scaleX: 0.30, y: 0.30)
        btnPlus.layer.shadowColor = UIColor.clear.cgColor
        menuView.layer.borderWidth = 15
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func munuTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.6 ,
                       delay: -1,
                       usingSpringWithDamping: 0.7,
                       initialSpringVelocity: 0,
                       options: .allowUserInteraction,
                       animations: {
                        if self.menuView.transform == .identity {
                            self.menuView.transform = CGAffineTransform(scaleX: 0.30, y: 0.30)
                            self.menuView.layer.borderWidth = 15
                            
                        } else {
                            self.menuView.transform = .identity
                            self.menuView.layer.borderWidth = 4
                            
                        }        }, completion: {
                            (value: Bool) in
                            
                        })
        
    }
    
}

