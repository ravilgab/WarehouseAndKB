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
    
    @IBOutlet weak var saveButton: UIButton!
    
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
        
        saveButton.tintColor = #colorLiteral(red: 0.01773617603, green: 0.3761797547, blue: 0.6635038257, alpha: 1)
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
