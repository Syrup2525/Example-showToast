//
//  ViewController.swift
//  showToast
//
//  Created by 김경환 on 2022/02/17.
//

import UIKit

class FirstViewController: BaseViewController {
    @IBOutlet var btToastAndSegue: UIButton!
    
    private let SECOND_SEGUE = "SecondSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btToastAndSegue.addAction(for: .touchUpInside) { _ in
            self.showToast(message: "This is FirstViewController message", targetViewControllerName: "SecondViewController")
            self.performSegue(withIdentifier: self.SECOND_SEGUE, sender: nil)
        }
    }
}
