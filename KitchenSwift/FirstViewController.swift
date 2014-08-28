//
//  FirstViewController.swift
//  KitchenSwift
//
//  Created by Alexey Chulochnikov on 25.08.14.
//  Copyright (c) 2014 Alexey Chulochnikov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	@IBOutlet weak var baseUiTableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		baseUiTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

	var items: [String] = ["Tab Groups", "Window Properties", "Window Layout", "Window (Standalone)", "Views", "Custom Events", "Window Events", "Vertical Layout", "Horizontal Layout", "Tabs", "Window NavBar", "Window Toolbar", "Window Constructor", "Animation", "Modal Windows", "Custom Fonts"]
	
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return self.items.count;
	}
	
	func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		var cell:UITableViewCell = baseUiTableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
		
		cell.textLabel.text = self.items[indexPath.row]
		cell.selectionStyle = UITableViewCellSelectionStyle.None
		cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
		
		return cell
	}
	
	func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
		println("You selected cell #\(indexPath.row)!")
		let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
		
		switch indexPath.row {
		case 0:
			let tabGroupsVC: UIViewController = storyboard.instantiateViewControllerWithIdentifier("tabGroups") as UIViewController
			tabGroupsVC.title = "Tab Groups"
			self.navigationController.pushViewController(tabGroupsVC, animated: true)
		case 1:
			let wndPropVC: UIViewController = storyboard.instantiateViewControllerWithIdentifier("wndProp") as UIViewController
			wndPropVC.title = "Window Properties"
			self.navigationController.pushViewController(wndPropVC, animated: true)
		case 4:
			let viewsVC: UIViewController = storyboard.instantiateViewControllerWithIdentifier("views") as UIViewController
			viewsVC.title = "Views"
			self.navigationController.pushViewController(viewsVC, animated: true)
		default:
			let alert = UIAlertView()
			alert.message = "\nController isn't specified"
			alert.addButtonWithTitle("OK =(")
			alert.show()
		}
	}

}


