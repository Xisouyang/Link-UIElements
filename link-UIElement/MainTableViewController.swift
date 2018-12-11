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
    
    var uiViewArr: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Must set delegate and dataSource for tableView to show changes
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
       uiViewArr.append(mainTableView)

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ mainTableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "tableViewIdentifier", sender: self)
    }
    
    func tableView(_ mainTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uiViewArr.count
    }
    
    func tableView(_ mainTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier") as! aTableViewCell
        let mainTableViewText = "tableView"
        cell.textLabel?.text = mainTableViewText
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
