//
//  WarehouseListTableViewController.swift
//  WarehouseAndKnowledgeBase
//
//  Created by Ravil on 12.09.2021.
//

import UIKit

class WarehouseListTableViewController: UITableViewController {

    private var items = Item.getItemData()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        animateTableView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WarehouseItems", for: indexPath)

        var content = cell.defaultContentConfiguration()
        let item = items[indexPath.row]
        
        content.text = item.title
        content.secondaryText = "\(item.quantityInStock)"
        content.secondaryTextProperties.font = .boldSystemFont(ofSize: 16)
        content.image = UIImage(named: item.title)
        content.imageProperties.cornerRadius = 14
        
        if item.quantityInStock == 0 {
            content.secondaryTextProperties.color = .red
        } else if item.quantityInStock <= item.quantityNormaly / 3 {
            content.secondaryTextProperties.color = .orange
        }
        
        cell.contentConfiguration = content

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let warehouseDetailedVC = segue.destination as? WarehouseDetailedViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let item = items[indexPath.row]
        
        warehouseDetailedVC.item = item
    }
    
    func animateTableView() {
        tableView.reloadData()
        
        let cells = tableView.visibleCells
        let tableVIewHeight = tableView.bounds.height
        var delayForCells: Double = 0
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: tableVIewHeight, y: 0)
            
            UIView.animate(withDuration: 0.4,
                           delay: delayForCells * 0.02,
                           usingSpringWithDamping: 1,
                           initialSpringVelocity: 1,
                           options:  .curveEaseInOut,
                           animations: {
                cell.transform = CGAffineTransform.identity
            },
                           completion: nil)
            delayForCells += 1
        }
    }
    
}


