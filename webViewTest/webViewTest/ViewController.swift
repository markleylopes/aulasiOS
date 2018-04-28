//
//  ViewController.swift
//  webViewTest
//
//  Created by CITi on 27/04/18.
//  Copyright © 2018 CITi. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webViewTest: WKWebView!
    override func viewDidLoad() {
        
        let url = URL(string: "https://apple.com")
        if let unwrapedUrl = url {
            let request = URLRequest(url: unwrapedUrl)
            let session = URLSession.shared
            let task = session.dataTask(with: request) { (data, response, error) in
                if error == nil {
                    DispatchQueue.main.async {
                        self.webViewTest.load(request)
                    }
                }
                else {
                    print(error as Any)
                }
            }
            task.resume()
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

