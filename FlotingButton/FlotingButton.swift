//
//  FlotingButton.swift
//  FlotingButton
//
//  Created by Rashid on 13/01/2019.
//  Copyright © 2019 Rashid. All rights reserved.
//

import UIKit

class FlotingButton: UIButtonX {
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
    
        UIView.animate(withDuration: 0.2, animations: {
            if self.transform == .identity {
                self.transform = CGAffineTransform(rotationAngle: 45 * (.pi / 180))
                self.backgroundColor = #colorLiteral(red: 0.5569, green: 0.0745, blue: 0.2902, alpha: 1)
 
            } else {
                self.backgroundColor = #colorLiteral(red: 0.7137, green: 0.0745, blue: 0.3412, alpha: 1)
                self.transform = .identity
 
            }
        }) { (true) in
 
        }
        
 
        return super.beginTracking(touch, with: event)
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        
    }
    
}
