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
class SampleTableViewController: UIViewController {
    
    @IBOutlet weak var sampleTableView: UITableView!
    var tableViewData: [String] = []
    let string = "Hello World"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Must set delegate and dataSource for tableView to show changes
        sampleTableView.delegate = self
        sampleTableView.dataSource = self
        
        for i in 0...100 {
            tableViewData.append(string)
        }
    }
}

extension SampleTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    //returns the amount of rows the tableView will have
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableViewData.count
        
    }
    
    //returns the cell itself
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier") as! ATableViewCell
        let text = tableViewData[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
}

