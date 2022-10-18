//
//  TabBarViewController.swift
//  ContactListApp
//
//  Created by Anton Boev on 18.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers()
    }
    
    private func setViewControllers() {
        guard let contactListOne = viewControllers?.first as? ContactListOneViewController else { return }
        guard let contactListTwo = viewControllers?.last as? ContactListTwoViewController else { return }
        
        let mixesContactList = Person.getContactList()
        contactListOne.persons = mixesContactList
        contactListTwo.persons = mixesContactList
    }
}
