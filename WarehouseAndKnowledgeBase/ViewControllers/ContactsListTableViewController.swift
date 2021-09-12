//
//  ContactsListTableViewController.swift
//  WarehouseAndKnowledgeBase
//
//  Created by Ravil on 12.09.2021.
//

import UIKit

class ContactsListTableViewController: UITableViewController {

    var contacts: [Contact] = []
    private let contact = Contact.getContactData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contact.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contact", for: indexPath)

        var content = cell.defaultContentConfiguration()
        let contact = contact[indexPath.row]
        
        content.text = contact.title
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
