//
//  RKUTextField.swift
//  PhotoFilters
//
//  Created by Misael Pérez Chamorro on 9/23/14.
//  Copyright (c) 2014 Misael Pérez Chamorro. All rights reserved.
//

import UIKit

class RKUTextField: UITextField {
  
  var textView :RKULeftView
  
   required init(coder aDecoder: NSCoder) {
    self.textView = RKULeftView(frame:CGRect(x: 0.0, y: 0.0, width: 100.0, height: 40.0))
    super.init(coder: aDecoder)
    
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setupLeftView()
  }
  
  func setupLeftView () {
    self.leftView = self.textView
    self.leftViewMode = UITextFieldViewMode.Always
  }
  
  
  func setupFieldName (name :String) {
    self.textView.addFieldName(name)
  }
  
  // Only override drawRect: if you perform custom drawing.
  // An empty implementation adversely affects performance during animation.
  override func drawRect(rect: CGRect)
  {
    var context = UIGraphicsGetCurrentContext()
    CGContextSetLineWidth(context, 1.0)
    CGContextMoveToPoint(context, 0.0, self.frame.size.height-1)
    CGContextAddLineToPoint(context, self.frame.size.width ,self.frame.size.height-1)
    CGContextSetStrokeColorWithColor(context, UIColor.lightGrayColor().CGColor)
    
    CGContextStrokePath(context)
  }
  
}
