//
//  ViewController.swift
//  Recipex
//
//  Created by Saidac Alexandru on 24.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        apiRequest.shared.runRequest()
    }


}

