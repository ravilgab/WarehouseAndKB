//
//  ContactsViewController.swift
//  WarehouseAndKnowledgeBase
//
//  Created by Ravil on 12.09.2021.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "contaaaa"
        //contactNameLabel.text = contact.email
    }
}
