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
        
        let dataManager = DataManager.init()
        
        for i in 0..<dataManager.names.count {
            let person = Person(
                name: dataManager.names[i],
                surname: dataManager.surnames[i],
                phone: dataManager.phones[i],
                email: dataManager.emails[i]
            )
            persons.append(person)
        }
        return persons
    }
}
