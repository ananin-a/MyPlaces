//
//  NewPlacesTableViewController.swift
//  MyPlaces
//
//  Created by Alexey on 10.06.2020.
//  Copyright © 2020 ByteApp. All rights reserved.
//

import UIKit

class NewPlacesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView() // Removing unnecessary markup
    }
    
    // MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
    
}

// MARK: - Text Field Delegate

extension NewPlacesTableViewController: UITextFieldDelegate {
    // Hide keyboard by pressing a key "DONE"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}
