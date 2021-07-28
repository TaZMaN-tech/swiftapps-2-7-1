//
//  DetailContactsTableViewController.swift
//  ContactsApp
//
//  Created by Тадевос Курдоглян on 28.07.2021.
//

import UIKit

class DetailContactsTableViewController: UITableViewController {

    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()

        
        content.text = indexPath.row == 0 ? "Phone: \(person.phone)" : "Email: \(person.email)"
        cell.contentConfiguration = content
        
        return cell
    }
}
