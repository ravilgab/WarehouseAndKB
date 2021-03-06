//
//  Contact.swift
//  WarehouseAndKnowledgeBase
//
//  Created by Ravil on 12.09.2021.
//

struct Contact {
    let title: String
    let phoneNumber: String
    let email: String
}

extension Contact {
    static func getContactData() -> [Contact] {
        [
            Contact(title: "МТС поддержка", phoneNumber: "8(800)234-05-24", email: "inna.azarova_ext@novartis.com"),
            Contact(title: "CRM поддержка", phoneNumber: "8(800)7000-670", email: "crm.support@whatever.com"),
            Contact(title: "Что-то", phoneNumber: "8(800)222-33-44", email: "crm.support@whatever.com")
        ]
    }
}
