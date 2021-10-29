//
//  Item.swift
//  WarehouseAndKnowledgeBase
//
//  Created by Ravil on 27.10.2021.
//

import Foundation

struct Item {
    let title: String
    let quantityInStock: Int
    let quantityNormaly: Int
}

extension Item {
    static func getItemData() -> [Item]{
        [
            Item(title: "Кабель USB A - B 2.0", quantityInStock: 30, quantityNormaly: 10),
            Item(title: "Кабель USB A - B 3.0", quantityInStock: 35, quantityNormaly: 10),
            Item(title: "cable_dp", quantityInStock: 50, quantityNormaly: 20),
            Item(title: "headset_jabra40", quantityInStock: 50, quantityNormaly: 100),
            Item(title: "hp_bag", quantityInStock: 99, quantityNormaly: 100),
            Item(title: "hp_charger_65w_g2", quantityInStock: 54, quantityNormaly: 100),
            Item(title: "hp_charger_65w_g3", quantityInStock: 34, quantityNormaly: 100),
            Item(title: "hp_charger_90w_g2", quantityInStock: 45, quantityNormaly: 100),
            Item(title: "hp_dock_65w", quantityInStock: 36, quantityNormaly: 100),
            Item(title: "hp_dock_90w", quantityInStock: 34, quantityNormaly: 100),
            Item(title: "hp_dock_120w", quantityInStock: 12, quantityNormaly: 100),
            Item(title: "hp_dock_travel", quantityInStock: 54, quantityNormaly: 100),
            Item(title: "hp_keyboard", quantityInStock: 46, quantityNormaly: 40),
            Item(title: "hp_monitor_e240", quantityInStock: 34, quantityNormaly: 20),
            Item(title: "hp_monitor_e243", quantityInStock: 2, quantityNormaly: 20),
        ]
    }
}
