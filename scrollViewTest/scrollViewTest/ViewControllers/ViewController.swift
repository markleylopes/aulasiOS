//
//  ViewController.swift
//  scrollViewTest
//
//  Created by CITi on 27/04/18.
//  Copyright © 2018 CITi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelSobrenome: UILabel!
    @IBOutlet weak var labelIdade: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var nome: String!
    var sobrenome: String!
    var idade: String!
    var imageName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self
        self.scrollView.isScrollEnabled = true
        self.scrollView.isDirectionalLockEnabled = true
        self.scrollView.alwaysBounceHorizontal = false
        
        self.labelNome.text = nome
        self.labelSobrenome.text = sobrenome
        self.labelIdade.text = idade
        self.image.image = UIImage(named: imageName)
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

