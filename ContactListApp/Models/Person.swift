//
//  Person.swift
//  ContactListApp
//
//  Created by Anton Boev on 18.10.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.data.name.shuffled()
        let surnames = DataManager.data.surname.shuffled()
        let phoneNumbers = DataManager.data.phoneNumber.shuffled()
        let emails = DataManager.data.email.shuffled()
        
        let numberOfMixes = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<numberOfMixes {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
