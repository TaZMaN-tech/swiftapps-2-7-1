//
//  PersonsTabBarController.swift
//  ContactsApp
//
//  Created by Тадевос Курдоглян on 27.07.2021.
//

import UIKit

class PersonsTabBarController: UITabBarController {
    
    var persons = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let navigationVC = tabBarController?.viewControllers?.first as? UINavigationController else { return }
        let contactsVC = navigationVC.topViewController as! ContactsTableViewController
        contactsVC.persons = persons
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let viewControllers = tabBarController?.viewControllers else { return }
//        for _ in viewControllers {
//            if let contactsTVC = UITableViewController() as? ContactsTableViewController {
//                contactsTVC.persons = persons
//            }
//        }
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = tabBarController?.viewControllers?.first as? UINavigationController else { return }
        let contactsVC = navigationVC.topViewController as! ContactsTableViewController
        contactsVC.persons = persons
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
