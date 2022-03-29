//
//  ViewController.swift
//  MultiClient
//
//  Created by Cahyo Agung on 29/03/22.
//

import UIKit

class ViewController: UIViewController {

    private let isBeta = AppConfig.stringValue(key: "dhs_beta") == "true"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        txtLabel.text = "This build is \(isBeta ? "Beta" : "Live")"
    }

    @IBOutlet weak var txtLabel: UILabel!
    
    @IBAction func onClick(_ sender: Any) {
        
    }
    
}

