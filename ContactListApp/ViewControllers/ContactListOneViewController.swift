//
//  ContactListOneViewController.swift
//  ContactListApp
//
//  Created by Anton Boev on 18.10.2022.
//

import UIKit

class ContactListOneViewController: UITableViewController {
    
    var persons: [Person] = []

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactList = tableView.dequeueReusableCell(withIdentifier: "ContactListOne", for: indexPath)
        var content = contactList.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        contactList.contentConfiguration = content
        
        return contactList
    }
    
//MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? ContactListDetailsViewController else { return }
            detailVC.person = persons[indexPath.row]
        }
    }
}


