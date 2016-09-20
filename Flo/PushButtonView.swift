//
//  PushButtonView.swift
//  Flo
//
//  Created by Oliver Short on 9/20/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//

import UIKit

@IBDesignable

class PushButtonView: UIButton {

    override func drawRect (rect: CGRect) {
        var path = UIBezierPath (ovalInRect: rect)
        UIColor.blueColor().setFill()
        path.fill()
        
        //set up the width and height variables
        //for the horizontal stroke
        let plusHeight: CGFloat = 3.0
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        
        //create the path
        var plusPath = UIBezierPath()
        
        //set the path's line width to the height of the stroke
        plusPath.lineWidth = plusHeight
        
        //move the initial point of the path
        //to the start of the horizontal stroke
        plusPath.moveToPoint(CGPoint(
            x:bounds.width/2 - plusWidth/2,
            y:bounds.height/2))
        
        //add a point to the path at the end of the stroke
        plusPath.addLineToPoint(CGPoint(
            x:bounds.width/2 + plusWidth/2,
            y:bounds.height/2))
        
        //set the stroke color
        UIColor.whiteColor().setStroke()
        
        //draw the stroke
        plusPath.stroke()
        
        }
    
    }

