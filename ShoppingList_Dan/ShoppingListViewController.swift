//
//  ShoppingListViewController.swift
//  ShoppingList_Dan
//
//  Created by DANIEL CORNWELL on 12/16/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import UIKit

class ShoppingListViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    
    var list: [List] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return   ListController.sharedController.lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
           
        let list = ListController.sharedController.lists[indexPath.row]
        
        cell.textLabel?.text = list.title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
 
}
