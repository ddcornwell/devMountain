//
//  FavListTableViewController.swift
//  FavThing
//
//  Created by DANIEL CORNWELL on 12/9/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import UIKit

class FavListTableViewController: UITableViewController {

  
  
    @IBOutlet var tableView: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    


    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FavoritlistController.sharedController.favoritlists.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoritCell", for: indexPath)
        
     
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Favoritlists"
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let favoritlist = FavoritlistController.sharedController.favoritlists[indexPath.row]
            FavoritlistController.sharedController.delete(favoritlist: favoritlist)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tofavoritDetail" {
            let favoritVC = segue.destination as? FavListTableViewController
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let favoritlists = FavoritlistController.sharedController.favoritlists[indexPath.row]
            favoritVC?.title = title
            
        }
    }
}
