//
//  ViewController.swift
//  SimpleTable
//
//  Created by Admin on Jul/9/17.
//  Copyright © 2017 RedApple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames = ["Cafe Deadend, Homei, Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atleir","Borrke St bakers", "Haigh Chcolate","Palomino Espresso", "Upstate", "Traif", "Graha Avenue", "Waffle & Wolf", "Five lewaves", "Confessional Barafina", "Donostia", "Royal Oak", "CASK Pub"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the nubmer of rowsa in section
        return restaurantNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        //Configure the cell
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: "restaurant")
        
        return cell
    }

}





