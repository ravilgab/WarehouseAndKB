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
    
    @IBOutlet weak var itemInStockStepper: UIStepper!
    @IBOutlet weak var itemQuantityNormallyStepper: UIStepper!
    
    var item: Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemImageView.image = UIImage(named: item.title)
        itemImageView.layer.cornerRadius = 15
        itemTitleLabel.text = item.title
        itemsInStockTF.text = "\(item.quantityInStock)"
        itemsQuantityNormallyTF.text = "\(item.quantityNormaly)"
        
        itemInStockStepper.value = Double(item.quantityInStock)
        itemQuantityNormallyStepper.value = Double(item.quantityNormaly)
    }
    
    @IBAction func itemInStockStepper(_ sender: UIStepper) {
        itemsInStockTF.text = "\(Int(sender.value).description)"
    }
    
    @IBAction func itemQuantityNormallyStepperPressed(_ sender: UIStepper) {
        itemsQuantityNormallyTF.text = "\(Int(sender.value).description)"
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {

    }
    
    
}
