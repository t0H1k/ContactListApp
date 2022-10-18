//
//  ContactListDetailsViewController.swift
//  ContactListApp
//
//  Created by Anton Boev on 18.10.2022.
//

import UIKit

class ContactListDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        phoneNumberLabel.text = "Phone number: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
