//
//  ViewController.swift
//  Alamofire
//
//  Created by 장주명 on 2021/05/31.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var searchFilterSegment: UISegmentedControl!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var searchIndicator: UIActivityIndicatorView!
    
// MARK: -override method
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad - HomeVC() Called")
        
        // UI 설정
        self.searchButton.layer.cornerRadius = 10
        self.searchBar.searchBarStyle = .minimal
        
    }
    
// MARK: - IBAction methods
    
    
    @IBAction func onSearchButtonClicked(_ sender: UIButton) {
        print("HomeVC - onSearchButtonClicked() Called / selectedIndex = \(searchFilterSegment.selectedSegmentIndex)")
        
        var segueID : String = ""
        
        switch searchFilterSegment.selectedSegmentIndex {
        case 0:
            print("사진 화면으로 이동")
            segueID = "goToPhotoCollectionVC"
        case 1:
            print("사용자 화면으로 이동")
            segueID = "goToUserListVC"
        default:
            print("default")
        }
        
        self.performSegue(withIdentifier: segueID, sender: self)
        
    }
    
    @IBAction func searchFilterValueChanged(_ sender: UISegmentedControl) {
        print("HomeVC - searchFilterValueChanged() Called / index = \(sender.selectedSegmentIndex)")
        
        var searchBarTitle = ""
        
        switch sender.selectedSegmentIndex {
        case 0:
            searchBarTitle = "사진 키워드"
        case 1:
            searchBarTitle = "사용자 이름"
        default:
            searchBarTitle = "사진 키워드"
        }
        
        self.searchBar.placeholder = searchBarTitle + " 입력"
        
        self.searchBar.becomeFirstResponder()
//        self.searchBar.resignFirstResponder() // 포커싱 해제
        
    }
    
}

