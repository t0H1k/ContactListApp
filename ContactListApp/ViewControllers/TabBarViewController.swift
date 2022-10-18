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
        
        let persons = Person.getContactList()
        contactListOne.persons = persons
        contactListTwo.persons = persons
    }
}
