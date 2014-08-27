//
//  ViewsViewController.swift
//  KitchenSwift
//
//  Created by Alexey Chulochnikov on 27.08.14.
//  Copyright (c) 2014 Alexey Chulochnikov. All rights reserved.
//

import UIKit

class ViewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	@IBOutlet weak var viewsTableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		viewsTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
	}
	
	var items = ["Events Propagation", "Events Interaction", "List View", "Image Views", "Scroll Views", "Table Views", "Web Views", "Alert Dialog", "Options Dialog", "Remove Views", "zIndex", "Email Dialog", "Point Conversion", "View w/ Size", "Map View", "Map View with Routing", "Events", "Events with Views", "Coverflow View", "Dashboard View", "Auto Height", "Min Height", "Mixing Views", "Gradient", "Hide/Show"]

	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return self.items.count;
	}
	
	func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		var cell:UITableViewCell = viewsTableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
		
		cell.textLabel.text = self.items[indexPath.row]
		cell.selectionStyle = UITableViewCellSelectionStyle.None
		cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
		
		return cell
	}
}
