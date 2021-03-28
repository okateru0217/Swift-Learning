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
    
    var shoppingMemo = ["cell1", "cell2", "cell3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDelegateSelf()
        textFieldDelegateSelf()
        // Do any additional setup after loading the view.
    }

}

