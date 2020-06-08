//
//  MainTableViewController.swift
//  MyPlaces
//
//  Created by Alexey on 08.06.2020.
//  Copyright © 2020 ByteApp. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let restraintName = [
        "Инари", "Васильки", "Ренессанс", "Ресторан Халиф Жуковский",
        "Малышок", "Одна тонна", "SOVA", "Колесо",
        "Ресторан", "ОРИОН", "Надежды", "Чентуриппе"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restraintName.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restraintName[indexPath.row]
        return cell
    }
    
    
    // MARK: - Navigation
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
