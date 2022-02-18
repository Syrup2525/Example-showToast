//
//  BaseViewController.swift
//  showToast
//
//  Created by 김경환 on 2022/02/17.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    final override func viewWillAppear(_ animated: Bool) {
        showToastCheck()
        
        onViewWillAppear()
    }
    
    func onViewWillAppear() {  }
    
    final private func showToastCheck() {
        guard
            let targetViewControllerName = ToastUtil.getTargetViewControllerName(),
            let showToastMessage = ToastUtil.getShowToastMessage()
        else {
            return
        }
        
        if "\(type(of: self))" == targetViewControllerName {
            ToastUtil.setShowToastMessage(showToastMessage: nil)
            ToastUtil.setTargetViewControllerName(targetViewControllerName: nil)
            
            showToast(message: showToastMessage)
        }
    }
    
    final public func showToast(message: String, targetViewControllerName: String? = nil) {
        if let targetViewControllerName = targetViewControllerName {
            ToastUtil.setShowToastMessage(showToastMessage: message)
            ToastUtil.setTargetViewControllerName(targetViewControllerName: targetViewControllerName)
        } else {
            ToastUtil.showToast(message: message, viewController: self)
        }
    }
}
