//
//  ContactListTwoViewController.swift
//  ContactListApp
//
//  Created by Anton Boev on 18.10.2022.
//

import UIKit

class ContactListTwoViewController: UITableViewController {
    
    var persons: [Person] = []

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactList = tableView.dequeueReusableCell(withIdentifier: "ContactListTwo", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = contactList.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        contactList.contentConfiguration = content
        
        return contactList
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
