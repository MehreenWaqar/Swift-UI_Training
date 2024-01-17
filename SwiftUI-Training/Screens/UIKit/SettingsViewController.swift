//
//  SettingsViewController.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 08/01/2024.
//

import UIKit
import SwiftUI

class SettingsViewController: UIViewController {

    @IBOutlet var tableView:  UITableView!

    var delegate: PassingData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }

}


extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.row == 0{
            cell.textLabel?.text = "View Profile"
        } else {
            cell.textLabel?.text = "Switch to Tab 1 Root"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.row == 0{
            let swiftUIView = ProfileScreen()
            let hostingController = UIHostingController(rootView: swiftUIView)
            self.navigationController?.pushViewController(hostingController, animated: true)
        } else {
            delegate?.navigateToRoot()
        }
    }
    
}
