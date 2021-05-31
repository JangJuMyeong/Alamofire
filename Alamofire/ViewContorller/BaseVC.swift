//
//  BaseVC.swift
//  Alamofire
//
//  Created by 장주명 on 2021/05/31.
//

import UIKit

class BaseVC : UIViewController {
    var vcTitle : String = "" {
        didSet {
            print("UserListVC - vcTitle didSet() called / vcTitle = \(vcTitle)")
            self.navigationItem.title = vcTitle
        }
    }

}
