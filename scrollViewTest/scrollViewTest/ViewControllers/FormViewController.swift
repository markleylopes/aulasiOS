//
//  FormViewController.swift
//  scrollViewTest
//
//  Created by CITi on 27/04/18.
//  Copyright © 2018 CITi. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var sobrenomeTextField: UITextField!
    @IBOutlet weak var idadeTextField: UITextField!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    var imageSelected: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(FormViewController.imageTapped(gesture:)))
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(FormViewController.imageTapped(gesture:)))
        image1.addGestureRecognizer(tap1)
        image1.isUserInteractionEnabled = true
        image2.addGestureRecognizer(tap2)
        image2.isUserInteractionEnabled = true
        
    }
    
    @objc func imageTapped (gesture: UITapGestureRecognizer) {
        if let imageView = gesture.view as? UIImageView{
            if imageView == image1 {
                print(image1.image?.accessibilityIdentifier)
                
                self.imageSelected = image1.image?.accessibilityIdentifier
            }
            if imageView == image2 {
                self.imageSelected = image2.image?.accessibilityIdentifier
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let otherView = segue.destination as? ViewController else {
            print("Deu merda")
            return
        }
        if let assetName = self.imageSelected {
            otherView.imageName = assetName
        }
        otherView.nome = nomeTextField.text
        otherView.idade = idadeTextField.text
        otherView.sobrenome = sobrenomeTextField.text
        
    }
    
    @IBAction func back(_ segue: UIStoryboardSegue) {
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
