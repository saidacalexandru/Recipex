//
//  ViewController.swift
//  Recipex
//
//  Created by Saidac Alexandru on 24.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var drinks = Drinks()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drinks.getData{
            print("\(self.drinks.drinkArray)worked")
            }
        
    }


}

