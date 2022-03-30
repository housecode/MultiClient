//
//  ViewController.swift
//  MultiClient
//
//  Created by Cahyo Agung on 29/03/22.
//

import UIKit

#if MULTI_CLIENT
import Toast_Swift
#else
import EzPopup
#endif

class ViewController: MainViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = clientName
        
        txtLabel.text = "This build is \(isBeta ? "Beta" : "Live")"
    }

    @IBOutlet weak var txtLabel: UILabel!
    
    @IBAction func onClick(_ sender: Any) {
        #if MULTI_CLIENT
        self.view.makeToast("This build is \(isBeta ? "Beta" : "Live")")
        #else
        let sb = UIStoryboard.init(name: "SecondStoryboard", bundle: nil)
        let vc = sb.instantiateInitialViewController()!
        let popup = PopupViewController(contentController: vc, popupWidth: 200, popupHeight: 400)
        self.present(popup, animated: true, completion: nil)
        #endif
    }
    
}

