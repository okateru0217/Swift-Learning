//
//  ViewController.swift
//  ShoppingMemo
//
//  Created by on 2021/03/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shoppingMemoTableView: UITableView!
    @IBOutlet weak var addMemoTextField: UITextField!
    
    var shoppingMemo = ["cell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ナビゲーションバーの背景色を変更する
        changeNavigationBarLook()
        textFieldDelegateSelf()
        // タップでキーボードを閉じる処理
        closeInTap()
        shoppingMemoTableView.tableFooterView = UIView(frame: .zero)
        // Do any additional setup after loading the view.
    }
    
    // ナビゲーションバーの背景色を変更する
    func changeNavigationBarLook() {
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.28, green: 0.53, blue: 0.75, alpha: 1.0)
    }
    
}

