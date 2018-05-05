//
//  PhoneViewController.swift
//  TabBar
//
//  Created by Sávio Xavier on 05/05/18.
//  Copyright © 2018 Sávio Xavier. All rights reserved.
//

import UIKit

class PhoneViewController: UIViewController {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let image = UIImage(named: "phn")
        image?.draw(in: CGRect(x: 0, y: 0, width: 0, height: 0))
        tabBarItem = UITabBarItem(title: "Phone", image: image, tag: 4)
        tabBarItem.badgeValue = "3"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
