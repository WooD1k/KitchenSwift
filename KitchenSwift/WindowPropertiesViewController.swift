//
//  WindowPropertiesViewController.swift
//  KitchenSwift
//
//  Created by Alexey Chulochnikov on 26.08.14.
//  Copyright (c) 2014 Alexey Chulochnikov. All rights reserved.
//

import Foundation
import UIKit

class WindowPropertiesViewController: UIViewController {
	@IBOutlet var parrentView: UIView!
	
	@IBOutlet weak var changeBgColor: UIButton!
	@IBOutlet weak var changeBgImage: UIButton!
	@IBOutlet weak var heightWidthToggle: UIButton!
	@IBOutlet weak var layoutDimensionProp: UIButton!
	@IBOutlet weak var borderPropertiesToggle: UIButton!
	
	@IBOutlet weak var bgImageView: UIImageView!
	
	var isParrenViewFull = true
	var isBorder = false
	
	var oldWidth: CGFloat = 0.0
	var oldHeight: CGFloat = 0.0
	
	let alert = UIAlertView()
	
	@IBAction func doChangeBgColor(sender: UIButton) {
		bgImageView.image = nil
		parrentView.backgroundColor = UIColor.purpleColor()
	}
	@IBAction func doChangeBgImage(sender: AnyObject) {
		parrentView.backgroundColor = nil
		var image: UIImage = UIImage(named: "plaster1_crk.jpg")
		bgImageView.image = image
		
	}
	
	@IBAction func doToggleHeightWidth(sender: UIButton) {
		if isParrenViewFull {
			isParrenViewFull = false
			
			oldWidth = parrentView.bounds.size.width
			oldHeight = parrentView.bounds.size.height
			
			parrentView.bounds.size.width = 200.0
			parrentView.bounds.size.height = 600.0
		} else {
			isParrenViewFull = true
			
			parrentView.bounds.size.width = oldWidth
			parrentView.bounds.size.height = oldHeight
		}
	}
	
	@IBAction func doLayoutDimensionProperties(sender: UIButton) {
		alert.message = "\nLayout/Dimension Properties isn't implemented yet"
		alert.addButtonWithTitle("OK =(")
		alert.show()
	}
	
	@IBAction func doToggleBorderProperties(sender: UIButton) {
		if isBorder {
			isBorder = false
			parrentView.layer.borderWidth = 0.0
		} else {
			isBorder = true
			parrentView.layer.borderWidth = 5.0
			parrentView.layer.borderColor = UIColor.purpleColor().CGColor
		}
	}
}