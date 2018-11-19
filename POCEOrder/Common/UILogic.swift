//
//  UILogic.swift
//  POCEOrder
//
//  Created by Md. Mahadhi Hassan Chowdhury on 11/19/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import Foundation
import UIKit

func setUpNavigationBar(vc: UIViewController) {
    
    vc.navigationController?.navigationBar.isTranslucent = false
    
    if #available(iOS 11.0, *) {
        vc.navigationController?.navigationBar.backgroundColor = UIColor(named: "#42b2e5")
    } else {
        vc.navigationController?.navigationBar.backgroundColor = UIColor.blue
    }
}
