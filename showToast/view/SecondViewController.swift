//
//  SecondViewController.swift
//  showToast
//
//  Created by 김경환 on 2022/02/17.
//

import UIKit

class SecondViewController: BaseViewController {
    @IBOutlet var btToastAndDismiss: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btToastAndDismiss.addAction(for: .touchUpInside) { _ in
            self.showToast(message: "This is SecondViewController message", targetViewControllerName: "FirstViewController")
            self.dismiss(animated: true, completion: nil)
        }
    }
}
