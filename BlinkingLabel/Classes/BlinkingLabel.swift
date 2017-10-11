//
//  BlinkingLabel.swift
//  Pods-BlinkingLabel_Example
//
//  Created by Óscar Manrique on 11/10/17.
//

import UIKit


public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = [.repeat, .autoreverse]
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
