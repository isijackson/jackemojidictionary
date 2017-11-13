//
//  ViewController.swift
//  Jack Emojis
//
//  Created by Jackson Isiko on 11/6/17.
//  Copyright © 2017 YOITPRO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var jacktableview: UITableView!
    var emojis = ["🙏🏿","😘","😎","😇","👿"]
    // we need answers to two questions such as how many rows should I put in the table
    // adding rows
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        jacktableview.dataSource = self
        jacktableview.delegate = self
    }
    // define rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10
        return emojis.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //print(indexPath.row)
    let cell = UITableViewCell()
       //printing the path of an index
        cell.textLabel?.text = emojis[indexPath.row]
        
        //cell.textLabel?.text = "Welcome to YOITPRO"
        //cell.textLabel?.text = "Your Number 1 SMB IT provider"
        return cell
        
    }
    // connecting to Segue
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis [indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    // prepart for sague
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let setDef = segue.destination as!
        DefinitionViewController
        setDef.emoji = sender as! String
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

