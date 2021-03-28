//
//  TableViewController.swift
//  ShoppingMemo
//
//  Created by 岡澤輝明 on 2021/03/28.
//

import UIKit
import Foundation

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingMemo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let shoppingMemoCell = shoppingMemoTableView.dequeueReusableCell(withIdentifier: "shoppingMemoCell", for: indexPath)
        let displayShoppingMemo = shoppingMemo[indexPath.row]
        shoppingMemoCell.textLabel?.text = displayShoppingMemo
        return shoppingMemoCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.shoppingMemo.remove(at: indexPath.row)
        shoppingMemoTableView.deleteRows(at: [indexPath], with: .automatic)
    }
}
