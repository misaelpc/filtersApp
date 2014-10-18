//
//  RKULeftView.swift
//  PhotoFilters
//
//  Created by Misael Pérez Chamorro on 10/16/14.
//  Copyright (c) 2014 Misael Pérez Chamorro. All rights reserved.
//

import UIKit

class RKULeftView: UIView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = UIColor.clearColor()
  }
  
  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  
  func addFieldName (name :String){
    let nameLabel = UILabel(frame:CGRectMake(self.frame.origin.x,self.frame.origin.y,self.frame.width-5,self.frame.height))
    nameLabel.text = name
    nameLabel.textAlignment = NSTextAlignment.Right
    self.addSubview(nameLabel)
  }
  
  // Only override drawRect: if you perform custom drawing.
  // An empty implementation adversely affects performance during animation.
  override func drawRect(rect: CGRect){
    var context = UIGraphicsGetCurrentContext()
    CGContextSetLineWidth(context, 1.0)
    CGContextMoveToPoint(context, 0.0, self.frame.size.height)
    CGContextAddLineToPoint(context, self.frame.size.width, self.frame.size.height)
    
    CGContextMoveToPoint(context, self.frame.size.width-1, 0.0)
    CGContextAddLineToPoint(context, self.frame.size.width-1, self.frame.size.height-6)
    
    CGContextSetStrokeColorWithColor(context, UIColor.lightGrayColor().CGColor)
    
    CGContextStrokePath(context)
  }
  

}
