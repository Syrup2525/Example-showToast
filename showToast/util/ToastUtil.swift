//
//  ShowToastUtil.swift
//  showToast
//
//  Created by 김경환 on 2022/02/17.
//

import Foundation
import UIKit

class ToastUtil {
    private static var targetViewControllerName: String?
    private static var showToastMessage: String?
    
    public static func setShowToastMessage(showToastMessage: String?) {
        self.showToastMessage = showToastMessage
    }
    
    public static func getShowToastMessage() -> String? {
        return showToastMessage
    }
    
    public static func setTargetViewControllerName(targetViewControllerName: String?) {
        self.targetViewControllerName = targetViewControllerName
    }
    
    public static func getTargetViewControllerName() -> String? {
        return targetViewControllerName
    }
    
    public static func showToast(message: String, viewController: UIViewController) {
        let toastLabel = UILabel(frame: CGRect(x: viewController.view.frame.size.width/2 - 75, y: viewController.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        viewController.view.addSubview(toastLabel)
        
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}
