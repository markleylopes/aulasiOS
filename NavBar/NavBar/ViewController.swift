//
//  ViewController.swift
//  NavBar
//
//  Created by CITi UFPE on 04/05/18.
//  Copyright © 2018 CITi UFPE. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var data: [String] = ["Sávio Berdine", "Eduardo Leite", "Lucca França"]
    var selectedIndexPath: IndexPath?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.data[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showName" {
            let senderCell = sender as! UITableViewCell
            if let indexPath = self.tableView.indexPath(for: senderCell) {
                let secondView = segue.destination as! SecondViewController
                secondView.fullName = data[indexPath.row]
                self.tableView.deselectRow(at: indexPath, animated: false)
                selectedIndexPath = indexPath
            }
        }
    }
    
    @IBAction func saveName(segue: UIStoryboardSegue) {
        let secondView = segue.source as! SecondViewController
        let name = secondView.firstTextField.text! + " " + secondView.lastTextField.text!
        if let indexPath = selectedIndexPath {
            data[indexPath.row] = name
            tableView.reloadRows(at: [indexPath], with: .automatic)
            selectedIndexPath = nil
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

