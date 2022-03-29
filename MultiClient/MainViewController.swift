//
//  MainViewController.swift
//  MultiClient
//
//  Created by Cahyo Agung on 30/03/22.
//

import UIKit

class MainViewController: UIViewController {
    internal let isBeta = AppConfig.stringValue(key: "dhs_beta") == "true"
    internal let clientName = AppConfig.stringValue(key: "CFBundleName")
}
