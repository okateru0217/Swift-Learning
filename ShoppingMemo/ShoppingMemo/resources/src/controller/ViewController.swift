//
//  ViewController.swift
//  ShoppingMemo
//
//  Created by 岡澤輝明 on 2021/03/29.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var addMemoTextField: UITextField!
    @IBOutlet weak var shoppingMemoTableView: UITableView!
    
    var shoppingMemo = [String]()
    let userDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        changeNavigationBarLook()
        tableViewDelegateSelf()
        textFieldDelegateSelf()
        callShoppingMemoData()
        // Do any additional setup after loading the view.
    }
    
    func changeNavigationBarLook() {
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.28, green: 0.53, blue: 0.75, alpha: 1.0)
    }
    
    func callShoppingMemoData() {
        if let storedTodoList = userDefaults.array(forKey: "shoppingMemo") as? [String] {
            shoppingMemo.append(contentsOf: storedTodoList)
        }
    }

}
