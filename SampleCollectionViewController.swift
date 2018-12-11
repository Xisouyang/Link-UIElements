//
//  SampleCollectionViewController.swift
//  link-UIElement
//
//  Created by Stephen Ouyang on 12/10/18.
//  Copyright © 2018 Stephen Ouyang. All rights reserved.
//

import UIKit

class SampleCollectionViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var sampleCollectionView: UICollectionView!
    
    var numArr: [Int] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ACollectionViewCell.identifier, for: indexPath) as! ACollectionViewCell
        cell.aLabel.text = String(numArr[indexPath.item])
        cell.backgroundColor = UIColor(red: cell.random(), green: cell.random(), blue: cell.random(), alpha: 1)
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sampleCollectionView.delegate = self
        sampleCollectionView.dataSource = self
        
        for i in 0...101 {
            numArr.append(i)
        }

        // Do any additional setup after loading the view.
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
