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
            Item(title: "Кабель USB A to B 2.0", quantityInStock: 30, quantityNormaly: 10),
            Item(title: "Кабель USB A to B 3.0", quantityInStock: 35, quantityNormaly: 10),
            Item(title: "Кабель DisplayPort", quantityInStock: 50, quantityNormaly: 20),
            Item(title: "Хэдсет type-c", quantityInStock: 50, quantityNormaly: 100),
            Item(title: "Сумка HP", quantityInStock: 99, quantityNormaly: 100),
            Item(title: "Зарядка HP 65w круглая", quantityInStock: 54, quantityNormaly: 100),
            Item(title: "Зарядка HP 65w type-c", quantityInStock: 34, quantityNormaly: 100),
            Item(title: "Зарядка HP 90w круглая", quantityInStock: 45, quantityNormaly: 100),
            Item(title: "Док станция HP 65w", quantityInStock: 36, quantityNormaly: 100),
            Item(title: "Док станция HP 90w", quantityInStock: 34, quantityNormaly: 100),
            Item(title: "Док станция HP 120w", quantityInStock: 12, quantityNormaly: 100),
            Item(title: "Док станция HP travel", quantityInStock: 54, quantityNormaly: 100),
            Item(title: "Беспроводной комплект HP", quantityInStock: 46, quantityNormaly: 40),
            Item(title: "Монитор HP e240 (старый)", quantityInStock: 34, quantityNormaly: 20),
            Item(title: "Монитор HP e243 (новый)", quantityInStock: 2, quantityNormaly: 20),
            
            Item(title: "Мышка HP travel mouse", quantityInStock: 77, quantityNormaly: 100),
            Item(title: "Мышка Logitech m590", quantityInStock: 65, quantityNormaly: 100),
            Item(title: "Чехол для iPad Air 2", quantityInStock: 0, quantityNormaly: 30),
            Item(title: "Чехол для iPad pro", quantityInStock: 10, quantityNormaly: 30),
            Item(title: "Чехол для iPad 10.2", quantityInStock: 48, quantityNormaly: 50),
            Item(title: "Чехол для iPad 9.7", quantityInStock: 0, quantityNormaly: 30),
            Item(title: "Гарнитура Earpods 3.5", quantityInStock: 35, quantityNormaly: 50),
            Item(title: "Кабель Lightning", quantityInStock: 26, quantityNormaly: 50),
            Item(title: "Автомобильный Lightning", quantityInStock: 2, quantityNormaly: 20),
            Item(title: "Автомобльный type-c", quantityInStock: 2, quantityNormaly: 20),
            Item(title: "Переходник type-c to HDMI", quantityInStock: 40, quantityNormaly: 50),
            Item(title: "Переходник type-c to VGA", quantityInStock: 44, quantityNormaly: 50),
            Item(title: "Кабель type-c", quantityInStock: 66, quantityNormaly: 50),
            Item(title: "Стекло для iPhone SE2", quantityInStock: 6, quantityNormaly: 10),
            Item(title: "Чехол для iPhone SE2", quantityInStock: 2, quantityNormaly: 10),
            Item(title: "Клавиатура для iPad pro", quantityInStock: 2, quantityNormaly: 20),
            Item(title: "Стекло для iPad 10.2", quantityInStock: 41, quantityNormaly: 50),
            Item(title: "Стекло для iPad air 2", quantityInStock: 48, quantityNormaly: 50),
            Item(title: "Стекло для iPad pro", quantityInStock: 56, quantityNormaly: 50),
            Item(title: "Гарнитура Xiaomi type-c", quantityInStock: 45, quantityNormaly: 50),
            Item(title: "Адаптер iPad 18w", quantityInStock: 49, quantityNormaly: 50),
            Item(title: "Адаптер iPad 12w", quantityInStock: 51, quantityNormaly: 50)
        ]
    }
}
