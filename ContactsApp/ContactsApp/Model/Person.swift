//
//  Person.swift
//  ContactsApp
//
//  Created by Тадевос Курдоглян on 27.07.2021.
//

struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
    var fullname: String {"\(name) \(surname)"}
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        for i in 0..<DataManager.shared.names.count {
            let person = Person(
                name: DataManager.shared.names[i],
                surname: DataManager.shared.surnames[i],
                phone: DataManager.shared.phones[i],
                email: DataManager.shared.emails[i]
            )
            persons.append(person)
        }
        return persons
    }
}
