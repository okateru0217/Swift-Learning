//
//  TextFieldController.swift
//  ShoppingMemo
//
//  Created by 岡澤輝明 on 2021/03/28.
//

import UIKit
import Foundation

// タップでキーボードを閉じる処理
extension ViewController: UITextFieldDelegate {

    func closeInTap() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
                self.view.addGestureRecognizer(tapGesture)
    }

    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }

}

// リターンキー押下時の処理
extension ViewController {
    
    func textFieldDelegateSelf() {
//        addMemoTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // textFieldが空の場合、キーボードを閉じる
        guard addMemoTextField.text?.count != 0 else {
            dismissKeyboard()
            return true
        }
        insertShoppingMemo()
        return true
    }
    
    // tableViewにメモを追加する
    func insertShoppingMemo() {
        shoppingMemo.insert(String(addMemoTextField.text!), at: 0)
        self.shoppingMemoTableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: UITableView.RowAnimation.automatic)
        // textFieldを空にする
        addMemoTextField.text = ""
    }
    
}
