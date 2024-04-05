//
//  UIViewController+Ext.swift
//  GhFollowers
//
//  Created by Sanjarbek Abdurayimov on 23/01/24.
//

import UIKit
import SafariServices

extension UIViewController {
    
//    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
//        DispatchQueue.main.async {
//            let alertVC = GfAlertVC(title: title, message: message, buttonTitle: buttonTitle)
//            alertVC.modalPresentationStyle = .overFullScreen
//            alertVC.modalTransitionStyle = .crossDissolve
//            self.present(alertVC, animated: true)
//        }
//      }
    
    func presentGFAlert(title: String, message: String, buttonTitle: String) {
        let alertVC = GfAlertVC(title: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        self.present(alertVC, animated: true)
    }
    
    func presentDefaultError() {
        let alertVC = GfAlertVC(title: "Something went wrong",
                                message: "We were unable to complete your task at this time. Please try again.",
                                buttonTitle: "Ok")
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        self.present(alertVC, animated: true)
    }
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        self.present(safariVC, animated: true)
    }
}
