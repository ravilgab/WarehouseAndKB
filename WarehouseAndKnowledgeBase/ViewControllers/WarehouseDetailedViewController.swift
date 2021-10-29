//
//  WarehouseDetailedViewController.swift
//  WarehouseAndKnowledgeBase
//
//  Created by Ravil on 12.09.2021.
//

import UIKit

class WarehouseDetailedViewController: UIViewController {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var itemsInStockTF: UITextField!
    @IBOutlet weak var itemsQuantityNormallyTF: UITextField!
    
    var item: Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemImageView.image = UIImage(named: item.title)
        itemImageView.layer.cornerRadius = 15
        itemTitleLabel.text = item.title
        itemsInStockTF.text = "\(item.quantityInStock)"
        itemsQuantityNormallyTF.text = "\(item.quantityNormaly)"
    }
    


}
