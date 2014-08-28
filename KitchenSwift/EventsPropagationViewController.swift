//
//  EventsPropagationViewController.swift
//  KitchenSwift
//
//  Created by Alexey Chulochnikov on 28.08.14.
//  Copyright (c) 2014 Alexey Chulochnikov. All rights reserved.
//

import UIKit

class EventsPropagationViewController: UIViewController {
	
	@IBOutlet weak var aLbl: UILabel!
	@IBOutlet weak var bLbl: UILabel!
	@IBOutlet weak var cLbl: UILabel!
	@IBOutlet weak var dLbl: UILabel!
	
	@IBOutlet weak var aView: UIView!
	@IBOutlet weak var bView: UIView!
	@IBOutlet weak var cView: UIView!
	@IBOutlet weak var dView: UIView!
	
	override func viewDidLoad() {
		var lblsArray = [aLbl, bLbl, cLbl, dLbl]
		var viewsArray = [aView, bView, cView, dView]
		
		/*for label in lblsArray {
			println("create tap")
			var tapGesture = UITapGestureRecognizer(target: self, action: "lblClick")
			self.view.addGestureRecognizer(tapGesture)
		}
		
		for view in viewsArray {
			var tapGesture = UITapGestureRecognizer(target: self, action: "viewClick")
			self.view.addGestureRecognizer(tapGesture)
		}*/
		
		super.viewDidLoad()
	}
	
	@IBAction func lblClick(sender: UITapGestureRecognizer) {
		println("label is clicked")
	}
	
	@IBAction func viewClick(sender: UITapGestureRecognizer) {
		println("view is clicked")
	}
}
