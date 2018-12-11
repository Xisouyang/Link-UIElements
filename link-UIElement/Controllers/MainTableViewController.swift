//
//  MainTableViewController.swift
//  link-UIElement
//
//  Created by Stephen Ouyang on 12/10/18.
//  Copyright © 2018 Stephen Ouyang. All rights reserved.
//

import UIKit

class MainTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var uiViewArr: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Must set delegate and dataSource for tableView to show changes
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
       uiViewArr.append("Table View")
       uiViewArr.append("Collection View")

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ mainTableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if uiViewArr[indexPath.row] == "Table View" {
            self.performSegue(withIdentifier: "tableViewIdentifier", sender: self)
        } else if uiViewArr[indexPath.row] == "Collection View" {
            self.performSegue(withIdentifier: "collectionViewIdentifier", sender: self)
        }
    }
    
    func tableView(_ mainTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uiViewArr.count
    }
    
    func tableView(_ mainTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier") as! ATableViewCell
        cell.textLabel?.text = uiViewArr[indexPath.row]
        return cell
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
