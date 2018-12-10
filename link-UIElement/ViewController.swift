//
//  ViewController.swift
//  link-UIElement
//
//  Created by Stephen Ouyang on 12/10/18.
//  Copyright © 2018 Stephen Ouyang. All rights reserved.
//

import Foundation
import UIKit

// Must add tableView Delegate and Data Source
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableViewData: [String] = []
    let string = "Hello World"
    
    
    //returns the amount of rows the tableView will have
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
        
    }
    
    //returns the cell itself
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier") as! aTableViewCell
        let text = tableViewData[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Must set delegate and dataSource for tableView to show changes
        tableView.delegate = self
        tableView.dataSource = self
        
        for i in 0...10 {
            tableViewData.append(string)
        }
    }
}

