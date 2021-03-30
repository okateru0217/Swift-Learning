//
//  TableViewController.swift
//  ShoppingMemo
//
//  Created by 岡澤輝明 on 2021/03/29.
//

import UIKit
import Foundation

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableViewDelegateSelf() {
        shoppingMemoTableView.delegate = self
        shoppingMemoTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingMemo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let shoppingMemoCell = tableView.dequeueReusableCell(withIdentifier: "shoppingMemoCell", for: indexPath)
                // 表示するデータ(配列)を全て変数へ代入する
                let displayData = shoppingMemo[indexPath.row]
                // セルにデータを全て表示させる
        shoppingMemoCell.textLabel?.text = displayData
                return shoppingMemoCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.shoppingMemo.remove(at: indexPath.row)
        shoppingMemoTableView.deleteRows(at: [indexPath], with: .automatic)
        userDefaults.set(shoppingMemo, forKey: "shoppingMemo")
    }
    
}
