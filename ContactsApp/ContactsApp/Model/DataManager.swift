//
//  File.swift
//  ContactsApp
//
//  Created by Тадевос Курдоглян on 27.07.2021.
//

class DataManager {

    static let shared = DataManager()
    
    var names = ["Ted", "Ann", "Tim", "Bob"]
    var surnames = ["Butler", "Smith", "Williams", "Black"]
    var phones = ["3345243", "445672", "557644", "4564334"]
    var emails = ["rrr@mail.ru", "vvv@mail.ru", "ddd@mail.ru", "ttt@mail.ru"]
    
    private init() {
        names = names.shuffled()
        surnames = surnames.shuffled()
        phones = phones.shuffled()
        emails = emails.shuffled()
    }
}
