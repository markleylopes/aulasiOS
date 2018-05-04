//
//  SecondViewController.swift
//  NavBar
//
//  Created by CITi UFPE on 04/05/18.
//  Copyright © 2018 CITi UFPE. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var fullName: String!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var lastTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = self.fullName {
            let firstAndLast = name.components(separatedBy: " ")
            self.firstTextField.text = firstAndLast[0]
            self.lastTextField.text = firstAndLast[1]
            self.navigationItem.setHidesBackButton(true, animated: true)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
